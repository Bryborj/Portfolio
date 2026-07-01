# ==========================================
# Stage 1: Build static Astro site
# ==========================================
FROM node:20-alpine AS build

WORKDIR /app

# Enable corepack for pnpm support
RUN corepack enable && corepack prepare pnpm@latest --activate

# Copy lockfile and workspace configuration first to leverage Docker layer caching
COPY package.json pnpm-lock.yaml pnpm-workspace.yaml ./

# Install dependencies strictly using frozen lockfile
RUN pnpm install --frozen-lockfile

# Copy the rest of the application source code
COPY . .

# Build the Astro site (generates static files in /app/dist)
RUN pnpm run build

# ==========================================
# Stage 2: Serve static files with Nginx
# ==========================================
FROM nginx:alpine AS runtime

# Copy custom Nginx configuration for clean URLs, routing and caching
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy built static files from build stage
COPY --from=build /app/dist /usr/share/nginx/html

# Expose HTTP port
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]

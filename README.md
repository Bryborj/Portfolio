# 💼 Bryan A. Borges - Portfolio & CV

A minimalist, printable portfolio and curriculum vitae (CV) built with **[Astro](https://astro.build)**. This project is based on the design by [Bartosz Jarocki](https://github.com/BartoszJarocki/cv) and is powered by a `cv.json` file following the [JSON Resume Schema](https://jsonresume.org/schema/).

## 🚀 Features

- **Minimalist & Clean Design:** Focused on typography and readability.
- **Print-Friendly:** Optimised for saving as a PDF or physical printing.
- **Data-Driven:** Edit your details easily in a single `cv.json` file.
- **Fast Performance:** Built with Astro for minimal client-side JavaScript.
- **Command Menu:** Integrated `ninja-keys` for a quick command palette experience.
- **Thumbnail Generation:** Built-in project thumbnail support (`thum.io`).

## 👨‍🎓 About Me

**Bryan A. Borges**  
*Student at BUAP (Benemérita Universidad Autónoma de Puebla) - Puebla City*

## 🛠️ Tech Stack

- [Astro](https://astro.build)
- [TypeScript](https://www.typescriptlang.org/)
- HTML & Vanilla CSS

## ⚙️ Getting Started

### Prerequisites

Ensure you have Node.js and your preferred package manager installed. The project uses `pnpm` lockfiles, so `pnpm` is highly recommended.

### Installation

1. Clone the repository.
2. Install the dependencies:

   ```bash
   pnpm install
   ```

### Running Locally

To start the local development server:

```bash
pnpm run dev
```

Visit `http://localhost:4321` in your browser to view the portfolio.

## 📝 Editing the Content

The entire content of the portfolio is driven by the `cv.json` file located in the root directory.

1. Open `cv.json`.
2. Update the fields following the [JSON Resume Schema](https://jsonresume.org/schema/) to add your own experience, education, projects, and skills.
3. The UI will automatically update based on the data provided in this file!

## 📦 Available Scripts

| Command | Description |
| :--- | :--- |
| `pnpm run dev` | Starts the local development server at `localhost:4321`. |
| `pnpm run build` | Builds the production site to the `./dist/` directory. |
| `pnpm run preview` | Previews your build locally before deploying. |

## 📄 Acknowledgements

- Original design inspiration by [Bartosz Jarocki](https://github.com/BartoszJarocki/cv).

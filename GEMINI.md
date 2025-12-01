# Project Overview

This is the personal homepage for **Sebastian Plagemann**, hosted at [plagemann.at](http://plagemann.at) (and likely aliased to `basti.dev`). It is a simple, static website serving as a digital profile and landing page.

## Key Features
-   **Static Content:** Pure HTML and CSS implementation.
-   **Responsive Design:** Utilizes the Bootstrap framework for layout and styling.
-   **Social Hub:** Links to various social media profiles (Mastodon, XING, LinkedIn, GitHub) and contact information.
-   **Microdata:** Implements `data-vocabulary.org` schemas for structured data (Person, Address).

# Technical Architecture

## Directory Structure
-   `index.html`: The main entry point and single page of the website. Contains the structure and content.
-   `css/`: Contains local copies of stylesheets.
    -   `bootstrap.css`: The Bootstrap framework CSS.
    -   `bootstrap-icons.css`: CSS for Bootstrap icons.
    -   `fonts/`: Font files for the icons.
-   `img/`: Images used on the site (profile picture, favicon).
-   `CNAME`: Configuration for the custom domain (likely for GitHub Pages).

## Dependencies
-   **Bootstrap:** Used for grid system, utilities, and basic component styling. The CSS is included locally rather than via CDN.
-   **Bootstrap Icons:** Used for social media icons.

# Building and Running

Since this is a static website, there is no compilation step.

## Local Development
To view the site locally:
1.  Simply open `index.html` in a web browser.
2.  Alternatively, run a simple HTTP server in the project root:
    ```bash
    # Python 3
    python3 -m http.server
    # Node.js (http-server)
    npx http-server
    ```
    Then navigate to `http://localhost:8000` (or the port specified).

## Deployment
The presence of a `CNAME` file suggests this project is deployed via **GitHub Pages**.
-   Any changes pushed to the main branch (or `gh-pages` branch, depending on repo settings) will trigger a deployment.
-   The `CNAME` file ensures the custom domain `plagemann.at` resolves correctly.

# Development Conventions

-   **Styling:** Custom styles are currently embedded in `<style>` blocks within `index.html` (both in `<head>` and at the bottom of `<body>`).
    -   *Refactoring Note:* Consider moving custom styles to a dedicated `css/style.css` file for better separation of concerns.
-   **HTML Structure:** Semantic HTML tags are used where appropriate, enriched with Microdata attributes (`itemscope`, `itemtype`, `itemprop`).

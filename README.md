[![DOI](https://zenodo.org/badge/329575882.svg)](https://doi.org/10.5281/zenodo.20218566)

# manual

This is the OBIS manual which is published at https://manual.obis.org/.

## Contribute

The contribute to the manual, please follow these steps:

- Fork the repository to your own GitHub account by clicking the `Fork` button (top right of this page).
- Edit your version of the manual.
- You should now see a notification saying `This branch is 1 commit ahead of iobis:master.`. Click the `Pull request` button.
- Review your changes and click `Create pull request`.
- Enter a title and description for your pull request. If your pull request addresses specific GitHiub issues, mention them in the description.
- Click `Create pull request`.

## Build a PDF

The PDF is built with Quarto's `book` profile (`_quarto-book.yml`), which needs TinyTeX (`quarto install tinytex`):

``` bash
quarto render --profile book --to pdf --no-clean
```

This is the same sequence the deploy workflow (`.github/workflows/deploy.yml`) runs.

## How the manual is built

The manual is built with [Quarto](https://quarto.org/); it was previously built with Bookdown. We want to take advantage of the many features Quarto offers, while also being able to integrate in a single place the tutorials and notebooks that the OBIS secretariat and the community are producing (and that for now are residing at [resources.obis.org](https://resources.obis.org)).

Each manual page is a `.qmd` file in the repository root. New pages should also be `.qmd`. For instructions on how to use Quarto, check the [documentation](https://quarto.org/docs/guide/).

Tables are made horizontally scrollable by the Lua filter `scroll-tables.lua`.

### How the sections are organized

The sections are no longer retrieved from the Bookdown markups; instead they are organized in the `_quarto.yml` file. Make sure that any new section is added there, under the sidebar menu with id **`manual`**.

### New overall structure

The new manual now includes two additional pages: **tutorials** and **notebooks**. Those are created by the pages `tutorials.qmd` and `notebooks.qmd`, which list respectively the contents of the folders `tutorials` and `notebooks`.

When creating tutorials or notebooks, organize each in a separate folder. For example, the tutorial on the use of environmental data with occurrence records is on **tutorials > env-data**. Because tutorials can involve the use of heavy datasets and take a long time to render, you should **always** render your tutorial (writen in the format you prefer) to a `.md` file, with acompanying figures/files. Only the `.md` files from those folders are considered for the final website.

> [!NOTE]
> We are still evaluating if this is the best approach.

In both cases, you can also list external tutorials and notebooks. Those should be in the files `tutorials.yml` or `notebooks.yml`.

### Working locally

After modifying the files use the following to preview the website:

``` bash
quarto preview
```

To render the website use:

``` bash
quarto render
```

Check that you have the most recent version of Quarto.
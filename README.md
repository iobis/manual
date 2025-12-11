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

```r
install.packages("webshot")
install.packages("downloadthis")
bookdown::render_book("index.Rmd", "bookdown::pdf_book")
```

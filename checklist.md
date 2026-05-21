# Formatting data tables

## Darwin Core Term Checklist for OBIS

There are many Darwin Core terms listed in the [TDWG quick reference guide](https://dwc.tdwg.org/terms/). However, not all these terms are necessary for publishing data to OBIS.

For your convenience, we have created a checklist of all the Darwin Core terms relevant for OBIS data providers. You can reference this list to quickly see which terms are required by OBIS, which data table (Event, Occurrence, eMoF, DNA) they can be found in, and which Darwin Core class each term belongs to. These terms correlate with the [IPT vocabulary mapping](ipt.html#map-your-data-to-darwin-core) you will do when it comes time to publish your dataset. You may notice some terms are accepted in multiple data tables (e.g., Event and Occurrence) - this is because it depends on your dataset structure. If you have an Event Core, you will include some terms that would not be included if you had Occurrence Core. For guidance on specific class terms (e.g., location, taxonomy, etc.), see the [Darwin Core](darwin_core.html#darwin-core-guidelines) section of the manual.

Note that when you publish your dataset on the IPT, if you use a term not listed below it will be an unmapped field and will **not** be published alongside your data. You may still wish to include such fields in your dataset if you are publishing to other repositories, just know that they will not be included in your OBIS dataset. You may include this information either by putting it in the `dynamicProperties` field in JSON format, or putting the information into the [eMoF](format_emof.html). Alternatively, you may have fields that you do not wish to be published and that do not correspond to one of these terms (e.g. personal notes). This is okay - if they are not mapped to one of the terms, that column in your dataset will not be published.

**Table Legend**:

- Terms marked with 1 indicate that the specified term is accepted in the Event or Occurrence table, but preference is that they be recorded in the eMoF table in the measurementType column so they can be linked with controlled vocabulary
- For the Occurrence table, distinction is made if the term could be used in the core or the extension table

```{r echo=F, warning=F, message=F, results='asis'}

library(downloadthis)
library(readr)
library(knitr)
library(kableExtra)

checklist <- read_csv("docs/OBIS-termchecklist.csv", na = character(), show_col_types = FALSE)

if (knitr::is_html_output()) {
  download_file(
    path = "docs/OBIS-termchecklist.csv",
    output_name = "OBISchecklist",
    output_extension = ".csv",
    button_label = "Download checklist as csv",
    button_type = "default",
    has_icon = TRUE,
    icon = "fa fa-save",
    class = "hvr-sweep-to-left",
    style = "background-color: #1e74ac; color: white; border: none; padding: 10px 20px; font-size: 16px; border-radius: 5px;
            margin-top: 5px; margin-bottom: 20px;"
  )
} else {
  cat("[Click here to download the checklist](https://github.com/iobis/manual/raw/refs/heads/master/docs/OBIS-termchecklist.csv)\n\n")
}

# Highlight x1 values with bold + superscript for visual distinction
checklist[] <- lapply(checklist, function(col) {
  ifelse(col == "x1", "**x¹**", col)
})

kable(checklist, escape = FALSE) %>%
  kable_styling(
    bootstrap_options = c("striped", "bordered", "hover", "condensed"),
    full_width = TRUE,
    font_size = 13
  )
```

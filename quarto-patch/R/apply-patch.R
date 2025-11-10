#### BEFORE EXECUTING THIS FILE MAKE SURE YOU ARE ON quarto-patch FOLDER
if (basename(getwd()) != "quarto-patch") stop("Verify you working directory")

# List all files being used in bookdown
bookdown_files <- yaml::read_yaml("../_bookdown.yml")
bookdown_files <- file.path(
    "..", bookdown_files$rmd_files
)

# Get parts
extract_parts <- function(md) {
    cont <- readLines(md)
    check_part <- grepl("# \\(PART", cont)
    if (any(check_part)) {
        part <- cont[check_part]
        part <- gsub(" \\{-}", "", gsub("# \\(PART.*) ", "", part))
        return(part)
    } else {
        return(NA)
    }
}

book_parts <- lapply(bookdown_files, extract_parts)

which_has_parts <- which(!is.na(book_parts))
book_parts <- unlist(book_parts[!is.na(book_parts)])

# Extract headers
extract_headers <- function(md) {
    cont <- readLines(md)
    cont <- cont[!grepl("# \\(PART", cont)]
    check_part <- grepl("^# ", cont)
    if (any(check_part)) {
        part <- cont[check_part]
        part <- gsub("# ", "", part)
        return(part)
    } else {
        return(NA)
    }
}

book_headers <- lapply(bookdown_files, extract_headers)

which_has_headers <- which(!is.na(book_headers))

# Old yaml
old_yml <- yaml::read_yaml("_quarto.yml")
#str(old_yml$website$sidebar$content)

# Clean and combine
new_content <- vector("list", length(which_has_parts))
for (i in seq_along(which_has_parts)) {
    if (i < length(which_has_parts)) {
        range_docs <- seq(which_has_parts[i], (which_has_parts[i+1])-1)
    } else {
        range_docs <- seq(which_has_parts[i], length(bookdown_files))
    }

    # Add header and contents
    new_content[[i]] <- list(
        section = book_parts[i],
        contents = lapply(range_docs, \(id) {
            the_file <- bookdown_files[id]
            return(gsub("\\.md|\\.Rmd", ".qmd", basename(the_file)))
        })
    )
}

old_yml$website$sidebar$contents <- new_content

yaml::write_yaml(old_yml, "_quarto.yml",
                 handlers = list(logical = yaml::verbatim_logical))

fs::file_copy(bookdown_files, basename(bookdown_files))
if (dir.exists("docs")) fs::dir_delete("docs")
fs::dir_copy(
    "../docs", "docs"
)
if (dir.exists("images")) fs::dir_delete("images")
fs::dir_copy(
    "../images", "images"
)

#
file.rename(
    basename(bookdown_files), gsub("\\.Rmd|\\.md", ".qmd", basename(bookdown_files))
)

lapply(gsub("\\.Rmd|\\.md", ".qmd", basename(bookdown_files)), \(md) {
    cont <- readLines(md)
    if (grepl("index", md)) {
        start_end <- grepl("---", cont)
        cont <- cont[seq(which(start_end)[2]+1, length(cont))]
        if (any(grepl("\\`r", cont))) {
            # Inject first R code, so it can properly work inline code
            cont <- c("", "```{r}", "#| echo: false", "#| include: false", "1+1", "```", "", cont)
        }
    }
    if (any(grepl("\\.md", cont))) {
        cont <- gsub("\\.md", "\\.qmd", cont)
    }
    cont <- gsub("\\\\newpage", "", cont)
    cont <- gsub("\\{-}", "", gsub("# \\(PART.* ", "", cont))
    cont <- c("--- ", "sidebar: manual", "toc: true", "--- ", cont)
    writeLines(cont, md)
})

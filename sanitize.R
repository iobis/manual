# sanitize.R

remove_part <- function(content) {
    content <- gsub("(?m)^[^\n]*\\(PART[^\n]*$\\n?", "", content, perl = TRUE)
    return(content)
}

sanitize_content <- function(content) {
  # 1. Remove # (PART ...) headers
  content <- gsub("# \\(PART[^)]*\\) ?", "", content)

  # 2. Remove {-}
  content <- gsub(" ?\\{-\\}", "", content)

  # 3. Remove {.unlisted .unnumbered}
  content <- gsub(" ?\\{\\.unlisted \\.unnumbered\\}", "", content)

  # 4. Change images and md path
  #content <- gsub("images/", "../images/", content)
  content <- gsub("\\.md", ".html", content)
  #content <- gsub('path = "docs/', 'path = "../docs/', content)

  # Other problems
  content <- gsub("\\| fig.cap =", "| fig.cap:", content)


  # 5. Wrap markdown tables in scrollable div
  lines <- strsplit(content, "\n")[[1]]
  result <- character()
  i <- 1

  while (i <= length(lines)) {
    if (grepl("^\\s*\\|", lines[i])) {
      # Collect the full table block
      block <- character()
      while (i <= length(lines) && grepl("^\\s*\\|", lines[i])) {
        block <- c(block, lines[i])
        i <- i + 1
      }
      # Only wrap if it has a separator row (real table)
      if (any(grepl("^\\s*\\|[\\s|:|-]+\\|\\s*$", block, perl = TRUE))) {
        result <- c(result,
          "::: {style=\"overflow-x: auto;\"}",
          block,
          ":::"
        )
      } else {
        result <- c(result, block)
      }
    } else {
      result <- c(result, lines[i])
      i <- i + 1
    }
  }

  paste(result, collapse = "\n")
}

sanitize_callouts <- function(content) {
  is_caution <- grepl("> Caution", content)
  content[is_caution] <- paste0(
    "::: {.callout-caution}\n",
    gsub("> Caution: ", "", content[is_caution]),
    "\n:::"
  )

  is_important <- grepl("> Important", content)
  content[is_important] <- paste0(
    "::: {.callout-important}\n",
    gsub("> Important: ", "", content[is_important]),
    "\n:::"
  )
  return(content)
}

# Find all .md files in the project (adjust the path/pattern as needed)
md_files <- list.files(".", pattern = "\\.md$", recursive = FALSE, full.names = TRUE)

sanitized <- list(
  source = md_files,
  changed = gsub("\\.md", ".qmd", md_files)
)

# Exclude files already in the staging folder
#md_files <- md_files[!grepl("^\\.\\/\\_sanitized\\/", md_files)]

for (path in md_files) {
  content <- readLines(path, warn = FALSE)
  content <- remove_part(content) |> paste(collapse = "\n")
  clean   <- sanitize_content(content)

  #out_path <- file.path("_sanitized", path)
  #dir.create(dirname(out_path), recursive = TRUE, showWarnings = FALSE)
  #out_path <- gsub("\\.md", ".qmd", out_path)
  out_path <- gsub("\\.md", ".qmd", path)
  writeLines(clean, out_path)

  content_post <- readLines(out_path, warn = FALSE)
  clean <- sanitize_callouts(content_post)
  if (any(grepl("`r ", clean)) || any(grepl("fontawesome", clean))) {
    if (any(grepl("fontawesome", clean))) message("found in page", path)
    #message("Found in", out_path)
    clean <- c("---", "engine: knitr", "---", clean)
  }
  writeLines(clean, out_path)
}

jsonlite::write_json(sanitized, "sanitized.json", pretty = T)

fs::dir_create("docs")
file.copy("OBIS-termchecklist.csv", "docs/OBIS-termchecklist.csv")

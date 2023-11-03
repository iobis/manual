to_change <- list.files("obis-manual", pattern = "\\.md", full.names = T)
to_change <- to_change[!grepl("README", to_change)]
file.rename(
  to_change,
  gsub("\\.md", ".qmd", to_change))


to_change <- gsub("\\.md", ".qmd", to_change)

for (i in 1:length(to_change)) {
  rl <- readLines(to_change[i])
  if (any(grepl("\\(PART", rl))) {
    cat("Modifying", to_change[i])
    which_rm <- grep("\\(PART", rl)
    if (nchar(rl[(which_rm+1)]) == 0) {
      which_rm <- which_rm:(which_rm+1)
    }
    rl <- rl[-which_rm]
    writeLines(rl, con = to_change[i])
  }
}

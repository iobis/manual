tutorial_files <- list.files(
  "../docs/tutorial", recursive = T
)

#to_move <- tutorial_files[!grepl("site_libs", tutorial_files)]
to_move <- tutorial_files[!tutorial_files %in% c("index.html", "search.json")]
to_delete <- "../docs/tutorial"

fs::dir_copy(
  path = paste0("../docs/tutorial/", dirname(to_move)[!grepl("\\.", dirname(to_move))]),
  new_path = paste0("../docs/", dirname(to_move)[!grepl("\\.", dirname(to_move))]),
  overwrite = T
)

fs::file_copy(
  path = paste0("../docs/tutorial/", to_move),
  new_path = paste0("../docs/", to_move),
  overwrite = T
)

# Read search files
json_old <- jsonlite::fromJSON("../docs/search.json")
json_new <- jsonlite::fromJSON("../docs/tutorial/search.json")

df_old <- as.data.frame(json_old)
df_new <- as.data.frame(json_new)

combined_json <- rbind(df_old, df_new)

dups_entries <- duplicated(combined_json$objectID, fromLast = T)

unique_json <- combined_json[!dups_entries,]

unique_json <- jsonlite::toJSON(unique_json, pretty = T)

writeLines(unique_json, "../docs/search.json")

to_remove <- jsonlite::read_json("sanitized.json")

fs::file_delete(unlist(to_remove$changed))

library(duckdb)
library(arrow)

full_export <- "/Volumes/OBIS2/data/obis_data"
con <- dbConnect(duckdb())
dbSendQuery(con, "install httpfs; load httpfs;")

# Package 1
acanthuridae_by_year <- dbGetQuery(con, glue::glue(
    "
    -- Here we use COUNT which will count all entries
    -- and this is how you write SQL comments...
    SELECT *
    FROM read_parquet('{full_export}/*.parquet', union_by_name = true)
    WHERE interpreted.family = 'Acanthuridae'
    LIMIT 10000
    "
))

write_parquet(acanthuridae_by_year, "compact_1.parquet")
zip::zip("content/tutorials/duckdb-part1/compact_1.parquet.zip", "compact_1.parquet")
fs::file_delete("compact_1.parquet")

# Package 2
species_id <- c(124316, 145728)
species_id <- paste(species_id, collapse = ", ")
compact_2 <- dbGetQuery(con, glue::glue(
    "
    -- Here we use COUNT which will count all entries
    -- and this is how you write SQL comments...
    SELECT *
    FROM read_parquet('{full_export}/*.parquet', union_by_name = true)
    WHERE interpreted.aphiaid IN ({species_id})
    "
))

write_parquet(compact_2, "compact_2.parquet")
zip::zip("content/tutorials/duckdb-part2/compact_2.parquet.zip", "compact_2.parquet")
fs::file_delete("compact_2.parquet")

# Package 3



sql_attach <- glue::glue("CREATE VIEW fe AS SELECT * EXCLUDE (tags) FROM '{fe_path}';")
db_exec(sql_attach)

test <- as_tbl("SELECT * FROM fe")

full_export <- read_parquet_duckdb(fe_path, options = list(union_by_name = TRUE), prudence = "stingy")
full_export <- read_parquet_duckdb(fe_path)

files <- list.files("/Volumes/OBIS2/data/obis_data", full.names =  T)
files <- files[files != "/Volumes/OBIS2/data/obis_data/00032856-12cd-46ff-b9d5-ddeaecae3c95.parquet"]
files <- files[files != "/Volumes/OBIS2/data/obis_data/00017595-e015-4ec6-bf8a-b013e0dca521.parquet"]
files <- files[files != "/Volumes/OBIS2/data/obis_data/0001aa41-e3e4-40a0-9193-9a5c81c627bf.parquet"]

full_export <- read_parquet_duckdb(files)

full_export |>
filter(interpreted$scientificName == "Gadus morhua") |>
collect()

head(full_export)

compact_1 <- full_export |>
    filter(family == "Acanthuridae") |>
    select(aphiaid, date_year) |>
    collect()

write_parquet(compact_1, "compact_1.parquet")

species_id <- c(124316, 145728)
compact_2 <- full_export |>
    filter(aphiaid %in% species_id) |>
    collect()

write_parquet(compact_2, "compact_2.parquet")

#zip::unzip("content/tutorials/duckdb-part3/compact_3.parquet.zip", exdir = "occurrence")

library(duckdb)
con <- dbConnect(duckdb())
fe_path <- "/Volumes/OBIS2/obis_20250318_parquet/occurrence/*.parquet"
fe_tbl <- tbl(con, dbplyr::sql(glue::glue("
    SELECT *
    FROM read_parquet('{fe_path}')
")))

fe_tbl |>
    as_duckdb_tibble() |>
    select(scientificName) |>
    filter(scientificName == "Acanthurus chirurgus") |>
    as_tibble()



duckdb::read_csv_duckdb()



duckdb_register_arrow(con, "mytable", fe_path)
duckdb_list_arrow(con)

dbGetQuery(con, "show tables;")

dbGetQuery(con, "select *
                 from mytable
                 limit 1;")

dbDisconnect(con)


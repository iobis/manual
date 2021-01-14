---
title: Manual
shorttitle: Manual
layout: page
lang: en
identifier: dataintor
breadcrumbs: manual
---

# Getting data into R

- [Using the OBIS R package](#rpackage)  
- [From the mapper](#mapper)  
- [From the database](#database)  
- [From a Darwin Core Archive](#dwca)

<a class="anchor" name="rpackage"></a>

## Using the OBIS R package

See [https://github.com/iobis/robis](https://github.com/iobis/robis).

<a class="anchor" name="mapper"></a>

## From the mapper

Go to the [Mapper](Mapper) page to read about downloading occurrences as CSV files. For reading CSV files into R, see our [Introduction to R](introtor).

<a class="anchor" name="database"></a>

## From the database

The code for this demo is available [here](https://github.com/iobis/training/blob/master/demo/orca).

To connect to the OBIS PostgreSQL database, we can use the R package [RPostgreSQL](https://cran.r-project.org/web/packages/RPostgreSQL/index.html). To install this package, do:

```R
install.packages("RPostgreSQL")
```

### Connect to the OBIS stage database

To get a connection to the OBIS stage database, do:

```R
require(RPostgreSQL)

host <- "obisdb-stage.vliz.be"
db <- "obis"
user <- "obisreader"
password <- # contact the OBIS data manager to obtain a password
drv <- dbDriver("PostgreSQL")
con <- dbConnect(drv, dbname=db, host=host, user=user, password=password)
```

### Obtain the valid taxon of interest

In order to obtain all occurrences for a taxon, including all occurrences that have been recorded under synonyms, we first need to get the valid taxon. For example, to get the valid taxon associated with _Orca gladiator_:

```R
taxon <- "Orca gladiator"
valid_taxon <- dbGetQuery(con, paste0("select v.* from obis.tnames t left join obis.tnames v on v.id = t.valid_id where t.tname = '", taxon, "'"))
```

Output:

```text
      id        tname          tauthor valid_id display displayremark rank_id parent_id                                                                                          storedpath worms_id  col_id irmng_id itis_id date_worms_last_checked worms_id_mismatch number_of_worms_matches_on_tname worms_match_type
1 483005 Orcinus orca (Linnaeus, 1758)   483005       1                   220    769780 x739909x738303x741923x762719x766931x766932x642142x778875x781762x778804x696387x753566x743939x769780x   137102 6850349   198175  180469     2015-09-10 23:37:41             FALSE                               NA             <NA>
```

This gives us the id and path we need for our query:

```R
valid_id <- valid_taxon$valid_id[1]
valid_path <- paste0("'", valid_taxon$storedpath[1], valid_taxon$valid_id[1], "x%'")
```

### Retrieve all occurrences linked to the valid_taxon

```R
data <- dbGetQuery(con, paste0("select p.* from portal.points_ex p left join obis.tnames t on p.valid_id = t.id where t.id = ", valid_id, " or t.storedpath like ", valid_path))
```

<a class="anchor" name="dwca"></a>

## From a Darwin Core Archive

Darwin Core Archives can be read file by file or by using the [finch](https://github.com/ropensci/finch) package.

### Read a single file

```R
temp <- tempfile()
download.file("http://ipt.vliz.be/eurobis/archive.do?r=nsbs&v=1.1", temp)
data <- read.table(unz(temp, "occurrence.txt"), sep="\t", header=TRUE, stringsAsFactors=FALSE)
unlink(temp)
```

### Using finch

```R
devtools::install_github("ropensci/EML")
devtools::install_github("ropensci/finch")

require(finch)
data <- dwca_read("dwca-kielbay70-v1.1.zip", read=TRUE)
```


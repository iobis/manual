---
title: Data quality
shorttitle: Data quality
layout: page
lang: en
identifier: quality
breadcrumbs: manual
---

# Data quality

OBIS performs a number of quality checks on the data it receives. Records may be rejected if the quality does not meet certain expectations. In other cases quality flags are attached to the occurrence records. The checks we performs as well as the associated flags are documented [here](https://github.com/iobis/obis-qc).

There are several ways to inspect the quality flags associated with a specific dataset or any other subset of data. Data downloaded through the mapper and the R package will include a column named `flags` which contains a comma separated list of flags for each record. In addition, the data quality panel on the dataset and node pages has a flag icon which can be clicked to get an overview of all flags and the number of records affected.

<img src="/manual/images/qc_flag_icon.png" class="img-responsive-50"/>

This table includes quality flags, but also annotations from the WoRMS annotated names list. When OBIS receives a scientific name which cannot be matched with WoRMS automatically, it is sent to the WoRMS team. The WoRMS team will then annotate the name to indicate if and how the name can be fixed. Documentations about these annotations will be added here soon. 

<img src="/manual/images/qc_flag_table.png" class="img-responsive"/>

Clicking any of these flags will take you to a table showing the affected records. For example, this is a list of records from a single dataset which have the `no_match` flag, indicating that no LSID or an invalid LSID was provided, and the name could not be matched with WoRMS. The column `originalScientificName` contains the problematic names, as `scientificName` is used for the matched name. 

<img src="/manual/images/qc_flag_records.png" class="img-responsive"/>

At the top of the page there's a button to open the occurrence records in the mapper where they can be downloaded as CSV. The occurrence table also has the `flags` column, so when inspecting non matching names for example it's easy to check if the names at hand have any WoRMS annotations:

<img src="/manual/images/qc_flag_flags.png" class="img-responsive-50"/>

Inspecting flags using R is also very easy. The example below fetches the data from a single dataset, and lists the flags and the number of records affected. Notice that the `occurrence()` call has `dropped = TRUE` to make sure that any dropped records are included in the results:

```r
library(robis)
library(tidyr)
library(dplyr)

# fetch all records for a dataset

df <- occurrence(datasetid = "f3d7798e-7bf2-4b85-8ed4-18f2c1849d7d", dropped = TRUE)

# unnest flags

df_long <- df %>% 
  mutate(flags = strsplit(flags, ",")) %>% 
  unnest(flags)

# get frequency per flag

data.frame(table(df_long$flags))
```

```r
                                Var1 Freq
1                 depth_exceeds_bath   78
2                   no_accepted_name   17
3                           no_depth    5
4                           no_match  138
5                         not_marine    2
6                            on_land    1
7      worms_annotation_await_editor    5
8  worms_annotation_reject_ambiguous    2
9    worms_annotation_reject_habitat    2
10             worms_annotation_todo    9
11     worms_annotation_unresolvable    7
```

This second example creates a list of annotated names for a dataset:

```r
library(robis)
library(dplyr)
library(stringr)

# fetch all records for a dataset

df <- occurrence(datasetid = "f3d7798e-7bf2-4b85-8ed4-18f2c1849d7d", dropped = TRUE)

# only keep WoRMS annotations and summarize

df %>%
  select(originalScientificName, flags) %>%
  mutate(flags = strsplit(flags, ",")) %>% 
  unnest(flags) %>%
  filter(str_detect(flags, "worms")) %>%
  group_by(originalScientificName, flags) %>%
  summarize(records = n())
```

```r
   originalScientificName            flags                             records
   <chr>                             <chr>                               <int>
 1 Alcyonidium fruticosa             worms_annotation_reject_habitat         1
 2 Apicularia (Thapsiella) rudis sp. worms_annotation_unresolvable           1
 3 Arcoscalpellum vegae              worms_annotation_unresolvable           1
 4 Balanus evermanni                 worms_annotation_await_editor           1
 5 Chloramidae                       worms_annotation_reject_ambiguous       2
 6 Cleippides quadridentatus         worms_annotation_todo                   1
 7 Enhydrosoma hoplacantha           worms_annotation_reject_habitat         1
 8 Hippomedon setosa                 worms_annotation_unresolvable           1
 9 Leionucula tenuis                 worms_annotation_await_editor           1
10 Ophiocten borealis                worms_annotation_todo                   1
11 Ophiopholis gracilis              worms_annotation_todo                   1
12 Priapulus australis               worms_annotation_await_editor           1
13 Primnoella residaeformis          worms_annotation_unresolvable           1
14 Robulus orbigny                   worms_annotation_unresolvable           1
15 Tetraxonia                        worms_annotation_unresolvable           2
16 Tmetonyx barentsi                 worms_annotation_await_editor           2
17 Triaxonida                        worms_annotation_todo                   6
```
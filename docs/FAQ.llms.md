## Frequently Asked Questions

**Content**

- [General](#general)
- [Darwin Core](#darwin-core)
- [Formatting data](#formatting-data)
- [Vocabulary](#vocabulary)
- [Taxonomy](#taxonomy)
- [Tools](#tools)
- [Quality Control](#quality-control)
- [Publishing](#publishing)
- [Data Access](#accessing-data-in-obis)

#### General

- [I have data and want to publish to OBIS - what do I do?](contribute.llms.md)

- [Why is it important to share and format data?](contribute.llms.md#why-publish-data-to-obis)

- [How do I handle sensitive data?](contribute.llms.md#how-to-handle-sensitive-data)

- [Where can I make suggestions for improvements on this Manual?](https://github.com/iobis/manual)

- [Where can I find OBIS related training videos? ![](data:image/svg+xml;base64,PHN2ZyBhcmlhLWhpZGRlbj0idHJ1ZSIgcm9sZT0iaW1nIiB2aWV3Ym94PSIwIDAgNTc2IDUxMiIgc3R5bGU9ImhlaWdodDoxZW07d2lkdGg6MS4xMmVtO3ZlcnRpY2FsLWFsaWduOi0wLjEyNWVtO21hcmdpbi1sZWZ0OmF1dG87bWFyZ2luLXJpZ2h0OmF1dG87Zm9udC1zaXplOmluaGVyaXQ7ZmlsbDpyZWQ7b3ZlcmZsb3c6dmlzaWJsZTtwb3NpdGlvbjpyZWxhdGl2ZTsiPjxwYXRoIGQ9Ik01NDkuNjU1IDEyNC4wODNjLTYuMjgxLTIzLjY1LTI0Ljc4Ny00Mi4yNzYtNDguMjg0LTQ4LjU5N0M0NTguNzgxIDY0IDI4OCA2NCAyODggNjRTMTE3LjIyIDY0IDc0LjYyOSA3NS40ODZjLTIzLjQ5NyA2LjMyMi00Mi4wMDMgMjQuOTQ3LTQ4LjI4NCA0OC41OTctMTEuNDEyIDQyLjg2Ny0xMS40MTIgMTMyLjMwNS0xMS40MTIgMTMyLjMwNXMwIDg5LjQzOCAxMS40MTIgMTMyLjMwNWM2LjI4MSAyMy42NSAyNC43ODcgNDEuNSA0OC4yODQgNDcuODIxQzExNy4yMiA0NDggMjg4IDQ0OCAyODggNDQ4czE3MC43OCAwIDIxMy4zNzEtMTEuNDg2YzIzLjQ5Ny02LjMyMSA0Mi4wMDMtMjQuMTcxIDQ4LjI4NC00Ny44MjEgMTEuNDEyLTQyLjg2NyAxMS40MTItMTMyLjMwNSAxMS40MTItMTMyLjMwNXMwLTg5LjQzOC0xMS40MTItMTMyLjMwNXptLTMxNy41MSAyMTMuNTA4VjE3NS4xODVsMTQyLjczOSA4MS4yMDUtMTQyLjczOSA4MS4yMDF6IiAvPjwvc3ZnPg==)](https://youtube.com/playlist?list=PLlgUwSvpCFS4TS7ZN0fhByj_3EBZ5lXbF)

- [What are the responsibilities of OBIS node managers?](nodes.llms.md)

- [Where can I find marine datasets linked to the OBIS network by the GBIF registry, that now require endorising?](https://github.com/iobis/obis-network-datasets/)

- I am an OBIS node and need to update the contact information listed for my node on the OBIS website, how do I do that?

  To update OBIS Node contact information listed at <https://obis.org/contact/>, you can edit the information here https://metadata.obis.org/ by signing in with your OceanExpert credentials.

#### Darwin Core

- [Where can I learn about “Darwin Core”?](darwin_core.llms.md)

- [I am having trouble understanding how Core and Extension tables relate to each other](relational_db.llms.md)

- [How does the OBIS format avoid redundancy in data](relational_db.llms.md#how-to-avoid-redundancy)

- [How are extension tables (e.g. eMOF, occurrence) linked with the core table?](formatting.llms.md#extensions-in-obis)

- [What is the difference between Occurence Core and Event Core?](formatting.llms.md#dataset-structure)

- [What is the difference between eventID, occurrenceID, organismID, taxonID, scientificNameID, recordNumber, materialEntityID, materialSampleID, and catalogNumber?](identifiers.llms.md#introduction-to-identifiers)

- What is the difference between `individualCount`, and `organismQuantity`, and which one should I use?

  The DwC term `individualCount` is used simply for documenting the *number of individuals* present at the time the occurrence happened. Conversely, `organismQuantity` is used to record *any type* of quantity related to an organism or occurrence. `organismQuantityType` may include the number of individuals, the % cover, biomass, the cover-abundance on the Braun-Blanquet Scale, etc. While both DwC terms can be placed in the Occurrence table, OBIS recommends also populating them in the eMoF table because of the standardization of terms and because you can link to sampling events and factual sampling information.

#### Formatting Data

- [Is there a checklist of all required Darwin Core fields for OBIS?](checklist.llms.md)

- [How does data flow in OBIS?](data_standards.llms.md)

- Can I add polygon or line transect data to OBIS?

  Yes, polygons, lines, or combinations of polygon, line, and point data can be added to OBIS by using the `footprintWKT` field. This is can be used to record tracks, transects, tows, trawls, habitat extent, or when an exact location is not known. Midpoints of polygons can be added to the required fields `decimalLongitude` and `decimalLatitude`.

  WKT strings can be generated using the [OBIS Map Tool](https://obis.org/maptool). The tool can also calculate a midpoint and a radius, which is added to `decimalLongitude`, `decimalLatitude`, and `coordinateUncertaintyInMeters` respectively. There is also an [`obistools` R function](https://github.com/iobis/obistools#calculate-centroid-and-radius-for-wkt-geometries) to calculate the centroid and radius for WKT geometries.

- [What should I do if I do not have the data for required fields by OBIS?](common_formatissues.llms.md#missing-required-fields)

- [How do I construct an eventID?](identifiers.llms.md#eventid)

- [How do I construct occurrenceID?](identifiers.llms.md#occurrenceid)

- [What data goes into Occurrence core (or extension) and how do I set up this file?](format_occurrence.llms.md)

- [How do I set up an Event core table?](format_event.llms.md)

- [How should I populate parent and child event information? Do I have to populate information for child events if the parent event already contains that information?](format_event.llms.md#populating-parent-and-child-events)

- Do I have to provide decimalLatitude and decimalLongitude for the Event *and* Occurrence tables?
  The answer may depend on your dataset structure, but generally, no. If you have Event core, then you do not need to repeat location information in the Occurrence table (but you can if you’d like). If you are using Occurrence core, then location information must be provided in the Occurrence table.

- [What data goes into extendedMeasurementOrFact (eMoF) and how do I set it up?](format_emof.llms.md)

- Can I have multiple eMoF tables, one for Event and one for Occurrence measurements?
  Yes, you can create multiple eMoF tables if it is simpler for you to separate Event and Occurrence measurement data. However, you must ensure all tables include the correct identifiers, i.e. eventID for measurements related to events, and occurrenceID *and* eventID for measurements associated with occurrences. When you add multiple tables of the same type in the IPT, they will be treated as if they were a single table, so there is no issue if you would like to do this.

- [How do I format dates?](common_formatissues.llms.md#temporal-dates-and-times)

- [How do I handle historical data?](common_formatissues.llms.md#historical-data)

- [How do I convert coordinates to decimal degrees?](common_formatissues.llms.md#converting-coordinates)

- [How do I convert different geographical formats to WGS84?](common_formatissues.llms.md#geographical-format-conversion)

- [How do I compile acoustic, imaging, or other multimedia data for OBIS?](other_data_types.llms.md#multimedia-data-acoustic-imaging)

- [How do I compile habitat data for OBIS?](other_data_types.llms.md#habitat-data)

- [How do I compile tracking data for OBIS?](other_data_types.llms.md#tracking-data)

- [How do I compile DNA and genetic data for OBIS?](dna_data.llms.md)

- What does sampleSize and organismQuantity refer to for genetic data?

  For genetic data, `sampleSizeValue` and `organismQuantity` do **not** refer to the amount sampled nor the number of organisms. Instead these fields are related to either 1) the number of sequence reads for eDNA data or 2) the number of droplets/partitions for qPCR data. See [DNA data guidelines](dna_data#.llms.md) for more details.

#### Vocabulary

- [How do I map Measurement or Fact terms in OBIS with preferred BODC vocabulary?](vocabulary.llms.md#map-emof-measurement-identifiers-to-preferred-bodc-vocabulary)
- [I can’t find a suitable vocabulary, what do I do? How do I request a new vocabulary term?](vocabulary.llms.md#requesting-new-vocabulary-terms)
- Should I use taxon-specific P01 codes to populate for measurementTypeID? e.g. http://vocab.nerc.ac.uk/collection/P01/current/A15985A1
  No. You should never use taxon-specific P01 codes. This is because the taxa are already identified in the Occurrence table, in the fields `scientificName` and `scientificNameID`.
- [How should I match raw data fields with Darwin Core terminology?](vocabulary.llms.md#map-data-fields-to-darwin-core)

#### Taxonomy

- How do I document occurrences from unknown species, those new to science, or those with temporary names? e.g. Eurythenes sp. DISCOLL.PAP.JC165.674

  Occurrences unknown or new to science should be documented according to recommendations by [Horton et al. 2021](https://www.frontiersin.org/articles/10.3389/fmars.2021.620702/full). You should populate the `scientificName` field with the genus, and in `identificationQualifer` provide the ON sign ‘sp.’. However you must also indicate the reason why species-level identification is unavailable. To do this, supplement ‘sp.’ with either stet. (stetit) or indet. (indeterminabilis). If neither of these are applicable, (e.g. for undescribed new species), add a unique taxon identifier code after ‘sp.’ to `identificationQualifer`. For example Eurythenes sp. DISCOLL.PAP.JC165.674.

  Please avoid simple alphanumeric codes (i.e. Eurythenes sp. 1, Eurythenes sp. A). Similar to creating `eventIDs` or `occurrenceIDs`, you should strive to provide more complex and globally unique identifier. Identifiers could be constructed by combining higher taxonomic information with information related to a collection, institution, museum or collection code, sample number or museum accession number, expedition, dive number, or timestamp. This ensures namestrings will remain unique within a larger repositories like OBIS. It is also recommended to include these temporary names on specimen labels for physical specimens.

- Can scientificNameID be populated with an identifier (e.g. WoRMS LSID) representing an unaccepted taxon name?

  Yes. The identifier in `scientificNameID` should always correspond with the name that is in the `scientificName` field, even if the name is an unaccepted name in WoRMS. For example, the species name “Holothuria mammiculata” was provided, but this name is unaccepted in WoRMS. The accepted name is “Holothuria (Stauropora) pervicax Selenka, 1867”. In this case `scientificNameID` should correspond to the original name with LSID urn:lsid:marinespecies.org:taxname:529968 because the ID must correlate with the name as recorded in `scientificName`.

- What happens when a WoRMS taxonomy is changed? e.g. a species is reclassified

  When species are reclassied in WoRMS, the original `scientificName` and `scientificNameID` provided in a dataset remains unchanged. However WoRMS will list the old ID as “Unaccepted”, and link to the accepted taxon entry, and this will be reflected in the taxonomic information attached to a dataset download.

  For example, if we search for Manta birostris in OBIS (<https://obis.org/taxon/105857>), we see that the taxon’s status in WoRMS is unaccepted. At the bottom of the page it links to the currently accepted name: <https://obis.org/taxon/1026118>. We can find an occurrence which shows the **source** `scientificName` as “Manta” while the **interpreted** `scientificName` is “Mobula”: <https://obis.org/occurrence/00032775-252c-44b3-9c95-be1c9adb2fe4>. We can also see that `originalScientificName` is populated with the source name in the intepreted output.

  As a user, you don’t have to trace species names. *However* if the datasets’s DwC-A is downloaded from the dataset page instead of obtained through R or the Mapper, **all fields will contain the original value**. It remains good practice to also check identifiers against WoRMS to see if any have been updated when you download data.

#### Tools

- [How do I use the WoRMS taxon match tool?](name_matching.llms.md)

- [Can I fetch a full classification for a list of species from WoRMS?](name_matching.llms.md#how-to-fetch-a-full-classification-for-a-list-of-species-from-worms)

- [What do I do if my scientificName does not return a match from WoRMS?](name_matching.llms.md#what-to-do-with-non-matching-names)

- [Where can I find DNA sequences published in OBIS?](https://sequence.obis.org/)

- Is there a template generator I can use to help create my Event, Occurrence, and eMoF tables?

  Yes. There is an [Excel template generator](https://www.nordatanet.no/aen/template-generator/config%3DDarwin%20Core) developed by Luke Marsden & Olaf Schneider as part of the Nansen Legacy project. Note this template generator is aimed at GBIF users, so make sure to account for and include required OBIS terms.

  There is also this [Excel to Darwin Core macro tool](https://zenodo.org/record/6453921#.Y9KsQkHMKmU) developed by GBIF Norway you can use to help generate templates.

- [How do I georeference locations, including text-based descriptions?](common_qc.llms.md#uncertain-geolocation)

#### Quality Control

- [How do I do data quality control?](data_qc.llms.md#how-to-conduct-quality-control)
- [What are the OBIS quality control flags?](dataquality.llms.md)
- [Why are certain records dropped in OBIS?](data_qc.llms.md#why-are-records-dropped)
- What do I do when I am uncertain about the:
  - [Temporal range of a dataset OR eventDate](common_qc.llms.md#uncertain-temporal-range)
  - [Geospatial location](common_qc.llms.md#uncertain-geolocation)
  - [Taxonomic identification](common_qc.llms.md#uncertain-taxonomic-information)
  - [Individual count](common_qc.llms.md#individualcount)
- [What do I do with freshwater species that are part of my marine dataset?](common_qc.llms.md#non-marine-species)

#### Publishing

- [How do I add my data to the OBIS database?](data_publication.llms.md)
- [What metadata do I have to provide? Where? How?](eml.llms.md#metadata-sections)
- [How do you know which license to choose?](data_publication.llms.md#licenses)
- [How do I access the IPT?](ipt.llms.md#how-to-access-the-ipt)
- [How do I use the IPT?](ipt.llms.md#create-your-resource-on-the-ipt)
- [Are there instructions for IPT administrators?](ipt_admin.llms.md)
- [How do I add DOI to my dataset?](data_sharing.llms.md#adding-a-doi-to-datasets)
- [How do I publish to both GBIF and OBIS?](data_sharing.llms.md#simultaneous-publishing-to-gbif)
- [How do I update my already published dataset?](data_sharing.llms.md#update-your-data-in-obis)

#### Accessing data in OBIS

- Can I get (or publish) other types of information from OBIS, besides occurences (e.g. bio-eco variables, DNA data, abiotic measurements, etc.)?
  Yes! OBIS allows access to not only taxa occurrences, but also all kinds of measurement data including DNA data (see [Contribute](contribute.llms.md) for a list of data accepted by OBIS). This data is recorded in the (Extended) Measurement Or Fact and DNA-Derived Data extension tables, respectively. To access this data when downloading, be sure to select MoF or DNA from the dropdown Dataset Type menu on the [advanced dataset serach page](https://obis.org/datasets). If you are obtaining data from the OBIS Mapper, make sure to check the box for MeasurementOrFact and/or DNADerivedData from the Extensions toggle section. When using the R package robis, use the `mof=TRUE` and/or `dna=TRUE` arguments. More data filter options will be added in the future.

- [How do I download data from OBIS?](access.llms.md#obis-homepage-and-dataset-pages)

- How do I load the full (.csv) export of OBIS data?

  Loading the entire OBIS dataset uses *a lot* of memory and is probably not feasible on most desktop computers. You have a few potential options depending on the use case: i) process the data in smaller batches, or ii) load the dataset into a local database such as SQLite and use SQL queries to analyze the data

  Otherwise, we recommend you use the parquet download which is available [here](https://obis.org/data/access/), instead of the CSV. Then in R, you can use the [`arrow`](https://arrow.apache.org/docs/r/) package to work with parquet files. We also have a short tutorial on working with parquet files in R [here](https://resources.obis.org/tutorials/arrow-obis/), with an example application of this approach [here](https://iobis.github.io/notebook-diversity-indicators/) (see first code block).

- [How can I use R to access OBIS data?](access.llms.md#r-package)

- [How do I use the OBIS API to fetch and filter data?](access.llms.md#api)

- [How do I contact the data provider?](access.llms.md#api)

- [How can I cite OBIS datasets and downloads?](citing.llms.md)

- [What are the definitions of the field names in the downloads generated by OBIS?](access.llms.md#interpreting-downloaded-files-from-obis)

- How do I obtain a taxon checklist for an area?

  There are a few possible ways to obtain a taxon checklist for a given area. We will obtain a checklist of species in the Albain EEZ as an example. To do this we will create a bounding box around our area of interest, and then apply filters to simplify the geometry.

  ``` r
    library(mregions)
    library(dplyr)
    library(robis)
    library(sf)
    #obtain Albanian EEZ as sf
    geom <- mr_shp(key = "MarineRegions:eez", filter = "Albanian Exclusive Economic Zone", maxFeatures = NULL)
    #get WKT for the bounding box
    wkt <- st_as_text(st_as_sfc(st_bbox(geom)), digits = 6)
    #fetch occurrences for bounding box
    occ <- occurrence(geometry = wkt) %>%
      st_as_sf(coords = c("decimalLongitude", "decimalLatitude"), crs = 4326)
    #filter using geometry
    occ_filtered <- occ %>%
      filter(st_intersects(geometry, geom, sparse = FALSE)) %>%
      as_tibble() %>%
      select(-geometry)
    #get taxa
    alb_taxa <- occ_filtered %>%
      group_by(phylum, class, order, family, genus, species, scientificName) %>%
      summarize(records = n())
  ```

- The dates look unusual in the download file. What are these, how do I convert them, and/or how do I obtain separate elements from them (e.g. month)?

  The values in `date_start`, `date_mid`, and `date_end` are unix timestamps which have been calculated from the ISO date in the `eventDate` column. We can convert these numerical values to dates using the formula below.

  ``` excel
  =(E2/86400000)+DATE(1970,1,1)
  ```

  If, when you apply this formula, you still see numbers, you will need to set the cell formatting to Date. Once you have dates, you can obtain, e.g. months for seasonal analyses using:

  ``` excel
  =MONTH(H2)
  ```

  You can also use [this tool](https://www.unixtimestamp.com/) to convert timestamps.

- How do I filter by or obtain trait information for OBIS data (e.g. all benthic organisms)?

  Currently, it is not possible to filter OBIS data by trait. To do this, we recommend using the traits database of the [World Register of Marine Species](https://www.marinespecies.org/traits/aphia.php?p=attributes). For example, searching by “functional group”, you can specify benthos, plankton, nekton, etc.

- How do I get data from multiple regions from OBIS?

  If the areas OBIS currently uses does not work for your use case, then it is best to first define all the boundaries for the desired regions. OBIS can be queried using WKT polygons by providing a WKT string to the `geometry` parameter in the `robis::occurrence` function. **HOWEVER** there are some limitations with respect to polygon complexity, and if it is too complex you will likely receive the error *“The OBIS API was not able to process your request”*.

  For more complex spatial queries we recommend indexing OBIS and GBIF data against polygons and using (finely) gridded versions of these datasets to make the process faster. We note we have not yet properly documented this process, but see the example script produced by Pieter Provoost below. The script first indexes a polygon to the H3 spatial index, then queries a gridded version of OBIS+GBIF data on AWS to get the species list, and finally fetches taxonomy from WoRMS for every species, which may take some time.

  ``` r
  library(readr)
  library(h3jsr)
  library(sf)
  library(duckdb)
  library(DBI)
  library(dplyr)

  sf_use_s2(FALSE)

  # Read WKT from text file, convert to sf, and index to H3 resolution 7
  # https://wktmap.com/?e6b28728

  wkt <- read_file("wkt_21773.txt")
  geom <- st_as_sfc(wkt, crs = 4326)
  cells <- data.frame(cell = polygon_to_cells(geom, 7)[[1]])

  # Set up duckdb connection and register cells table

  con <- dbConnect(duckdb())
  dbSendQuery(con, "install httpfs; load httpfs;")
  duckdb_register(con, "cells", cells)

  # Join cells list and gridded species dataset

  species <- dbGetQuery(con, "
    select species, AphiaID
    from cells
    inner join read_parquet('s3://obis-products/speciesgrids/h3_7/*') h3 on cells.cell = h3.h3_07
    group by species, AphiaID
  ")

  # Add WoRMS taxonomy

  id_batches <- split(species$AphiaID, ceiling(seq_along(species$AphiaID) / 50))
  taxa_batches <- purrr::map(id_batches, worrms::wm_record)
  taxa <- bind_rows(taxa_batches) %>% 
    select(AphiaID, scientificname, phylum, class, order, family, genus, scientificName = scientificname)

  # Get Mollusca species

  mollusca <- taxa %>%
    filter(phylum == "Mollusca")
  ```

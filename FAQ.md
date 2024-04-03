## Frequently Asked Questions

**Content**

* [General](#general)
* [Darwin Core](#darwin-core)
* [Formatting data](#formatting-data)
* [Vocabulary](#vocabulary)
* [Tools](#tools)
* [Quality Control](#quality-control)
* [Publishing](#publishing)
* [Data Access](#accessing-data-in-obis)

#### General

* [I have data and want to publish to OBIS - what do I do?](contribute.html)
* [Why is it important to share and format data?](contribute.html#why-publish-data-to-obis)
* [How do I handle sensitive data?](contribute.html#how-to-handle-sensitive-data)
* [Where can I make suggestions for improvements on this Manual?](https://github.com/iobis/manual)
* [Where can I find OBIS related training videos?](https://youtube.com/playlist?list=PLlgUwSvpCFS4TS7ZN0fhByj_3EBZ5lXbF)
* [What are the responsibilities of OBIS node managers?](nodes.html)
* [Where can I find marine datasets linked to the OBIS network by the GBIF registry, that now require endorising?](https://github.com/iobis/obis-network-datasets/)

#### Darwin Core

<ul>
  <li><a href="darwin_core.html">Where can I learn about "Darwin Core"?</a></li>
  <li><a href="relational_db.html">I am having trouble understanding how Core and Extension tables relate to each other</a></li>
  <li><a href="relational_db.html#how-to-avoid-redundancy">How does the OBIS format avoid redundancy in data</a></li>
  <li><a href="formatting.html#extensions-in-obis">How are extension tables (e.g. eMOF, occurrence) linked with the core table?</a></li>
  <li><a href="formatting.html#dataset-structure">What is the difference between Occurence Core and Event Core?</a></li>
  <li><a href="identifiers.html#introduction-to-identifiers">What is the difference between eventID, occurrenceID, organismID, taxonID, scientificNameID, recordNumber, materialEntityID, materialSampleID, and catalogNumber?</a></li>
  <li><details>
  <summary>What is the difference between <code>individualCount</code>, and <code>organismQuantity</code>, and which one should I use?

  The DwC term `individualCount` is used simply for documenting the *number of individuals* present at the time the occurrence happened. Conversely, `organismQuantity` is used to record *any type* of quantity related to an organism or occurrence. `organismQuantityType` may include the number of individuals, the % cover, biomass, the cover-abundance on the Braun-Blanquet Scale, etc. While both DwC terms can be placed in the Occurrence table, OBIS recommends also populating them in the eMoF table because of the standardization of terms and because you can link to sampling events and factual sampling information.

  </details></li>
</ul>

#### Formatting Data

<ul>
  <li><a href="checklist.html">Is there a checklist of all required Darwin Core fields for OBIS?</a></li>
  <li><a href="data_standards.html">How does data flow in OBIS?</a></li>
  <li><a href="common_formatissues.html#missing-required-fields">What should I do if I do not have the data for required fields by OBIS?</a></li>
  <li><a href="identifiers.html#eventid">How do I construct an eventID?</a></li>
  <li><a href="identifiers.html#occurrenceid">How do I construct occurrenceID?</a></li>
  <li><a href="format_occurrence.html">What data goes into Occurrence core (or extension) and how do I set up this file?</a></li>
  <li><a href="format_event.html">How do I set up an Event core table?</a></li>
  <li><a href="format_event.html#populating-parent-and-child-events">How should I populate parent and child event information? Do I have to populate information for child events if the parent event already contains that information?</a></li>
  <li><details>
  <summary>Do I have to provide decimalLatitude and decimalLongitude for the Event <i>and</i> Occurrence tables?</summary>
  
  The answer may depend on your dataset structure, but generally, no. If you have Event core, then you do not need to repeat location information in the Occurrence table (but you can if you'd like). If you are using Occurrence core, then location information must be provided in the Occurrence table.
  </details></li>
  <li><a href="format_emof.html">What data goes into extendedMeasurementOrFact (eMoF) and how do I set it up?</a></li>
  <li><details>
  <summary>Can I have multiple eMoF tables, one for Event and one for Occurrence measurements?</summary>
  
  Yes, you can create multiple eMoF tables if it is simpler for you to separate Event and Occurrence measurement data. However, you must ensure all tables include the correct identifiers, i.e. eventID for measurements related to events, and occurrenceID *and* eventID for measurements associated with occurrences. When you add multiple tables of the same type in the IPT, they will be treated as if they were a single table, so there is no issue if you would like to do this.
  </details></li>
  <li><a href="common_formatissues.html#temporal-dates-and-times">How do I format dates?</a></li>
  <li><a href="common_formatissues.html#historical-data"> How do I handle historical data?</a></li>
  <li><a href="common_formatissues.html#converting-coordinates">How do I convert coordinates to decimal degrees?</a></li>
  <li><a href="common_formatissues.html#geographical-format-conversion">How do I convert different geographical formats to WGS84?</a></li>
  <li><a href="other_data_types.html#multimedia-data-acoustic-imaging">How do I compile acoustic, imaging, or other multimedia data for OBIS?</a></li>
  <li><a href="other_data_types.html#habitat-data">How do I compile habitat data for OBIS?</a></li>
  <li><a href="other_data_types.html#tracking-data">How do I compile tracking data for OBIS?</a></li>
  <li><a href="dna_data.html">How do I compile DNA and genetic data for OBIS?</a></li>
  <li><details>
  <summary>What does sampleSize and organismQuantity refer to for genetic data?</summary>
  
  For genetic data, `sampleSizeValue` and `organismQuantity` do **not** refer to the amount sampled nor the number of organisms. Instead these fields are related to either 1) the number of sequence reads for eDNA data or 2) the number of droplets/partitions for qPCR data. See [DNA data guidelines](dna_data#.html) for more details.

  </details></li>
  <li><details>
  <summary>How do I document occurrences from unknown species, those new to science, or those with temporary names? e.g. Eurythenes sp. DISCOLL.PAP.JC165.674</summary>

  Occurrences unknown or new to science should be documented according to recommendations by [Horton et al. 2021](https://www.frontiersin.org/articles/10.3389/fmars.2021.620702/full). You should populate the `scientificName` field with the genus, and in `identificationQualifer` provide the ON sign 'sp.'. However you must also indicate the reason why species-level identification is unavailable. To do this, supplement 'sp.' with either stet. (stetit) or indet. (indeterminabilis). If neither of these are applicable, (e.g. for undescribed new species), add a unique taxon identifier code after 'sp.' to `identificationQualifer`. For example Eurythenes sp. DISCOLL.PAP.JC165.674.
  
  Please avoid simple alphanumeric codes (i.e. Eurythenes sp. 1, Eurythenes sp. A). Similar to creating `eventIDs` or `occurrenceIDs`, you should strive to provide more complex and globally unique identifier. Identifiers could be constructed by combining higher taxonomic information with information related to a collection, institution, museum or collection code, sample number or museum accession number, expedition, dive number, or timestamp. This ensures namestrings will remain unique within a larger repositories like OBIS. It is also recommended to include these temporary names on specimen labels for physical specimens.
  </details></li>
</ul>

#### Vocabulary

<ul>
  <li><a href="vocabulary.html#map-emof-measurement-identifiers-to-preferred-bodc-vocabulary">How do I map Measurement or Fact terms in OBIS with preferred BODC vocabulary?</a></li>
  <li><a href="vocabulary.html#requesting-new-vocabulary-terms">I can't find a suitable vocabulary, what do I do? How do I request a new vocabulary term?</a></li>
  <li><details>
  <summary>Should I use taxon-specific P01 codes to populate for measurementTypeID? e.g. <link>http://vocab.nerc.ac.uk/collection/P01/current/A15985A1</link> </summary>

  No. You should never use taxon-specific P01 codes. This is because the taxa are already identified in the Occurrence table, in the fields `scientificName` and `scientificNameID`.
  </details></li>
  <li><a href="vocabulary.html#map-data-fields-to-darwin-core">How should I match raw data fields with Darwin Core terminology?</a></li>
</ul>

#### Tools

<ul>
  <li><a href="name_matching.html">How do I use the WoRMS taxon match tool?</a></li>
  <li><a href="name_matching.html#how-to-fetch-a-full-classification-for-a-list-of-species-from-worms">Can I fetch a full classification for a list of species from WoRMS?</a></li>
  <li><a href="name_matching.html#what-to-do-with-non-matching-names">What do I do if my scientificName does not return a match from WoRMS?</a></li>
  <li><details>
  <summary>Can scientificNameID be populated with an identifier (e.g. WoRMS LSID) representing an unaccepted taxon name?</summary>

  Yes. The identifier in `scientificNameID` should always correspond with the name that is in the `scientificName` field, even if the name is an unaccepted name in WoRMS. For example, the species name "Holothuria mammiculata" was provided, but this name is unaccepted in WoRMS. The accepted name is "Holothuria (Stauropora) pervicax Selenka, 1867". In this case `scientificNameID` should correspond to the original name with LSID urn:lsid:marinespecies.org:taxname:529968 because the ID must correlate with the name as recorded in `scientificName`.

  </details></li>
  <li><a href="https://sequence.obis.org/">Where can I find DNA sequences published in OBIS?</a></li>
  <li><details>
  <summary>Is there a template generator I can use to help create my Event, Occurrence, and eMoF tables?</summary>

  Yes. There is an [Excel template generator](https://www.nordatanet.no/aen/template-generator/config%3DDarwin%20Core) developed by Luke Marsden & Olaf Schneider as part of the Nansen Legacy project. Note this template generator is aimed at GBIF users, so make to account for and include required OBIS terms.

  There is also this [Excel to Darwin Core macro tool](https://zenodo.org/record/6453921#.Y9KsQkHMKmU) developed by GBIF Norway you can use to help generate templates.

  </details></li>
  <li><a href="common_qc.html#uncertain-geolocation">How do I georeference locations, including text-based descriptions?</a></li>
</ul>

#### Quality Control

* [How do I do data quality control?](data_qc.html#how-to-conduct-quality-control)
* [What are the OBIS quality control flags?](dataquality.html)
* [Why are certain records dropped in OBIS?](data_qc.html#why-are-records-dropped)
* What do I do when I am uncertain about the:
  * [Temporal range of a dataset OR eventDate](common_qc.html#uncertain-temporal-range)
  * [Geospatial location](common_qc.html#uncertain-geolocation)
  * [Taxonomic identification](common_qc.html#uncertain-taxonomic-information)
  * [Individual count](common_qc.html#individualcount)
* [What do I do with freshwater species that are part of my marine dataset?](common_qc.html#non-marine-species)

#### Publishing

* [How do I add my data to the OBIS database?](data_publication.html)
* [What metadata do I have to provide? Where? How?](eml.html#metadata-sections)
* [How do you know which license to choose?](data_publication.html#licenses)
* [How do I access the IPT?](ipt.html#how-to-access-the-ipt)
* [How do I use the IPT?](ipt.html#create-your-resource-on-the-ipt)
* [Are there instructions for IPT administrators?](ipt_admin.html)
* [How do I add DOI to my dataset?](data_sharing.html#adding-a-doi-to-datasets)
* [How do I publish to both GBIF and OBIS?](data_sharing.html#simultaneous-publishing-to-gbif)
* [How do I update my already published dataset?](data_sharing.html#update-your-data-in-obis)

#### Accessing data in OBIS

<ul>
  <li><details>
  <summary>Can I get (or publish) other types of information from OBIS, besides occurences (e.g. bio-eco variables, DNA data, abiotic measurements, etc.)?</summary>

  Yes! OBIS allows access to not only taxa occurrences, but also all kinds of measurement data including DNA data (see [Contribute](contribute.html) for a list of data accepted by OBIS). This data is recorded in the (Extended) Measurement Or Fact and DNA-Derived Data extension tables, respectively. To access this data when downloading, be sure to select MoF or DNA from the dropdown Dataset Type menu on the [advanced dataset serach page](https://obis.org/datasets). If you are obtaining data from the OBIS Mapper, make sure to check the box for MeasurementOrFact and/or DNADerivedData from the Extensions toggle section. When using the R package robis, use the `mof=TRUE` and/or `dna=TRUE` arguments. More data filter options will be added in the future.
  </details></li>
  <li><a href="access.html#obis-homepage-and-dataset-pages">How do I download data from OBIS?</a></li>
  <li><details>
  <summary>How do I load the full (.csv) export of OBIS data?</summary>
  
  Loading the entire OBIS dataset uses *a lot* of memory and is probably not feasible on most desktop computers. You have a few potential options depending on the use case: i) process the data in smaller batches, or ii) load the dataset into a local database such as SQLite and use SQL queries to analyze the data
  
  Otherwise, we recommend you use the parquet download which is available [here](https://obis.org/data/access/), instead of the CSV. Then in R, you can use the [`arrow`](https://arrow.apache.org/docs/r/) package to work with parquet files. We also have a short tutorial on working with parquet files in R [here](https://resources.obis.org/tutorials/arrow-obis/), with an example application of this approach [here](https://iobis.github.io/notebook-diversity-indicators/) (see first code block).
  </details></li>
  <li><a href="access.html#r-package">How can I use R to access OBIS data?</a></li>
  <li><a href="access.html#api">How do I use the OBIS API to fetch and filter data?</a></li>
  <li><a href="access.html#api">How do I contact the data provider?</a></li>
  <li><a href="citing.html">How can I cite OBIS datasets and downloads?</a></li>
  <li><a href="access.html#interpreting-downloaded-files-from-obis">What are the definitions of the field names in the downloads generated by OBIS?</a></li>
  <li><details>
  <summary>How do I obtain a taxon checklist for an area?</summary>
  
  There are a few possible ways to obtain a taxon checklist for a given area. We will obtain a checklist of species in the Albain EEZ as an example. To do this we will create a bounding box around our area of interest, and then apply filters to simplify the geometry.

  ```R
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

  </details></li>
  <li><details><summary>The dates look unusual in the download file. What are these, how do I convert them, and/or how do I obtain separate elements from them (e.g. month)?</summary>
  
  The values in `date_start`, `date_mid`, and `date_end` are unix timestamps which have been calculated from the ISO date in the `eventDate` column. We can convert these numerical values to dates using the formula below.

  ```Excel
  =(E2/86400000)+DATE(1970,1,1)
  ```

  If, when you apply this formula, you still see numbers, you will need to set the cell formatting to Date. Once you have dates, you can obtain, e.g. months for seasonal analyses using:
  
  ```Excel
  =MONTH(H2)
  ```

  You can also use [this tool](https://www.unixtimestamp.com/) to convert timestamps.

  </details></li>
  
  <li><details>
  <summary>How do I filter by or obtain trait information for OBIS data (e.g. all benthic organisms)?</summary>
  
  Currently, it is not possible to filter OBIS data by trait. To do this, we recommend using the traits database of the [World Register of Marine Species](https://www.marinespecies.org/traits/aphia.php?p=attributes). For example, searching by “functional group”, you can specify benthos, plankton, nekton, etc.
  
  </details></li>
</ul>

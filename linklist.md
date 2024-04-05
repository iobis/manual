## Quick links to resources

Below you will find a convenient list of important or relevant websites and resources that are mentioned in this Manual. Links are organized by category.

#### General links and guides

* [OBIS home page](https://obis.org/)
* [Darwin Core term OBIS Checklist](checklist.html#darwin-core-term-checklist-for-obis)
* [OBIS FAQ](FAQ.html)
* [OBIS Slack](https://join.slack.com/t/obishq/shared_invite/zt-1yiucrrrq-RZRPU7c4rm7OungiBseWVA)
* [OBIS GitHub helpdesk](https://github.com/iobis/helpdesk)
* [List of OBIS nodes](https://obis.org/contact/)
* [Darwin Core term Quick Reference Guide](https://dwc.tdwg.org/terms/)
* [Darwin Core text guide](https://dwc.tdwg.org/text/)
* [Publishing DNA-derived data guide](https://docs.gbif.org/publishing-dna-derived-data/en/)
* Data formatting tutorial YouTube video series: <https://www.youtube.com/playlist?list=PLlgUwSvpCFS4TS7ZN0fhByj_3EBZ5lXbF>
* De Pooter et al. 2017. Toward a new data standard for combined marine biological and environmental datasets - expanding OBIS beyond species occurrences. Biodiversity Data Journal 5: e10989. hdl.handle.net/10.3897/BDJ.5.e10989
* Duncan et al. (2021). A standard approach to structuring classified habitat data using the Darwin Core Extended Measurement or Fact Extension. EMODnet report.  <https://www.emodnet-seabedhabitats.eu/resources/documents-and-outreach/#h3298bcd0a15741a8a0ac1c8b4576f7c5> (note you must refine search to Technical Reports from 2021 to identify this report as it does not have an individual link)

#### Data Access & Mapping/Georeferencing Tools

* [OBIS Mapper](https://mapper.obis.org/): map-based tool for obtaining OBIS data, allowing various filters to be applied
* [R package robis](https://github.com/iobis/robis)
* [OBIS MapTool](https://obis.org/maptool/#): used for generating WKT strings, georeferencing, etc.
* [Wellknown Text (WKT) visualization](https://wktmap.com/): tool to visualize WKT strings
* [Full OBIS Data export](https://obis.org/data/access/): also includes a list of which fields are appended/modified when data is published to OBIS
* [OBIS API](https://api.obis.org/): API interface, note that the result previews from executing functions are frequently incomplete and only provide the first ~10 results
* [Marine Regions Gazetteer](https://www.marineregions.org/gazetteer.php?p=search): a standard list of geographic names with information and maps; can be used to assist georeferencing, particularly for marine locations
* [Coordinate Conversion Tool](https://obis.shinyapps.io/coordinates): used to convert coordinates from degrees minutes seconds to decimal degrees
* [Getty Thesaurus of Geographic Names](https://www.getty.edu/research/tools/vocabularies/tgn/): search interface for place names

#### Controlled vocabulary

* [SeaDataNet P01 facet search](https://vocab.seadatanet.org/p01-facet-search): recommended interface to search for P01 codes used to populate measurementTypeID field. Note that the free text search is best used by supplying one search term at a time (it does not search the same way we use Google)
* [OBIS GitHub repository for vocabulary](https://github.com/nvs-vocabs/OBISVocabs/issues): use this repository to request new terms for OBIS data
* [Darwin Core Basis of Record Vocabulary](https://rs.gbif.org/vocabulary/dwc/basis_of_record_2022-02-02.xml): definitions for terms used to populate basisOfRecord
* [OBIS MoF viewer](https://mof.obis.org/): this tool allows you to search for all measurements or facts published in OBIS
* [MeasurementOrFact statistics summary by Node](https://r.obis.org/mof/): this page provides a summary for each dataset by OBIS node, summarizing the % of missing measurementTypeID, measurementValueID, and measurementUnitIDs
* [NERC Vocabulary Server](https://vocab.nerc.ac.uk/search_nvs/): interface to search through the entire NERC Vocabulary Server to find vocabulary terms. As with the SeaDataNet facet search, the search does not function the same way Google does and you may have to adjust how you search for terms.

#### Tools for Taxonomy & Dates

* [WoRMS Taxon match tool](https://www.marinespecies.org/aphia.php?p=match): used to match a list of species names to taxonomic authority and obtain LSIDs for species
* [GBIF Name parser](https://www.gbif.org/tools/name-parser): tool to divide scientific names into their components and to check them against the taxonomic backbone used by GBIF
* [OBIS Guidelines for Historical Data](common_formatissues.html#historical-data)
  * [Chronometric Age Extension](https://chrono.tdwg.org/)
* [Canadensys Date parser](https://data.canadensys.net/tools/dates#:~:text=Use%20this%20tool%20to%20parse,a%20tab%20or%20a%20pipe.): tool to parse dates into component parts

#### Data QC Tools & Links

* [List of Quality Checks conducted by OBIS](https://github.com/iobis/obis-qc) on published data
* [List of QC Flags](https://github.com/iobis/obis-qc/blob/master/obisqc/util/flags.py) implemented by OBIS
* [obistools](https://github.com/iobis/obistools) R package for conducting QC checks on OBIS data
* [LifeWatch & EMODnet Biology QC tool](https://rshiny.lifewatch.be/BioCheck/)
* [Hmisc R package](https://hbiostat.org/r/hmisc/) for summarizing data, useful for checking data quality and outliers

#### Template Tools

* [Excel to Darwin Core Standard (DwC) Tool](https://zenodo.org/record/6453921#.Y9KsQkHMKmU): a macro Excel spreadsheet for setup, data entry, data validation and file export to DwC (Darwin Core Standard) files. Creates templates for Event, Occurrence, MeasurementsOrFacts, Extended MeasurementsOrFacts (EMoF), and Simple Multimedia tables.
* [Darwin Core Template Generator for Event and Occurrence tables](https://sios-svalbard.org/aen/template-generator/): allows selection of DwC terms to generate template for Event and Occurrence tables, developed by

#### Publishing Tools & Links

* [Integrated Publishing Toolkit (IPT) User Manual](https://ipt.gbif.org/manual/en/ipt/latest/)
* [Ecological Metadata Language (EML) guide](https://eml.ecoinformatics.org/)
* [Become a  GBIF publisher](https://www.gbif.org/become-a-publisher): crucial step for publishing your dataset to GBIF as well as OBIS

## Frequency Asked Questions

#### General

* [I have data and want to publish to OBIS - what do I do?](contribute.html)
* [Why is it important to share and format data?](contribute.html#why-publish-data-to-obis)
* [How do I handle sensitive data?](contribute.html#how-to-handle-sensitive-data)
* [I am having trouble understanding how Core and Extension tables relate to each other](relational_db.html)
* [How does the OBIS format avoid redundancy in data](relational_db.html#how-to-avoid-redundancy)
* [Where can I learn about "Darwin Core"?](darwin_core.html)
* [How are extension tables (e.g. eMOF, occurrence) linked with the core table?](formatting.html#extensions-in-obis)
* [What is the difference between Occurence Core and Event Core?](formatting.html#dataset-structure)
* [What are the responsibilities of node managers?](nodes.html)
* [Where can I find marine datasets linked to the OBIS network by the GBIF registry, that now require endorising?](https://github.com/iobis/obis-network-datasets/)
* [Where can I make suggestions for improvements on this Manual?](https://github.com/iobis/manual)

#### Formatting Data

* [Is there a checklist of all required Darwin Core fields for OBIS?](checklist.html)
* [How does data flow in OBIS?](data_standards.html)
* [What should I do if I do not have the data for required fields by OBIS?](common_formatissues.html#missing-required-fields)
* [How do I construct an eventID?](identifiers.html#eventid)
* [How do I construct occurrenceID?](identifiers.html#occurrenceid)
* [What data goes into Occurrence core (or extension) and how do I set up this file?](format_occurrence.html)
* [How do I set up an Event core table?](format_event.html)
* [What data goes into extendedMeasurementOrFact and how do I set it up?](format_emof.html)
* [How do I map Measurement or Fact terms in OBIS with preferred BODC vocabulary?](vocabulary.html#measurementorfact-vocabularies)
* [I can't find a suitable vocabulary, how do I request a new vocabulary term?](vocabulary.html#requesting-new-vocabulary-terms)
* [How should I match raw data fields with Darwin Core terminology?](vocabulary.html#map-your-data-with-dwc-vocabulary)
* [How do I format dates?](common_formatissues.html#temporal-dates-and-times)
* [How do I handle historical data?](common_formatissues.html#historical-data)
* [How do I convert coordinates to decimal degrees?](common_formatissues.html#converting-coordinates)
* [How do I convert  different geographical formats to WGS84?](common_formatissues.html#geographical-format-conversion)
* [How do I compile acoustic, imaging, or other multimedia data for OBIS?](other_data_types.html#multimedia-data-acoustic-imaging)
* [How do I compile habitat data for OBIS?](other_data_types.html#habitat-data)
* [How do I compile tracking data for OBIS?](other_data_types.html#tracking-data)
* [How do I compile DNA and genetic data for OBIS?](dna_data.html)

#### Tools

* [How do I use the WoRMS taxon match tool?](name_matching.html)
  * [Can I fetch a full classification for a list of species from WoRMS?](name_matching.html#how-to-fetch-a-full-classification-for-a-list-of-species-from-worms)
  * [What do I do if my scientificName does not return a match from WoRMS?](name_matching.html#what-to-do-with-non-matching-names)

#### Quality Control

* [How do I do data quality control?](data_qc.html#how-to-conduct-quality-control)
* [What are the OBIS quality control flags?]()
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

#### Accessing data

* [How do I download data from OBIS?](access.html#obis-homepage-and-dataset-pages)
* [How can I use R to access OBIS data?](access.html#r-package)
* [How do I use the OBIS API to fetch and filter data?](access.html#api)
* [How do I contact the data provider?](access.html#api)
* [How can I cite OBIS datasets and downloads?](citing.html)
* [What are the definitions of the field names in the downloads generated by OBIS?](access.html#interpreting-downloaded-files-from-obis)

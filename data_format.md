### Darwin Core Archive and dataset structure

**Contents**

- [Darwin Core Archive](#darwin-core-archive)
- [OBIS holds more than just species occurrences: the ENV-DATA approach](#obis-holds-more-than-just-species-occurrences-the-env-data-approach)
  - [ExtendedMeasurementOrFact Extension (eMoF)](#extendedmeasurementorfact-extension-emof)
     - [MeasurementOrFact vocabularies](#measurementorfact-vocabularies)
  - [eDNA & DNA derived data Extension](#edna-dna-derived-data-extension)
  - [A special case: habitat types](#a-special-case-habitat-types)
- [When to use Event Core](#when-to-use-event-core)
- [When to use Occurrence Core](#when-to-use-occurrence-core)
- [Recommended reading](#recommended-reading)

#### Darwin Core Archive

Darwin Core Archive (DwC-A) is the standard for packaging and publishing biodiversity data using Darwin Core terms. It is the preferred format for publishing data in OBIS and GBIF. The format is described in the [Darwin Core text guide](https://dwc.tdwg.org/text/). A Darwin Core Archive contains a number of text files, including data tables formatted as CSV.

The conceptual data model of the Darwin Core Archive is a star schema with a single core table, for example containing occurrence records or event records, at the center of the star. Extension tables can optionally be associated with the core table. It is not possible to link extension tables to other extension tables (to form a so-called snowflake schema). There is a one-to-many relationship between the core and extension records, so each core record can have zero or more extension records linked to it, and each extension record must be linked to exactly one core record. Definitions for the core and extension tables can be found [here](http://rs.gbif.org/).

Besides data tables, a Darwin Core Archive also contains two XML files: one file which describes the archive and data file structure (`meta.xml`), and one file which contains the dataset's metadata (`eml.xml`).

<img src="images/dwca.png" class="img-responsive img-responsive-50"/>
<p class="caption-50">Figure: structure of a Darwin Core Archive.</p>

#### OBIS holds more than just species occurrences: the ENV-DATA approach

Data collected as part of marine biological research often include measurements of habitat features (such as physical and chemical parameters of the environment), biotic and biometric measurements (such as body size, abundance, biomass), as wel as details regarding the nature of the sampling or observation methods, equipment, and sampling effort.

In the past, OBIS relied solely on the [Occurrence Core](http://rs.gbif.org/core/dwc_occurrence_2015-07-02.xml), and additional measurements were added in a structured format (e.g. JSON) in the Darwin Core term `dynamicProperties` inside the occurrence records. This approach had significant downsides: the format is difficult to construct and deconstruct, there is no standardization of terms, and attributes which are shared by multiple records (think sampling methodology) have to be repeated many times. The formatting problem can be addressed by moving measurements to a [MeasurementOrFacts](http://rs.gbif.org/extension/dwc/measurements_or_facts.xml) extension table, but that doesn't solve the redundancy and standardization problems.

With the release and adoption of a new core type [Event Core](http://rs.gbif.org/core/dwc_event_2015_05_29.xml) it became possible to associate measurements with nested events (such as cruises, stations, and samples), but the restrictive star schema of Darwin Core archive prohibited associating measurements with the event records in the Event core as well as with the occurrence records in the Occurrence extension. For this reason an extended version of the existing MeasurementOrFact extension was created.

##### ExtendedMeasurementOrFact Extension (eMoF)

As part of the IODE pilot project [Expanding OBIS with environmental data OBIS-ENV-DATA](https://www.iode.org/index.php?option=com_content&view=article&id=463&Itemid=100200), OBIS introduced a custom [ExtendedMeasurementOrFact](http://rs.gbif.org/extension/obis/extended_measurement_or_fact.xml) or eMoF extension, which extends the existing [MeasurementOrFact](http://rs.gbif.org/extension/dwc/measurements_or_facts.xml) extension with 4 new terms:

- `occurrenceID`
- `measurementTypeID`
- `measurementValueID`
- `measurementUnitID`

The `occurrenceID` term is used to circumvent the limitations of the star schema, and link measurement records in the ExtendedMeasurementOrFact extension to occurrence records in the Occurrence extension. Note that in order to comply with the Darwin Core Archive standard, these records still need to link to an event record in the Event core table as well. Thanks to this term we can now store a variety of measurements and facts linked to either events or occurrences:

- organism quantifications (e.g. counts, abundance, biomass, % live cover, etc.)
- species biometrics (e.g. body length, weight, etc.)
- facts documenting a specimen (e.g. living/dead, behaviour, invasiveness, etc.)
- abiotic measurements (e.g. temperature, salinity, oxygen, sediment grain size, habitat features)
- facts documenting the sampling activity (e.g. sampling device, sampled area, sampled volume, sieve mesh size).

<img src="images/EventCoreSchema.png" class="img-responsive img-responsive-50"/>
<p class="caption-50">Figure: Overview of an OBIS-ENV-DATA format. Sampling parameters, abiotic measurements, and occurrences are linked to events using the eventID (full lines). Biotic measurements are linked to occurrences using the new occurrenceID field of the ExtendedMeasurementOrFact Extension (dashed lines).</p>

##### MeasurementOrFact vocabularies

The MeasurementOrFact terms `measurementType`, `measurementValue` and `measurementUnit` are completely unconstrained and can be populated with free text annotation. While free text offers the advantage of capturing complex and as yet unclassified information, the inevitable semantic heterogeneity (e.g. of spelling or wording) becomes a major challenge for effective data integration and analysis. Hence, OBIS added 3 new terms: `measurementTypeID`, `measurementValueID` and `measurementUnitID` to standardise the measurement types, values and units. Note that `measurementValueID` is not used for standardizing numeric measurements. The three new terms should be populated using controlled vocabularies referenced using Unique Resource Identifiers (URIs). OBIS recommends to use the internationally recognized [NERC Vocabulary Server](http://www.bodc.ac.uk/resources/products/web_services/vocab/), developed by the British Oceanographic Data Centre (BODC), which can be searched through [https://www.bodc.ac.uk/resources/vocabularies/vocabulary_search/](https://www.bodc.ac.uk/resources/vocabularies/vocabulary_search).

The following vocabularies are recommended for populating `measurementTypeID`, `measurementValueID`, and `measurementUnitID`:

###### measurementTypeID

- BODC Parameter Usage Vocabulary (P01)
  - documentation: [https://github.com/nvs-vocabs/P01](https://github.com/nvs-vocabs/P01)
  - vocabulary: [http://vocab.nerc.ac.uk/collection/P01/current/](http://vocab.nerc.ac.uk/collection/P01/current/)
  - search: [https://www.bodc.ac.uk/resources/vocabularies/vocabulary_search/P01/](https://www.bodc.ac.uk/resources/vocabularies/vocabulary_search/P01/)
- OBIS sampling instruments and methods attributes (Q01)
  - vocabulary: [http://vocab.nerc.ac.uk/collection/Q01/current/](http://vocab.nerc.ac.uk/collection/Q01/current/)
  - search: [https://www.bodc.ac.uk/resources/vocabularies/vocabulary_search/Q01/](https://www.bodc.ac.uk/resources/vocabularies/vocabulary_search/Q01/)

###### measurementValueID

- Sampling instruments and sensors (SeaVoX Device Catalogue)
  - documentation: [https://github.com/nvs-vocabs/L22](https://github.com/nvs-vocabs/L22)
  - vocabulary: [http://vocab.nerc.ac.uk/collection/L22/current](http://vocab.nerc.ac.uk/collection/L22/current)
  - search: [https://www.bodc.ac.uk/resources/vocabularies/vocabulary_search/L22/](https://www.bodc.ac.uk/resources/vocabularies/vocabulary_search/L22/)
- Sampling instrument categories (SeaDataNet device categories)
  - documentation: [https://github.com/nvs-vocabs/L05](https://github.com/nvs-vocabs/L05)
  - vocabulary: [http://vocab.nerc.ac.uk/collection/L05/current](http://vocab.nerc.ac.uk/collection/L05/current)
  - search: [https://www.bodc.ac.uk/resources/vocabularies/vocabulary_search/L05/](https://www.bodc.ac.uk/resources/vocabularies/vocabulary_search/L05/)
- Vessels (ICES Platform Codes)
  - vocabulary: [http://vocab.nerc.ac.uk/collection/C17/current](http://vocab.nerc.ac.uk/collection/C17/current )
  - search: [https://www.bodc.ac.uk/resources/vocabularies/vocabulary_search/C17/](https://www.bodc.ac.uk/resources/vocabularies/vocabulary_search/C17/)
- Sex (Gender)
  - documentation: [https://github.com/nvs-vocabs/S10](https://github.com/nvs-vocabs/S10)
  - vocabulary: [http://vocab.nerc.ac.uk/collection/S10/current/](http://vocab.nerc.ac.uk/collection/S10/current/)
  - search: [https://www.bodc.ac.uk/resources/vocabularies/vocabulary_search/S10/](https://www.bodc.ac.uk/resources/vocabularies/vocabulary_search/S10/)  
- Lifestage
  - documentation: [https://github.com/nvs-vocabs/S11](https://github.com/nvs-vocabs/S11)
  - vocabulary: [http://vocab.nerc.ac.uk/collection/S11/current/](http://vocab.nerc.ac.uk/collection/S11/current/)
  - search: [https://www.bodc.ac.uk/resources/vocabularies/vocabulary_search/S11/](https://www.bodc.ac.uk/resources/vocabularies/vocabulary_search/S11/)
- Papers or manuals on the sampling protocol used
  - DOI
  - Handle for publications on IOC's [Ocean Best Practices repository](http://www.oceanbestpractices.net/), for example: [http://hdl.handle.net/11329/304](http://hdl.handle.net/11329/304)

###### MeasurementUnitID

- Units
  - documentation: [https://github.com/nvs-vocabs/P06](https://github.com/nvs-vocabs/P06)
  - vocabulary: [http://vocab.nerc.ac.uk/collection/P06/current](http://vocab.nerc.ac.uk/collection/P06/current)
  - search: [https://www.bodc.ac.uk/resources/vocabularies/vocabulary_search/P06/](https://www.bodc.ac.uk/resources/vocabularies/vocabulary_search/P06/)

##### eDNA & DNA derived data Extension

DNA derived data are increasingly being used to document taxon occurrences. To ensure these data are useful to the broadest possible community, GBIF published a guide entitled [Publishing DNA-derived data through biodiversity data platforms](https://docs.gbif-uat.org/publishing-dna-derived-data/1.0/en/). This guide is supported by the DNA derived data extension for Darwin Core, which incorporates MIxS terms into the Darwin Core standard. eDNA and DNA derived data is linked to occurrence data with the use of `occurrenceID` and/ or `eventID`. Refer to the [Examples: ENV-DATA and DNA derived data](examples#edna-dna-derived-data.html) for use case examples of eDNA and DNA derived data. 

##### A special case: habitat types

Event Core is perfect for enriching OBIS with interpreted information such as biological community, biotope or habitat type (collectively referred to as 'habitats'). However, the unconstrained nature of the terms `measurementTypeID`, `measurementValueID`, and `measurementUnitID` leads to a risk that habitats measurements are structured inconsistently within the Darwin Core Archive standard and as a result, are not easily discoverable, understood or usable.

As a result, members of the European Marine Observation and Data Network (EMODnet) Seabed Habitats and Biology thematic groups have produced a document [Duncan et al. (2021)](https://www.emodnet-seabedhabitats.eu/resources/documents-and-outreach/#h3298bcd0a15741a8a0ac1c8b4576f7c5) that recommends a consistent approach to structuring classified habitat data in Europe using the Darwin Core eMoF Extension. Note that this approach has not yet been discussed or approved at the global level so the implementation at the EurOBIS level may be considered a pilot.

The overarching principles are summarised here. Note that because of the numerous classification systems and priority habitat lists in existence, it is not possible to point to a single vocabulary for populating each of `measurementTypeID`, `measurementValueID` and `measurementUnitID`, as for other measurement types, so below are the *types* of information to include, with an example, as recommended by [Duncan et al. (2021)](https://www.emodnet-seabedhabitats.eu/resources/documents-and-outreach/#h3298bcd0a15741a8a0ac1c8b4576f7c5):

- `measurementTypeID`: A machine-readable URI or DOI reference describing the (version of the) classification system itself. For example: [https://dd.eionet.europa.eu/vocabulary/biodiversity/eunishabitats/](https://dd.eionet.europa.eu/vocabulary/biodiversity/eunishabitats/)
- `measurementValueID`: If available, a machine-readable URI describing the habitat class in “measurementValue”. For example: [https://dd.eionet.europa.eu/vocabulary/biodiversity/eunishabitats/A5.36](https://dd.eionet.europa.eu/vocabulary/biodiversity/eunishabitats/A5.36)
- `measurementUnitID`: null because habitat types are unitless.

Please consult [Duncan et al. (2021)](https://www.emodnet-seabedhabitats.eu/resources/documents-and-outreach/#h3298bcd0a15741a8a0ac1c8b4576f7c5) for more details, including:
- how to handle a single event with multiple habitat measurements
- recommended vocabularies and terms for common habitat classification systems
- example eMoF table 

##### When to use Event Core

* When the dataset contains abiotic measurements, or other biological measurements which are related to an entire sample (not a single specimen)
* When specific details are known about how a biological sample was taken and processed. These details can be expressed using the eMoF and the newly developed [Q01 vocabulary](https://www.bodc.ac.uk/resources/vocabularies/vocabulary_search/Q01/).

Event Core should be used in combination with the Occurrence Extension and the eMoF.

##### When to use Occurrence Core

* No information on how the data was sampled or samples were processed.
* No abiotic measurements are taken or provided
* Biological measurements are made on individual specimens (each specimen is a single occurrence record)
* This is often the case for museum collections, citations of occurrences from literature, individual sightings.

Datasets formatted in Occurrence Core can use the eMoF Extension for biotic measurements or facts.

##### Recommended reading

* [De Pooter et al. 2017](https://bdj.pensoft.net/articles.php?id=10989). Toward a new data standard for combined marine biological and environmental datasets - expanding OBIS beyond species occurrences. Biodiversity Data Journal 5: e10989. hdl.handle.net/10.3897/BDJ.5.e10989
* [Duncan et al. (2021)](https://www.emodnet-seabedhabitats.eu/resources/documents-and-outreach/#h3298bcd0a15741a8a0ac1c8b4576f7c5). A standard approach to structuring classified habitat data using the Darwin Core Extended Measurement or Fact Extension. EMODnet report.

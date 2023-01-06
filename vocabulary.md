## Choosing Vocabularies for your dataset

### Match your data with DwC vocabulary 

### How to correctly map eMoF terms to preferred BODC vocabulary
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


### Requesting new vocabulary terms

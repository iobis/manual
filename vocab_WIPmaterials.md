# Vocabulary training materials

*These materials I developed, but require review by the Vocab Task team before becoming public so I've moved them to this page*
*When finalized, this material can be moved to the vocabulary page*

1. First identify what property is being measured. Is it an abundance, temperature measurement, length, concentration?
2. Determine if the measurement is statistically derived - is it a mean, a minimum, maximum, variation?
3. What are the units of the measurement?
4. What is the object of interest?
  a. For most measurements documented in OBIS, this will be “biological entity specified elsewhere” (*not* a specific species), a sub-group ([S13](https://vocab.nerc.ac.uk/search_nvs/S13/)) or a sub-component ([S12](https://vocab.nerc.ac.uk/search_nvs/S12/)). However it could be a chemical ([S27](https://vocab.nerc.ac.uk/search_nvs/S27/)) or physical object or a physical phenomenon (S18-S20). Sometimes the environmental  matrix itself is the object of interest (e.g. pH of water body, atmospheric temperature).
5. What is the relationship of the object to the environmental matrix? Is it per unit weight, unit volume, in, etc.?
6. What is the environmental matrix? Is there a sub-component of the matrix? This is a vitally important element in order to resolve ambiguity.
  a.  E.g. Was the measurement taken from the sediment, from the water? Was a filter used? If the sample was filtered, the type and size is additional information that should be captured in the matrix definition. [S22](https://vocab.nerc.ac.uk/search_nvs/S22/) or [S24](https://vocab.nerc.ac.uk/search_nvs/S24/) contain the concepts for filtered samples.
7. What method was used to obtain the measurement? This is different from the sampling methods as mentioned in Step 5. This element refers to any methods applied after the measurement was taken such as sample preparation ([S03](https://vocab.nerc.ac.uk/search_nvs/S03/)), analysis ([S04](https://vocab.nerc.ac.uk/search_nvs/S04/)), or data processing ([S05](https://vocab.nerc.ac.uk/search_nvs/S05/)). A good example would be the validation and standardization of chlorophyll-a concentration measurements.

##### Common P01 Vocabularies (under construction)

We have provided a list of commonly used measurementTypes and associated P01 codes. However, it is extremely important to note the following before selecting a code:

> **WARNING:**
> **DO NOT USE A VOCABULARY CODE UNLESS YOU ARE CERTAIN IT MATCHES YOUR DATA**

In some cases there are multiple potential P01 codes associated with a measurementType. Be sure to choose carefully. It is better to leave the field blank and return to it later than to use an incorrect vocabulary.

|measurementType | Object of interest | suggested measurementTypeID P01 code(s) |
|---------- |-------------|---------- |
| sex | Biological entity specified elsewhere | <http://vocab.nerc.ac.uk/collection/P01/current/ENTSEX01/> |
| Life stage | Biological entity specified elsewhere | <http://vocab.nerc.ac.uk/collection/P01/current/LSTAGE01/> |
| Length | Biological entity specified elsewhere | [list](https://vocab.nerc.ac.uk/search_nvs/P01/?searchstr=length%20%25entity%20specified%25&options=identifier,preflabel,altlabel,status_accepted&rbaddfilter=inc&searchstr2=) |
| Water temperature |  | <http://vocab.nerc.ac.uk/collection/P01/current/TEMPPR01/> OR see [list](http://vocab.nerc.ac.uk/search_nvs/P01/?searchstr=%25temperature%25water%25&options=identifier,preflabel,altlabel,status_accepted&rbaddfilter=inc&searchstr2=) |
| Salinity |  | <http://vocab.nerc.ac.uk/collection/P01/current/TEMPPR01/>  OR see [list](http://vocab.nerc.ac.uk/search_nvs/P01/?searchstr=%25salinity%25water%25&options=identifier,preflabel,altlabel,status_accepted&rbaddfilter=inc&searchstr2=) for specific methods |
| Length of sample track | Sampling track | <http://vocab.nerc.ac.uk/collection/P01/current/LENTRACK/> |

For OBIS sampling instruments and methods attributes, see the Q01 collection:

* Vocabulary: [http://vocab.nerc.ac.uk/collection/Q01/current/](http://vocab.nerc.ac.uk/collection/Q01/current/)
* Search: [https://www.bodc.ac.uk/resources/vocabularies/vocabulary_search/Q01/](https://www.bodc.ac.uk/resources/vocabularies/vocabulary_search/Q01/)
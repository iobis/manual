# Data Formatting

Formatting data can be challenging. This section of the manual deals with how to format data for OBIS. 

## Dataset structure
#### When to use Event Core

* When the dataset contains abiotic measurements, or other biological measurements which are related to an entire sample (not a single specimen)
* When specific details are known about how a biological sample was taken and processed. These details can be expressed using the eMoF and the newly developed [Q01 vocabulary](https://www.bodc.ac.uk/resources/vocabularies/vocabulary_search/Q01/).

Event Core should be used in combination with the Occurrence Extension and the eMoF.

#### When to use Occurrence Core

* No information on how the data was sampled or samples were processed.
* No abiotic measurements are taken or provided
* Biological measurements are made on individual specimens (each specimen is a single occurrence record)
* This is often the case for museum collections, citations of occurrences from literature, individual sightings.

Datasets formatted in Occurrence Core can use the eMoF Extension for biotic measurements or facts.


## Extensions accepted by OBIS







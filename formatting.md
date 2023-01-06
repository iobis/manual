# Data Formatting

(PAGE UNDER DEVELOPMENT)

Formatting data is hard! This topic will help you format data for OBIS. 
This is all placeholder text to make sure my branch is working.

## Darwin Core Term Checklist for OBIS

For your convenience, we have created a [checklist](https://docs.google.com/spreadsheets/d/1kLc2HZDWf2lpkmQfwyXNkxJdXSth8CTA/edit?usp=sharing&ouid=109350792326616218070&rtpof=true&sd=true) of all the Darwin Core terms relevant for OBIS data providers. You can reference this list to quickly see which terms are required by OBIS, which file (Event, Occurrence, eMoF, DNA) they belong in, and which Darwin Core class it relates to.

Note that when you publish the dataset into the IPT, if you use a term not on this list it will be an unmapped field and will **not** be published alongside your data.

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







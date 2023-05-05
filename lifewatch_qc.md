### Geographic and data format quality control

These Data validation and QC services are available on the LifeWatch portal at [http://www.lifewatch.be/data-services](http://www.lifewatch.be/data-services).

#### Geographical service

This service allows to upload a file and to plot the listed coordinates on a map. Using this web service does not require knowledge of GIS. This service allows a visual check of the available locations and makes it possible to easily identify points on land or outside the scope or study area. Geographic data are essential for OBIS and the experience is that a lot of these data is incomplete or contains errors. A visual check of the position of the sampling locations is thus a simple way of filtering out obvious errors and improving the data quality. Latitude and longitude need to be in WGS84, decimal degrees. This format is also necessary for the OBIS Schema and for uploading the dataset to IPT (Darwin Core).

#### OBIS data format validation

This is the most extensive check currently available and is available for data that are structured according to the OBIS Schema. This validation service checks the following items:

* Are all mandatory fields completed, what are the missing fields?
* Are the coordinates in the correct format (decimal degrees, taking into account the minimum and maximum possible values)?
* Are the sampling points on land or in water?
* Is the information in the date-fields valid (e.g. month between 1-12)?
* Can the taxon name be matched with WoRMS?

This tool undertakes several actions simultaneously. In a first step, this data service allows you to map your own column headers to the field names used in the OBIS Schema. When you then run the format validation service, the following actions are performed:

* A check of the mandatory fields of the OBIS Scheme. If mandatory fields would be missing, these will be listed separately, so you can complete them. Without these fields, the dataset cannot be accepted by the OBIS node.
* A listing of all the optional fields of the OBIS Scheme that are available in your file.
* Validation of the content of a number of fields:
* Latitude & longitude:
  * Are the values inside the world limit? (yes/no);
  * Are the values different from zero? (yes/no);
  * Are the values situated in the marine environment (sea/ocean) (=prerequisite of a marine dataset)? (yes/no)
* Date-related fields:
  * Do the year-month-day fields form a valid date? (yes/no)
  * Do the start- and end-date fields form a valid date? (yes/no)
* Scientific name:
  * Is the scientific name available in WoRMS? (yes/no)
  * When yes:
    * Indication whether taxon is marine or not
    * Indication whether taxon name is valid or not
    * Indication of the taxonomic rank

After matching with WoRMS, the report gives a brief overview containing:

* the number of exact matches
* the number of fuzzy (=non-exact) matches
* the number of non-matches
* the number of errors that might have occurred during matching

For each of the above steps, the result report lists the number of records that passes the check. The tool also makes a ‘grand total’ of these results, indicating if the quality of record is sufficient to be imported into OBIS, taking into account the results of the above mentioned checks.

If the file contains fields that do not match the OBIS schema, these are also listed. Fields that cannot be mapped to the OBIS schema will not be uploaded in OBIS.

After this data format check, a number of columns are added to the originally uploaded file, where the results of each step are listed. Each check is basically a yes/no question, which is translated to a 1 (yes) or 0 (no) value in the results file and is thus easy to interpret.

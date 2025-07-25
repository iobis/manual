## Measurement Data QC

We encourage checking the measurement data recorded in the (e)MoF for quality control and ensuring correctly mapped vocabulary. To facilitate this, a MEASUREMENT TYPES dataset report is available on dataset landing pages that have such data, it is located near the bottom of the individual dataset pages (see screenshots below).

The measurementType report is derived from this MoF statistics report <https://r.obis.org/mof/> and this active filtering MoF tool <https://mof.obis.org/>.

<div class="callbox-caution caution">

**Important note:** the [MoF filtering tool](https://mof.obis.org/) should **NOT** be used as a resource for mapping vocabularies to measurements and parameters! It is a tool designed to assist node managers in finding any incorrect mappings within their datasets. For assistance with mapping vocabularies, see the [vocabulary section](vocabulary#map-emof-measurement-identifiers-to-preferred-bodc-vocabulary.html) of this Manual.
</div>

To locate datasets that may have possible `measurementTypeID` issues, use the MoF Statistics page: <https://r.obis.org/mof/>. This contains the list of datasets for each OBIS Node currently using `measurementType`, `measurementValue`, `measurementUnit` with counts and percentage missing for their associated ID(s). Things we want to clean up when looking at measurement data includes:

- Populating empty `measurementTypeID` fields
- If the same measurementType (with the **same meaning/purpose**) is using multiple measurementTypeIDs, these should be fixed to a single, preferred NERC P01 vocabulary code (or other machine-readable vocabulary code)

### Using MoF Tools to check quality in measurement data {.unlisted .unnumbered}

To use the two MoF tools to QC measurement data, first navigate to the [MoF Statistics Report](https://r.obis.org/mof/). Select a node from the list and select a dataset that displays a high percentage of missing ID(s). Then, scroll down to the MEASUREMENT TYPE report. For example, we selected OBIS USA:

<img src="images/mofreports/usa1.png" class="img-responsive img-responsive-70"/>

<img src="images/mofreports/usa2.png" class="img-responsive img-responsive-70"/>

Then we selected the dataset titled "[Florida Keys Reef Visual Census 1994](https://obis.org/dataset/2f6a4224-c273-4cad-bd53-db81f1fbd251)", and scrolled down to MEASUREMENT TYPES section. We can see this dataset has 3 measurements: Number of fish observed during time period, fish length, and underwater visbility. Note that no measurementTypeID was provided for any of these measurements, so unfortunately we cannot be certain if, for example, fish length refers to fork length, total length, standard length, or something else. This is why it is always important to try to include a machine-readable `measurementTypeID`!

![ ](images/mofreports/floridakeys.png)

Perhaps we are interested in other datasets that have also used these measurements. To find other datasets we will use the active MoF filtering tool <https://mof.obis.org>, sort measurementType alphabetically (click column header) and then scroll to measurementType(s) of interest. The list is quite long so it may take some time to load.

<img src="images/mofreports/locate.png" class="img-responsive"/>

To look at a specific measurementType, click the number of records in the last column. We will look at “Number of species observed during time period”. We can see that all datasets using this measurement are from OBIS USA.

<img src="images/mofreports/speciesobserved.png" class="img-responsive"/>

For a second example, let's look at the measurementType “fish length”. On the main MoF viewer page, scroll down to find the measurement. We see that there are two records (at the time of our search) for "fish length", one missing an ID and the other using a vocabulary from the S06 collection. Recall this is not the preferred vocabulary collecion for measurementType - it should be a vocabulary code from the P01 collection when obtained from the NERC Vocabulary Server (see [vocabulary page](vocabulary.html#populate-measurementtypeid)).

![ ](images/mofreports/fishlength.png)

While scrolling through this report, you may notice something you would like to further research. Reminder that you can click the record count value to see a list of datasets and associated node(s) using a particular measurementType/ID. **NOTE: Currently, report does not indicate CORRECT use!**

<img src="images/mofreports/notcorrect.png" class="img-responsive"/>

To see the definition of a measurementTypeID, click its link in the second column. This is important because it could show a different label and definition compared to the (variety of) measurementType provided. For example if we click the link for "observed weight", <https://vocab.nerc.ac.uk/collection/P01/current/OWETBM01/>, we see that the definition is for the wet weight biomass. We may have to investigate the datasets to confirm this is being correctly used.

<img src="images/mofreports/label.png" class="img-responsive"/>

To see which datasets are using a specific measurementType + ID combination, click the records count in the last column. You can see that different datasets have used the same P01 code but have recorded the measurementType differently - one as "observed individual count" the other "ObservedIndividualCount". This is a good example of how using standard vocabulary IDs can help us more easily aggregate similar data.

<img src="images/mofreports/observed1.png" class="img-responsive"/>
<img src="images/mofreports/observed2.png" class="img-responsive"/>

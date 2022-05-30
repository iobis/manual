---
title: How To Use MoF Report and Tool
shorttitle: How To Use MoF Report and Tool
layout: page
lang: en
identifier: mofreports
breadcrumbs: manual
---

# How To Use MoF Report and Tool

A MEASUREMENT TYPES dataset report has been added regarding currently used measurementType and associated measurementTypeID(s), located near the bottom of the individual dataset pages (if measurementType in use for the dataset).

This new dataset report was derived from this MoF statistics report <a href="https://r.obis.org/mof/" target="_blank">https://r.obis.org/mof/</a> and this active filtering MoF tool <a href="https://mof.obis.org/" target="_blank">https://mof.obis.org/</a>. 

To more easily locate the datasets within your node that may have possible measurementType ID issues, use the MoF Statistics page: <a href="https://r.obis.org/mof/" target="_blank">https://r.obis.org/mof/</a>.  This contains the list of Nodes currently using measurementType/measurementValue/measurementUnit with counts and percentage missing for the associated ID(s).

If there is a node in that list that you are interested in locating, searching for and possibly fixing MoF issues, select the Node from the list, then select a dataset (displaying a high percentage of missing ID(s)), and scroll down to the MEASUREMENT TYPE report

Example, selected OBIS USA, 

<img src="../images/mofreports/usa1.png" class="img-responsive img-responsive-70"/>

<img src="../images/mofreports/usa2.png" class="img-responsive img-responsive-70"/>

then selected Florida Keys Reef Visual Census 1994, and scrolled down to MEASUREMENT TYPES section:

<img src="../images/mofreports/floridakeys.png" class="img-responsive"/>

To locate other datasets using these MEASUREMENT TYPES, use this active filtering MoF tool <a href="https://mof.obis.org/" target="_blank">https://mof.obis.org/</a>, sort by measurementType (click column header) and scroll to measurementType(s) of interest

<img src="../images/mofreports/locate.png" class="img-responsive"/>

For MEASUREMENT TYPE “Number of species observed during time period” has only one entry, which is missing associated ID.  To see which datasets are using the listed measurementType, measurementTypeID combination, click on the number of records which is the last column. 

All are from OBIS USA.

<img src="../images/mofreports/speciesobserved.png" class="img-responsive"/>

For MEASUREMENT TYPE “fish length” …  To see which datasets are using this also listed measurementType, measurementTypeID combination, click on the number of records which is the last column. 

There are two records for fish length, one missing an ID and the other using S06, which may not be the preferred ID for this measurementType:

<img src="../images/mofreports/fishlength.png" class="img-responsive"/>

Also, while scrolling through this report,  you may notice something you would like to further research, click the record count value to see a list of datasets and associated node(s) using this noted type/ID.  NOTE: Current USE does not indicate CORRECT use:

<img src="../images/mofreports/notcorrect.png" class="img-responsive"/>

To see BODC label for the provided ID, click the Find button, second last column:

<img src="../images/mofreports/label.png" class="img-responsive"/>

This is showing a different label from the (variety of) measurementType provided.

To see which datasets are using a specific measurementType / ID combination, click the records count, last column:

<img src="../images/mofreports/observed1.png" class="img-responsive"/>
<img src="../images/mofreports/observed2.png" class="img-responsive"/>


Things you are looking to clean up:

- If measurementTypeID is empty this should be updated.
- If the same measurementType (with same meaning/purpose) is using multiple measurementTypeIDs, these should be fixed to a single, preferred BODC vocab value.

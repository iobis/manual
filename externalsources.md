---
title: External data sources
shorttitle: External sources
layout: page
lang: en
identifier: externalsources
breadcrumbs: manual
---

<h2>External data sources</h2>
<h3>Taxonomy</h3>

<div class="row">
    <div class="col-md-3"><img src="/images/WoRMS_logo_blue.png" class="img-responsive"></div>
    <div class="col-md-9">
    OBIS uses the <a href="http://marinespecies.org/" target="_blank">World Register of Marine Species</a> (WoRMS) as its taxonomic backbone. This means that the scientific names in datasets provided to OBIS are matched with WoRMS either by using the WoRMS webservices or by using the WoRMS LSID provided in the dataset. Scientific names which are marked as synonyms in WoRMS are linked to the currently accepted name.
    </div>
</div>

<h3>Geography</h3>

<div class="row">
    <div class="col-md-3">
    <img src="/images/marineregions_logo.png" class="img-responsive"><br/>
    <img src="/images/mgel_logo_2.png" class="img-responsive">
    </div>
    <div class="col-md-9">
    OBIS uses geospatial data (EEZ, IHO and Marine World Heritage Site shapes) from <a href="http://marineregions.org/" target="_blank">Marine Regions</a>. IHO geometries are used to create basin geometries, which are then intersected with EEZs in order to calculate basin specific country statistics. IHO and EEZ shapes arealso used to create ABNJ geometries. A 20 km inland buffer is added to EEZ shapes to correct for coastline inaccuracies. The Ecologically or Biologically Significant Areas (EBSA) shapes were provided by the <a href="https://mgel.env.duke.edu/" target="_blank">Duke University Marine geospatial Ecology Lab</a>.
    </div>
</div>

<h3>Conservation status</h3>

<div class="row">
    <div class="col-md-3">
    <img src="/images/iucn_logo.png" style="width: 50%;" class="img-responsive">
    </div>
    <div class="col-md-9">
    The conservation status of a species on the OBIS taxon pages is based on the <a href="http://www.iucnredlist.org/" target="_blank">IUCN Red List</a>.
    </div>
</div>

<h3>Invasiveness</h3>

<div class="row">
    <div class="col-md-3">
    <img src="/images/iucn_logo.png" style="width: 50%;" class="img-responsive">
    </div>
    <div class="col-md-9">
    The <a href="http://www.iucngisd.org/gisd/" target="_blank">IUCN Global Invasive Species Database</a> is used to label species as invasive on the OBIS taxon pages.
    </div>
</div>

<h3>Harmful micro algae</h3>

<div class="row">
    <div class="col-md-3"><img src="/images/WoRMS_logo_blue.png" class="img-responsive"></div>
    <div class="col-md-9">
    The <a href="http://www.marinespecies.org/hab/" target="_blank">IOC-UNESCO Taxonomic Reference List of Harmful Micro Algae</a> is used to label species as a harmful micro algae on the OBIS taxon pages.
    </div>
</div>

<h3>Environmental data</h3>

<div class="row">
    <div class="col-md-3"><img src="/images/noaa_logo.png" style="width: 70%;" class="img-responsive"></div>
    <div class="col-md-9">
    Environmental ranges for taxa are determined by matching species occurrences with environmental parameters from the <a href="https://www.nodc.noaa.gov/OC5/indprod.html" target="_blank">World Ocean Atlas</a>.
    </div>
</div>


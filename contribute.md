---
title: Contribute data
shorttitle: Contribute data
layout: page
lang: en
identifier: contributetoobis
breadcrumbs: manual
---

<a class="anchor" name="become"></a>

## Become a data provider or an OBIS node

OBIS accepts data from any organization, consortium, project or individual who wants to contribute data. OBIS Data Sources are the authors, editors, and/or organisations that have published one or more datasets through OBIS. They are the owners or custodians of the data, not OBIS! However, OBIS only harvests data from recognized OBIS nodes. If you own data or have the right to share data with OBIS, you can contact the [OBIS secretariat or one of the OBIS nodes](https://obis.org/contact/). Your organization or programme can also become an OBIS node:

* [Instructions for OBIS nodes](../nodes)

<a class="anchor" name="standards"></a>

## Biodiversity data standards

From the very beginning, OBIS has championed the use international standards for biogeographic data. Without agreement on the application of standards and protocols, OBIS would not have been able to build a large central database. OBIS uses the following standards:

* [Darwin Core](../darwincore)
* [Ecological Metadata Language](../eml)
* [Darwin Core Archive and dataset structure](../dataformat)

<a class="anchor" name="publication"></a>

## Data publication and sharing

OBIS nodes can accept any data files from its data sources or data providers, and they publish these data on their OBIS nodes IPT, which are harvested by central OBIS. The Integrated Publishing Toolkit (IPT) is developed and maintained by the Global Biodiversity Information Facility (GBIF). GBIF maintains an [IPT manual](https://github.com/gbif/ipt/wiki/IPT2ManualNotes.wiki). See here for specific OBIS instructions:

* [IPT](../ipt)

<a class="anchor" name="qc"></a>

## Data quality control

OBIS ignores records that do not meet a number of standards. For example, all species names need to be matched against an authoritative taxonomic register, such as the World Register of Marine Species. In addition, quality is checked against the OBIS required fields as well as against any impossible values. OBIS checks, rejects and reports the data quality back to the OBIS nodes, but never change records. The OBIS tier 2 nodes are responsible for the data quality and communicate errors back to the data providers. A number of QC tools are developed to help data providers and OBIS nodes:

* [QC tool for species names](../namematching)
* [QC tool for geography and data format](../lifewatchqc)

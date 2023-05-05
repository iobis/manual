## OBIS Data Life Cycle

<img align="right" src="images/OBISdataLifeCycle.png" class="img-responsive" display: inline-block/>

The basic data life cycle for contributions to OBIS can be broken down into six step-by-step phases:

1. Data structure
2. Data formatting
3. Quality control
4. Publishing
5. Data access (downloading)
6. Data visualization

Each of these phases are outlined in this manual and are composed of a number of steps which are covered in the relevant sections.

After you have decided on your [data structure](formatting.html) and have moved to the Data Formatting stage, you must first [match](name_matching.html) the taxa in your dataset to a registered list. In formatting your dataset you will ensure the [required OBIS terms](checklist.html) and [identifiers](identifiers.html) are mapped correctly to your data fields and records.

Depending on your data structure, you will then format data into a [DwC-A](data_format.html) format with the appropriate Core table ([Event](format_event.html) or [Occurrence](format_occurrence.html)) with any applicable extension tables. Any biotic or abiotic measurements will be moved into the [extendedMeasurementOrFact table](link #22+). Before proceeding to the [publishing](data_publication.html) stage, there are a number of [quality control](dataquality.html) steps to complete.

Once your data has been published, you and others can [access](access.html) datasets through various avenues and it becomes part of OBIS’ global database!

This may seem like a daunting process at first glance, but this manual will walk you through each step, and the OBIS community is full of [helpful resources](gethelp.html). Throughout the manual you will find tutorials and tools to guide you from start to finish through the OBIS data life cycle.

<br clear="left"/>

#### Who is responsible for each phase?

Phases 1 through 3 are the responsibilities of the data provider, while Phases 3 and 4 are shared between the data provider and the node manager. Data users are involved in Phases 5 and 6.

The OBIS Secretariat is responsible for data processing and harvesting published resources.

## Biodiversity data standards

From the very beginning, OBIS has championed the use of international standards for biogeographic data. Without agreement on the application of standards and protocols, OBIS would not have been able to build a large central database. OBIS uses the following standards:

* [Darwin Core](darwin_core.html)
* [Ecological Metadata Language](eml.html)
* [Darwin Core Archive and dataset structure](data_format.html)

The following pages of this manual review each of these in turn. We show you how to apply these standards to format your data in the [Data Formatting](formatting.html) section.

We also provide some [dataset examples](examples.html) for your reference.

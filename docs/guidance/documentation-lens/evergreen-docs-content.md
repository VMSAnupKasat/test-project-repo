# evergreen-docs.yml Content

This page describes the contents of hte Evergreen Delivery IP document lens metadata. It is used to ensure documentation stored as part of the repo can be indexed or processed by the external tools. Note that to simplify the overall approach some of the metadata values have default values allowing them to be omitted as part of the metadata file.

## Data Model

Data model for the `evergreen-docs.yml` is a **single** object of type **Document Lens Metadata Object**

- lens: `docs`
- metadata version (current version `0.1`)
- documentation source location (default `/docs`)
- location of the published documentation
- doc-generator overrides (optional because default assumes docfx being used):
  - type of the static site generator engine used (the only supported version is `docfx`); can be used in future to specify alternative tools for static site generation
  - location of hte main configuration file of the static site generator (default `/docfx.json`)

Example:

```yml
- lens: docs
  version: 0.1
  source: /docs
  published: http://aka.ms/evergreenip
  doc-generator-type: docfx
  doc-generator-config: /docfx.json
```

## Document Lens Metadata Object

Property Name | Required or Optional | Type              | Description
------------- | -------------------- | ----------------- | ---------------------------
*lens*        | required             | string            | Must be `docs`
*version*     | required             | string            | Must be `0.1` currently
*source*      | optional             | string            | Absolute path to location of the source of the documentation. Default value (if not supplied) is `/docs`
*published*   | optional             | url               | Valid global URL pointing to the location where the documentation is published. If not supplied, it is assumed that documentation is not being published.
*doc-generator-type* | optional      | string            | Defines type of static site generator used. Must be `docfx` in current implementation. Default value `docfx`
*doc-generator-config* | optional    | string            | Defines where the main configuration file of generator is stored (used by remote generator). Default value `/docfx.json`

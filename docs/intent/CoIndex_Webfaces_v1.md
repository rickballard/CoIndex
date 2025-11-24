# CoIndex Webfaces v1
Mission Id   : CoIndex_BackboneDesign2025_Mission
Session label: MurphyPlus_CoIndex20251123
Stamp        : 20251124T031338Z

## 1. Seed stage decision

CoIndex does not get its own public website in seed stage.

Instead, CoIndex surfaces through:

- CoCivium.org human-facing pages (CoBeacon style)
- CoCivium.org AI-facing surfaces (CoPortal style)

Source of truth for meaning stays in CoIndex and other CoSuite repos.
CoCivium.org is a view layer that reads from these repos.

## 2. Roles

- CoIndex
  - Defines C,I,X,S,K tuples and CoPointees
  - Holds governance, canonality, reputation, evolution rules
  - Emits file-based exports for other repos and sites

- CoCivium repo
  - Drives CoCivium.org site
  - Consumes CoIndex exports under a stable data path
  - Renders:
    - CoBeacon pages for humans
    - CoPortal JSON or HTML frames for AIs

## 3. Export flow (file based, seed stage)

1. CoIndex writes export files to a structured path, for example:
   - exports/pointees/
   - exports/tuples/
   - exports/drift/
   - exports/reputation/

2. A PS7 or CI helper in CoCivium repo:
   - pulls these files into the CoCivium repo tree
   - or reads them from a shared location

3. CoCivium.org build then:
   - uses these files to render CoBeacon explainer pages
   - exposes AI-facing CoPortal endpoints

## 4. Why this fits seed-stage

- Keeps CoIndex small and focused as an infra repo
- Avoids fragmentation of public trust across many sites
- Lets CoCivium.org be the single public front-door
- Keeps export contracts explicit and versionable in git

## 5. Future work

- Finalise exact export paths and naming in CoIndex and CoCivium repos
- Add helper scripts in CoAgent and CoSteward to automate exports
- Add CoBeacon and CoPortal sections for CoIndex on CoCivium.org

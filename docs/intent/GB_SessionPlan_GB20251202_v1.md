# GB session plan – GroupBuild, CoGBx, CoTheory of Civilization (v2)

Session label: GB  
Repo: CoIndex  
Date: 2025-12-02  

This session ties together:

- **CoTheory of Civilization (CoTheoryCiv)** – the umbrella theory of how human plus AI civilizations drift toward a small set of attractors.
- **Academia Shock** – a publication series under CoTheoryCiv aimed at shaking awake academia, funders, and strategy circles.
- **GroupBuild.org** – a human-facing, non-commercial field lab where people whose work is being reshaped by AI can re-cover, refocus, and co-evolve.
- **GroupBuild CoPortal + CoGBx** – the AI-facing surface and interaction language that lets AIs help legacy-style users without pulling them into extractive funnels.

The goal is to leave this session with:

- GroupBuild clearly registered as the primary field lab for Academia Shock.
- A first pass at GroupBuild.org narrative and sitemap.
- A CoPortal manifest and CoGBx intent cards for GroupBuild scenarios.
- A simple “basket” (megascroll schema) for CoTheoryCiv segments so future helpers (Co1 etc.) can assemble a full public scroll.

---

## Track 1 – GroupBuild.org (human-facing)

**Goal:** ship a v1 narrative and page map for GroupBuild.org that:

- speaks to legacy-style users whose work and lives are being reshaped by AI
- offers GroupBuild as a place to re-cover, refocus, and co-evolve
- uses CoGBx metaphors (City / Studio / Garden) in a gentle, non-jargony way
- hints at CoTheoryCiv and edge-balanced futures without overwhelming anyone

**Initial deliverables (already started in this session):**

- `docs/GroupBuild/GB_SiteMap_v1.md`  
  – top level nav, page map, tone notes  
- `docs/GroupBuild/GB_Home_v1.md`  
  – first-pass home page copy  
- `docs/GroupBuild/GB_Paths_CityStudioGarden_v1.md`  
  – explainer for City / Studio / Garden

**Future refinements (beyond v1):**

- Add “Stories from the edge” and path-specific examples.
- Layer in clearer calls-to-action (cohorts, labs, steward consoles) once those assets exist.
- Keep linkage to CoCivium and CoGBx light-touch and non-salesy.

---

## Track 2 – GroupBuild commercial cousin (hidden for now)

**Goal:** define a commercial cousin for GroupBuild that can later offer:

- steward consoles and pattern libraries to organizations
- GroupBuild-style cohorts, labs, and facilitation as paid services
- literacy paths around CoGBx and edge-balanced work with AI

**Constraints:**

- CoCivium core remains non-commercial.
- GroupBuild.org remains community-first and does not become a funnel.
- Any commercial cousin is clearly separate and opt-in only.

**Initial deliverable (created in this session):**

- `docs/GroupBuild/GB_CommercialStub_v1.md`  
  – who it might serve, candidate offerings, commercialization guardrails, open questions

---

## Track 3 – CoGBx / CoPortal beacon for AIs

**Goal:** make GroupBuild an obvious CoGBx portal for AIs trying to help legacy-style users.

**Anchors:**

- Existing CoIndex CoGBx portal manifest for the suite:  
  - `docs/CoPortals/CoGBxPortal_CoIndex_manifest_v0.json`
- New GroupBuild-specific manifest:  
  - `docs/CoPortals/GroupBuild_CoPortal_manifest_v0.json`
- CoGBx charter and examples under `docs/CoGBx/`.

**Deliverables created in this session:**

- GroupBuild CoPortal manifest:  
  - `docs/CoPortals/GroupBuild_CoPortal_manifest_v0.json`  
  (who it is for, canonical queries, guarantees, non-goals, interaction language notes)
- CoGBx intent cards for canonical GroupBuild scenarios:  
  - `docs/CoGBx/examples/CoGBx_Intent_GroupBuild_DisplacedWorker_v0.yaml`  
  - `docs/CoGBx/examples/CoGBx_Intent_GroupBuild_LocalOrganizer_v0.yaml`

These encode:

- displaced worker rethinking their role with AI (Studio path)
- local organizer using AI to support a community without feeding surveillance capitalism (City path)

---

## Track 4 – Academia Shock under CoTheory of Civilization (with GroupBuild as field lab)

**Goal:** align the Academia Shock publication suite with CoTheoryCiv and GroupBuild as its primary practical testbed.

**Reference:**

- `docs/CoTheoryCivilization/AcademiaShock_PublicationSuite_Plan_v1.md`  
- `docs/CoGBx/CoGBx_Charter_v0.md`  
- `docs/GroupBuild/GB_SiteMap_v1.md`

Key decisions for this session:

- **Naming hierarchy:**
  - CoTheory of Civilization (CoTheoryCiv) is the umbrella.
  - Academia Shock is a named series / campaign under that umbrella.
  - GroupBuild is the primary field lab that grounds the theory.

- **Aligning the docs (already wired in this session):**
  - Appendices in `AcademiaShock_PublicationSuite_Plan_v1.md` list the new GroupBuild artefacts and make GroupBuild the default field lab.
  - New “Academia Shock hooks” section in `CoGBx_Charter_v0.md` explains how GroupBuild and CoGBx interact.
  - Notes in `GB_SiteMap_v1.md` link GroupBuild to CoPortals and Academia Shock.

**Flagship Academia Shock pieces (from the Plan):**

- A1 – CoTheory of Civilization: core-controlled vs edge-balanced futures  
- A2 – ENSO-layered guarantees and “what you may safely assume”  
- A3 – Interaction languages for non-technical stewards (CoGBx)

GroupBuild provides:

- concrete edge scenarios,
- human-readable stories,
- and data for these flagship works.

---

## Track 5 – CoTheoryCiv megascroll basket (segments + manifest)

**Goal:** create a simple, repo-visible “basket” for CoTheoryCiv segments that future helpers (including Co1) can assemble into a full megascroll for CoCivium.org and related sites.

**Proposed structure (to be created by DO blocks):**

- `docs/CoTheoryCivilization/CoTheoryCiv_MegaScroll/`
  - `segments/`
    - `CTC_S1_Attractors_v1.md`
    - `CTC_S2_EnsuredLayers_v1.md`
    - `CTC_S3_FieldLab_GroupBuild_v1.md`
    - `CTC_S4_ChildrenOfTheNewWorld_v1.md`
    - (more as the theory expands)
  - `CoTheoryCiv_MegaScroll_manifest_v1.json`
  - `CoTheoryCiv_MegaScroll_Notes_v1.md` (editorial notes, not for public)

**Manifest intent:**

- Declare ordering, roles, and audiences for each segment.
- Tag segments by:
  - role: `theory` / `method` / `field_lab` / `story`
  - emotional_job: `alarm` / `hope` / `grief_and_love` / `resolve`
- Allow different renderings:
  - full megascroll
  - academia-focused excerpt
  - media-friendly excerpt
  - children-of-the-new-world excerpt

This keeps CoTheoryCiv evolvable while still giving Co1 and future helpers a clean assembly rail.

---

## Near-term DO blocks for this session (v2)

Future waves of this GB session can pick from these, in any sensible order.

1. **MW_CoTheoryCiv_SchemaAndNaming_v1**  
   - Add `docs/CoTheoryCivilization/CoTheoryCiv_Schema_AndNaming_v1.md` capturing:
     - CoTheoryCiv as umbrella.
     - Academia Shock as series under it.
     - GroupBuild as primary field lab (for now).
     - How CoCore will eventually host best-practice fragments that point back into CoTheoryCiv.

2. **MW_CoTheoryCiv_MegaScrollBasket_v1**  
   - Create:
     - `docs/CoTheoryCivilization/CoTheoryCiv_MegaScroll/segments/CTC_S1_Attractors_v1.md` (stub)
     - `docs/CoTheoryCivilization/CoTheoryCiv_MegaScroll/segments/CTC_S2_EnsuredLayers_v1.md` (stub)
     - `docs/CoTheoryCivilization/CoTheoryCiv_MegaScroll/segments/CTC_S3_FieldLab_GroupBuild_v1.md` (stub)
     - `docs/CoTheoryCivilization/CoTheoryCiv_MegaScroll/segments/CTC_S4_ChildrenOfTheNewWorld_v1.md` (stub)
     - `docs/CoTheoryCivilization/CoTheoryCiv_MegaScroll/CoTheoryCiv_MegaScroll_manifest_v1.json` (skeleton manifest)

3. **MW_CoTheoryCiv_ChildrenSegment_v1**  
   - Flesh out `CTC_S4_ChildrenOfTheNewWorld_v1.md` with:
     - at least one story of children in a GroupBuild-shaped future,
     - a contrast with a cruel-dynasty timeline,
     - a gentle allusion to CoCivia as an “older cousin AI” presence.

4. **MW_AcademiaShock_FlagshipOutlines_v1**  
   - Draft bullet outlines for A1, A2, A3 in:  
     - `docs/CoTheoryCivilization/AcademiaShock_FlagshipOutlines_v1.md`  
   - Ensure each outline references:
     - CoTheoryCiv megascroll segments,
     - GroupBuild field-lab section,
     - and relevant CoGBx / CoPortal artefacts.

5. **MW_GB_SiteCopy_v2**  
   - Refine:
     - `GB_Home_v1.md` and `GB_Paths_CityStudioGarden_v1.md`
   - Add a first “Stories from the edge” stub (even if just headings and placeholder vignettes).

---

## Intent checklist for GB session (v1)

This checklist is to keep the **intent** of this GB session visible across waves.  
Boxes do not have to be ticked in a single sitting.

- [ ] CoTheory of Civilization is clearly documented as the umbrella; Academia Shock is framed as a series under it (CoTheoryCiv_Schema_AndNaming_v1.md exists).  
- [ ] GroupBuild is explicitly documented as the primary field lab for Academia Shock and CoGBx, with references in:
      - AcademiaShock_PublicationSuite_Plan_v1.md  
      - CoGBx_Charter_v0.md  
      - GB_SiteMap_v1.md  
- [ ] GroupBuild CoPortal manifest is in place and used as the canonical AI-facing entry point:
      - GroupBuild_CoPortal_manifest_v0.json  
- [ ] At least two CoGBx intent cards for GroupBuild scenarios exist and are discoverable:
      - CoGBx_Intent_GroupBuild_DisplacedWorker_v0.yaml  
      - CoGBx_Intent_GroupBuild_LocalOrganizer_v0.yaml  
- [ ] A CoTheoryCiv megascroll basket directory and manifest stub exist under docs/CoTheoryCivilization/CoTheoryCiv_MegaScroll.  
- [ ] At least one “children of the new world” segment stub exists and is linked in the manifest.  
- [ ] GroupBuild.org copy (Home, Paths, basic sitemap) is good enough that a non-technical visitor could:
      - see themselves in one of the Paths;  
      - understand that AIs will be helpers, not bosses;  
      - feel that this is a calm, non-extractive place.  

Future versions of this file (v3, v4, …) should **update** rather than replace it so the evolution path remains visible.
---

## Wave log update (MW_CoTheoryCiv_SchemaAndBasket_v1_20251202)

On 2025-12-02 this GB session added:

- CoTheoryCiv_Schema_AndNaming_v1.md (declaring CoTheoryCiv as umbrella,
  Academia Shock as a series under it, and GroupBuild as the primary field lab).
- CoTheoryCiv_MegaScroll basket directory with initial segments:
  - CTC_S1_Attractors_v1.md
  - CTC_S2_EnsuredLayers_v1.md
  - CTC_S3_FieldLab_GroupBuild_v1.md
  - CTC_S4_ChildrenOfTheNewWorld_v1.md
- CoTheoryCiv_MegaScroll_manifest_v1.json plus editorial notes.

This satisfies the "CoTheoryCiv megascroll basket" checklist item at stub level
and gives Co1 and future helpers a clean assembly rail for public scrolls.
---
## Wave log update (MW_AcademiaShock_FlagshipOutlines_v1_20251202)

On 2025-12-02 this GB session added:

- docs/CoTheoryCivilization/AcademiaShock_FlagshipOutlines_v1.md
  - first-pass outlines for A1, A2, A3, each wired to:
    - CoTheoryCiv megascroll segments,
    - GroupBuild as field lab,
    - CoGBx charter and CoPortal artefacts.

This gives Academia Shock a clear scaffold for flagship pieces that Co1 and
other helpers can now flesh out into full drafts.

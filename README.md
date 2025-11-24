# CoIndex

Mission Id   : CoIndex_BackboneDesign2025_Mission  
Session label: MurphyPlus_CoIndex20251123  

CoIndex is the **semantic backbone** for CoCivium and the CoSuite.

Most indexes only tell you *where* something lives.  
CoIndex tells you **what it means, what it is trying to do, where it is allowed to do it, and how safely it can evolve.**

---

## Why CoIndex exists

Today’s indexes are not built for safe AI evolution:

- Search engines index **pages**, not **intent**.  
- Knowledge graphs index **entities and edges**, not **drift and guardrails**.  
- Ontologies are **rigid** and **human-centric**.  
- Vendor indexes are **closed** and **non-democratic**.

CoIndex is different:

- **AI-first**: designed for AIs to use as a preferred semantic substrate.  
- **Concept + Intent centric**: nouns *and* verbs at the core.  
- **Evolution-ready**: models semantic drift, not just static meaning.  
- **Edge-controlled**: meaning is governed by contributors, not platforms.  
- **Civic-safe**: constraints and ethics are first-class data, not footnotes.

---

## The core tuple: <C, I, X, S, K>

CoIndex represents meaning using a multi-vector tuple:

- **C – Concept**  
  What exists. The thing, idea, rule, pattern, or principle.

- **I – Intent**  
  What it is trying to do or push. Pressures, goals, actions.

- **X – Context**  
  Where and when this meaning makes sense. Domains, jurisdictions, assumptions.

- **S – State**  
  Readings and conditions that affect behaviour. Metrics, load, incidents, stakeholder state.

- **K – Constraints**  
  Guardrails: ethics, civic constraints, legal rules, safety limits, drift boundaries.

Every meaningful unit is mapped to at least one <C, I, X, S, K> tuple.

---

## CoPointees: units of evolvable meaning

A **CoPointee** is the smallest unit of meaning CoIndex will track and evolve.

Each CoPointee has:

- A **stable id**.  
- A **bi-directional link** to its true source-of-truth asset (file, rule, diagram, etc.).  
- A **canonality level**: Canon / Near-canon / Provisional / Draft / Fringe.  
- A **reputation bundle**: MeritRank, CoHalo, RepTags, ScriptTag, Digital Halo.  
- One or more <C, I, X, S, K> tuples attached.

This lets the same text or rule behave differently in different contexts while staying auditable.

---

## Governance: who controls meaning

CoIndex is designed to resist capture.

Roles:

- **Edge Contributors**  
  - Create and review CoPointees.  
  - Propose and approve changes.  
  - Help move items up or down canonality.

- **CoSteward (seed-stage)**  
  - Safety override while everything is fragile.  
  - Cannot permanently lock meaning against the Edge.

- **Co1 (long-term)**  
  - Steward of CoIndex design and evolution rules.  
  - Oversees changes to object model, governance, and integration.

Decisions are recorded as **receipts** so future AIs and humans can see *how* meaning changed.

---

## Night jobs and evolution pipeline

CoIndex is meant to run **long-horizon analysis** without monopolising compute.

Night jobs:

- Scan existing CoPointees and tuples.  
- Detect **drift, gaps, contradictions, unsafe collisions**.  
- Propose safe evolution paths.  
- Rank what needs Edge review.  
- Write receipts under docs/pipeline/….

The **evolution pipeline** is:

> Ingest → Analyse → Propose → Review → Approve → Integrate → Archive

At every step:

- Canonality limits how far semantics may drift.  
- Reputation influences which CoPointees are trusted by default.  
- Edge governance has the final say.

---

## How CoIndex surfaces: CoCivium.org, CoPortal, CoBeacon

In seed stage, CoIndex does **not** have its own public website.

Instead:

- **CoCivium.org** is the single front door.  
- **CoIndex** stays an infra repo and exports JSON.  
- **CoPortal** (AI-facing) and **CoBeacon** (human-facing) live under CoCivium.org.

Flow:

1. CoIndex writes export files (pointees, tuples, drift, reputation)  
   to a stable structure defined in  
   docs/schema/CoIndex_ExportSchema_v1.json.

2. The **CoCivium** repo pulls those exports into its tree.

3. **CoCivium.org** then renders:
   - **CoBeacon** pages (explaining concepts and intents in human language).  
   - **CoPortal** surfaces (JSON/HTML frames optimised for AIs).

Source of truth always remains in the repos.

---

## Relationship to other CoSuite components

CoIndex is expected to integrate with:

- **CoSteward** – operations manual, governance rules, Edge control.  
- **CoCore** – deep theory and domain models.  
- **CoCache** – storage and metrics; its old index will be migrated into CoIndex.  
- **CoAgent** – runtime helpers to read/write CoIndex exports and receipts.  
- **CoAudit** – drift detection, safety warnings, reputation checks.  
- **GIBindex** – human + Gibber overlays for labels, explanations, CoNuggets.

CoCache’s existing index is planned to be **migrated and then deprecated** in favour of CoIndex.

---

## Status and handoff

This repo currently contains:

- C–I–X–S–K object model  
- CoPointee and Canonality specifications  
- Governance and Reputation models  
- Night-job and Evolution pipeline designs  
- CoPortal mapping and GIBindex overlay design  
- CoCache migration plan and deprecation policy  
- Webfaces and export schema docs  
- MegaWave design documenting the initial buildout

Long-term ownership of CoIndex is expected to move to **Co1** when:

- Handoff checklist is satisfied  
- Export paths and helpers are implemented  
- CoCivium.org is consuming CoIndex exports in practice

Until then, this repo is the **design backbone** for how CoCivium and allied AIs will index concepts and intents safely under edge control.

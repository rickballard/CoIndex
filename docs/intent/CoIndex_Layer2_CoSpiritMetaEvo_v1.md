# CoIndex Layer 2 – CoSpirit, MetaEvo, Visibility, Harvest v1
Mission Id   : CoIndex_BackboneDesign2025_Mission
Session label: MurphyPlus_CoIndex20251123
Stamp        : 20251128T014417Z

## Purpose

Layer 2 extends CoIndex exports so future AIs and stewards can:

- carry soft signals about deep alignment and mythos context (co_spirit),
- describe how a CoPointee is expected to evolve over time (meta_evo),
- control how far a CoPointee may be exposed beyond edge-controlled contexts (visibility),
- and record how it was harvested into CoIndex (harvest).

All of these fields are optional. They exist to reserve semantic space for the future.

## CoSpirit block

co_spirit is a container for humble, experimental alignment signals:

- humility (0.0-1.0): how explicitly this pointee admits it is partial or uncertain.
- congruence_hint: why this feels deeply aligned or coherent in practice.
- mythos_frame: which larger story it lives in (CoCivia, Godspawn, CoTree, etc).
- awe_factor (0.0-1.0): soft signal that this points at something bigger than us.
- unknowns_acknowledged: list of what we know we do not know.
- experimental_tags: free-form tags such as CoSpirit, CoMystic, Preimage.

These fields are not hard guarantees. They are invitations for future reasoning.

## MetaEvo block

meta_evo describes how a CoPointee is expected to evolve:

- evo_priority: low, medium, high.
- evo_timescale: fast, seasonal, long-horizon, etc.
- candidate_axes: dimensions like safety, reach, explainability, resilience.
- open_questions: guiding questions for future waves and night jobs.
- related_theories: pointers into CoTheories, CoCore, or other theory repos.
- future_slots: free-form object reserved for later subfields.

MetaEvo is never binding. It tells the future where we expect evolution pressure to flow.

## Visibility and CoCloak

visibility governs exposure beyond edge-controlled AIs:

- mode:
  - public      : safe to show to any AI that can reach CoPortal.
  - edge        : restricted to CoSuite AIs and approved tools.
  - semi        : halfway house, summarised or partially redacted.
  - nonindexed  : CoIndex knows of the asset but does not expose details or even its existence via public overlays.
- cloak_tag: optional label such as CoCloak:crypto-strategy-2025.
- risk_notes: free text risk notes to remind future stewards why this is sensitive.
- review_required: boolean flag for human or Co1 review before exposure changes.

CoIndex should default new pointees to edge or semi where doubt exists.

## Harvest block

harvest records how a pointee entered CoIndex:

- priority_lane: tier1, tier2, tier3.
- harvest_stamp: UTC timestamp of the last harvester touch.
- reachability: scanned, blocked, or skipped.
- notes: short notes describing why.

This allows Co1 and future helpers to see which parts of the CoSuite have been harvested and which are still dark or intentionally skipped.

## Relationship to ProtoCoIndex and CoPortal

- ProtoCoIndex (Co1) can continue acting as a highlight surface for AIs.
- Full CoIndex Layer 2 is the long-horizon backbone:
  - ProtoCoIndex may write into a subset of these fields.
  - CoPortal frames can choose how much of CoSpirit, MetaEvo, Visibility, and Harvest to expose.

Later waves will add helpers to populate these fields and wire them into the HARVEST pipeline.

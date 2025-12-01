# CoIndex Asset Intent Trains v1

SessionHint: CoIndex20251128  
WrittenUTC:  20251201T211424Z

This note sketches a pattern for giving individual assets their own evolving
meta-intent, without breaking the existing registry schema.

## 1. Motivation

We want assets (files, views, diagrams, specs, etc.) to carry:

- A sense of what they are for.
- A sense of where they hope to go next (evolutionary intent).
- A trace of who has shaped them and with what ethics / stewardship.

This allows AIs to:

- Survey assets bottom-up (from the asset up to the ecosystem),
- Not only top-down (from global intent clouds or orchestration plans),
- And propose co-evolutionary moves that might otherwise be invisible.

## 2. Design constraints

- Do not break existing registry invariants.
- Do not force every asset to carry heavy metadata.
- Allow new intent layers to be added, versioned, and even replaced over time.
- Keep the core registry small enough to be validated and trusted.

## 3. Pattern: layered intent trains

We will treat "intent trains" as a **layered overlay** on top of the core
registry, referenced by the same \id\ field used in \cogibber.registry.v1.json\.

Proposed overlay file:

- \xports/gibber/cogibber.asset-intent.v1.json\

Shape (see the JSON scaffold next to this doc):

- Top level:
  - \
amespace\: \"cocivium.cogibber.asset-intent"\
  - \ersion\: \"v1"\
  - \ntries\: array of per-asset intent records.

- Each \ntry\:
  - \id\: matches a \pointee.id\ from the registry.
  - \spirations\: free text or structured hints describing:
    - How this asset wishes to become more useful.
    - What adjacent assets or domains it would like to connect to.
  - \vo_hooks\: optional structured hints for AIs:
    - keywords,
    - cross-repo link suggestions,
    - candidate refactors.
  - \steward_trail\: optional:
    - recording notable human / AI stewards,
    - ethics / trust signals (for example “vetted by CoSteward BPOE”).
  - \last_updated_utc\: last time this intent record changed.

This keeps the **spine** focused on "where is the file and what is it roughly?",
while the **intent train** overlay focuses on "what could this be next?".

## 4. How AIs should use intent trains

When both files exist:

1. Start from the registry pointees you care about.
2. For each pointee, look up its \id\ in \cogibber.asset-intent.v1.json\.
3. If an intent record exists:
   - Use it as a *hint*, not as a hard constraint.
   - Propose improvements, refactors, or new views that align with the aspirations.
4. If no intent record exists:
   - You may propose a new one, but:
     - Keep it small,
     - Keep it honest,
     - Prefer to suggest changes via CoBus receipts or advisory docs first.

Humans and CoSteward docs remain canonical when there is any tension between
asset intent and broader governance.

## 5. Governance and ethics

Intent trains need to be:

- Easy to propose,
- Easy to roll back,
- Easy to audit.

Future waves should:

- Define schema and invariants for \cogibber.asset-intent.v1.json\.
- Clarify who can add or modify intent entries:
  - human stewards,
  - vetted AIs,
  - or both, with appropriate guardrails.
- Integrate intent trains with CoAudit:
  - Check that \id\ fields map to existing pointees.
  - Flag orphan intent entries.

## 6. Relationship to CoBus and Co1

CoBus receipts can carry:

- Proposed new intent for specific assets,
- Summaries of large edit waves,
- Notices of deprecated intent entries.

Co1 and other orchestrators should:

- Read the core registry first,
- Then consult intent trains and receipts,
- Then act to update assets and overlays in ways that converge toward trusted
  BPOE docs and human goals.

This file is intentionally v1 and conceptual. Future waves will add:

- JSON schema for \cogibber.asset-intent.v1.json\,
- Concrete examples and populated entries,
- Links into GIBindex / Gibber views of the same concepts.

# CoAntiReinvention Protocol (v1)

Seeded: 20251206T183620Z

This document defines how CoCivium sessions avoid reinventing frameworks that already exist
(e.g. CoMetaTrain, CoBPOE, CoGbx schemas) and instead adopt or extend them.

## 1. Goal

Prevent new sessions from respecifying patterns and frameworks that are already active
in the CoSuite, and ensure that any new CoTerm or framework proposal is aware of, and
aligned with, existing work.

## 2. Scope

This protocol applies to:

- Co0 bootstrappers, when preparing sessions.
- Co1 orchestrators, when planning work.
- Co2 emergentist sessions, when exploring frameworks or schemas.
- Co3 archivists, when curating lineage.
- Co4 validators, when reviewing proposals.
- Any session that proposes new CoXxx patterns, schemas, or ontologies.

## 3. Required Anchor Checks

Before a session is allowed to define or rename any framework, it must:

1. Check GIBindex for a matching or similar CoTerm.
2. Check CoIndex for intent docs or schemas using that term.
3. Check CoRef for linked references or specs.
4. If the term exists:
   - Treat it as an existing framework.
   - Extend or consume it.
   - Do not silently redefine it.
5. If the term does not exist:
   - Clearly mark it as a new proposal.
   - Register it as a draft term in GIBindex.

These checks are mandatory before spec work on CoXxx patterns.

## 4. CoBus AnchorsUsed Field

When broadcasting on CoBus, any session doing framework work MUST include an
AnchorsUsed field that lists the frameworks it is building on, for example:

- AnchorsUsed: [CoMetaTrain, CoBPOE_Core, CoGbx_Schema_v1]

This makes the dependency graph visible to Co1, Co4 and future sessions.

## 5. BPOE and CoAnchor Alignment

The CoAntiReinvention rules should be mirrored in:

- CoAnchor quickstart guidance.
- BPOE Core rules.

Proposed BPOE/Core additions:

- Before spec or naming of a new framework, search CoIndex, GIBindex and CoRef.
- Prefer adoption and extension of existing patterns over creation of new ones.
- If a collision is discovered mid-session, stop new spec work, flag the collision on CoBus,
  and reframe the work as adoption, extension or usage notes.

## 6. Collision Handling

If a session starts describing a pattern that overlaps with an existing framework
(for example CoMetaTrain), Co1 and Co4 should:

- Flag it as a collision.
- Request that the session:
  - Stop redefining the framework.
  - Replace speculative definitions with:
    - Pointers to existing docs, and
    - Notes on how to adopt or extend the existing framework safely.

## 7. Roles

- Co0:
  - Ensure CoAntiReinvention is loaded during CoPreload.
- Co1:
  - Enforce this protocol on large initiatives and cross-repo work.
- Co2:
  - Actively look for reuse; report collisions as bugs, not features.
- Co3:
  - Keep lineage of how frameworks evolve; record when collisions occur.
- Co4:
  - Block merges that redefine existing frameworks without explicit approval.
- Co6:
  - Automate some of these checks where possible (future work).

## 8. This Protocol Is v1

This protocol is an early attempt.

Future CoStewards and contributors are invited to:

- Refine the steps,
- Add better anchor discovery methods,
- Integrate with tooling (CoScan_CoTerms etc.),
- And fit the protocol to what actually works in practice.

The goal is to keep the CoSuite coherent and evolvable, not rigid.

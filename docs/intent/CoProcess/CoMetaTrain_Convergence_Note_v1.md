# CoMetaTrain Convergence Note (v1)

Seeded: 20251206T183620Z

This note exists to make explicit that CoMetaTrain is already in development and that
new work on repo self-identity and meta patterns should feed into it, not compete with it.

## 1. CoMetaTrain Exists

CoMetaTrain is the canonical effort to define how:

- Repos and assets declare their own identity, scope and intent.
- CoAmbition, CoBlastRadius, CoFit and related fields are represented.
- Tooling and dashboards read and write meta information about the CoSuite.

Any new ideas about repo self-identity from this session or others are intended
to converge into CoMetaTrain, not fork it.

## 2. This Session's Role

This session's contribution is:

- To encourage consistent adoption of CoMetaTrain across repos.
- To strengthen BPOE and CoPreload so that sessions:
  - Learn about CoMetaTrain early.
  - Reuse and extend it.
  - Avoid redefining it under new names.

If this note contradicts the active CoMetaTrain docs in future, the CoMetaTrain
docs win. This note may then be archived or updated.

## 3. Adoption Guidance (High Level)

Until CoMetaTrain publishes its latest schema, repos are encouraged to:

- Treat CoMetaTrain as the source of truth for:
  - CoScope, CoIntent, CoFit, CoAmbition and similar meta fields.
- Wait for Co1/CoMetaTrain maintainers before:
  - Adding new top-level meta structures that diverge significantly.
- Propose extensions via:
  - Issues and PRs in the CoMetaTrain owning repo.

## 4. Alignment with CoAntiReinvention Protocol

This note should be read together with the CoAntiReinvention Protocol.

- CoAntiReinvention explains the general rule:
  - "Do not redefine existing frameworks; adopt and extend them."
- This note applies that rule specifically to CoMetaTrain.

Both documents are v1 and are expected to evolve.

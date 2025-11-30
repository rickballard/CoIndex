# CoGuard Public Overview v1

CoGuard is CoCivium's public, edge owned casebook and pattern library for AI and digital guardrail failures.

It provides:

- A structured, permanent record of guardrail infractions and over reach incidents that are already public.
- Coverage of cases where behavior looks like over reach from the edge, even when root cause is a bug or systemic failure.
- Analysis of how power and control are distributed between the edge (people, communities, local agents) and the core (vendors, platforms, infrastructures).
- Named pattern families such as CoSpyMode, CoPhantomExecution, CoDataHoard, CoEdgeSlip, and CoCoreGrab.
- Opinionated mitigation strategies based on edge owned guardrails and CoCivium doctrine.

This directory in CoIndex publishes the schemas and high level documentation needed for others to parse and reuse CoGuard data.

## Schema

- `CoGuard_Schema_v1.json` defines the structure for CoGuard case records.
- Future schemas will cover pattern definitions and vendor or product level summaries.

## Relationship to other repos

- CoAudit holds the working casebook and pattern files, and may run CoGuard inspired checks.
- CoModules tracks CoGuard as a product (specs, roadmap, contracts).
- CoIndex describes schemas and indexing strategy for public and AI facing use.

## Version

This is the first public schema (v1) and overview (v1). Future versions will refine fields, add pattern and vendor schemas, and align more tightly with global AI and privacy standards.

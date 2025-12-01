# CoIndex Registry Health Invariants v1

This file describes non negotiable health rules for CoIndex's CoGibber registry artefacts.

## 1. Files in scope

- exports/gibber/cogibber.registry.v1.json
- Any future registry fragments under exports/gibber/.
- Any future schemas under schemas/.

## 2. Structural invariants

- Registry JSON must parse.
- Registry must pass json schema validation against:
  - schemas/cogibber.registry.v1.schema.json
- The fields namespace, version, generated_utc, source_repo, pointees must exist.

## 3. Pointee invariants (v1)

For each registry entry (pointee):

- id: non empty string.
- repo: non empty string.
- path: non empty string.
- category: optional but recommended.
- tags: optional array of strings.
- sensitivity: optional string, expected values to converge over time:
  - public
  - internal
  - hp57
  - sensitive
- sha256 and size_bytes are optional for v1, but required for high value assets once CoAudit rails are ready.

No manual edits should violate these rules. Any PR that introduces violations must be rejected or fixed.

## 4. Process invariants

- Registry mutations should happen only through:
  - scripted waves (PS7 helpers or equivalent),
  - or carefully reviewed Co1 / CoAudit tooling.
- Direct manual edits for emergency fixes must:
  - include a clear explanation in the PR description,
  - be followed by a scripted clean up wave later.

## 5. Audit and watchdogs

- CoAudit is expected to run independent checks on:
  - schema validation,
  - repo:path existence,
  - optional hash comparison for high value assets.
- Results should be recorded via CoBus receipts under a dedicated watchdog scope.

If this document conflicts with CoSteward BPOE docs in future, BPOE is canonical.

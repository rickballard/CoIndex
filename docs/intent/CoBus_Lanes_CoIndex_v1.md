# CoBus lanes for CoIndex (v1)

role:
  - document how CoIndex participates in CoBus / CoGibber / CoGbx v1
  - pair with exports/gibber/cogibber.registry.v1.json

## 1. Lanes used by CoIndex

- `docs/intent/cobus/inbox/`
  - incoming CoBus messages addressed to CoIndex
- `docs/intent/cobus/receipts/YYYYMMDD/`
  - receipts for waves that mutate CoIndex
- `docs/intent/advice/notes/YYYYMMDD/CoSync_*.md`
  - human-facing CoSync notes related to CoIndex

CoIndex waves SHOULD:

- read inbox + recent CoSync notes before mutating,
- emit receipts after mutating shared scopes.

## 2. Relation to CoGibber registry

- CoIndex maintains a CoGibber-aware registry:
  - `exports/pointees/CoIndex_CoPortal_RegistrySeed_v1.json`
  - `schema_version: CoGibberRegistry_v1`
  - `gibber.namespace: cogibber.registry`

- CoBus envelope vocab:
  - `exports/gibber/cogibber.registry.v1.json`

Future waves MAY add:

- `cogibber.cobus` vocab files,
- CoBus adapters and CoGbx views for bus activity.

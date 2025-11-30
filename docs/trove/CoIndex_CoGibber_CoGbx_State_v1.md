# CoIndex – CoGibber / CoGbx state v1

SessionLabel: CoIndex20251128
WrittenUTC: 20251130T074626Z
Role: document current CoIndex view of the CoBus / CoGibber / CoGbx stack and pointers.

## 1. Canonical stack (per Co1)

- CoBus  = wire / transport / routing
- CoGibber = language / envelope / vocab
- CoGbx = boxes / registries / views

Short phrase for diagrams:

> CoBus (wire) -> CoGibber (language) -> CoGbx (views)

CoBus is the superset; CoSync is treated as a legacy name for a subset of CoBus traffic.
New work should use CoBus / CoGibber / CoGbx naming.

## 2. CoIndex artefacts (v1)

Public, repo rooted at CoIndex.

- Registry seed (CoGibberRegistry_v1)
  - exports/pointees/CoIndex_CoPortal_RegistrySeed_v1.json
  - schema_version: CoGibberRegistry_v1
  - pointees: codream.hp.rails, cocachelocal.pointers, pilot.academia-shock, hp57.advicebomb.index.v1

- Machine registry view
  - exports/gibber/cogibber.registry.v1.json
  - namespace: cogibber.registry
  - stub: gib://cogibber/registry?v=1

- CoGbx human view over the registry
  - exports/views/CoPortal_View_v1.md
  - title line already renamed to CoGbx / CoGibber phrasing
  - groups pointees by lens, category, id

- CoBus lanes for CoIndex (see full details in the lanes doc)
  - docs/intent/CoBus_Lanes_CoIndex_v1.md

Related CoSteward docs that define shared rails:

- CoSteward/docs/bpoe/CoBus_BPOE_v1.md
- CoSteward/docs/trove/CoGibber_Registry_Vocab_v1.md
- CoSteward/docs/ops/COBUS_STATUS.md  (global bus status)
- CoSteward/scripts/Scan-CoSyncBus.ps1

## 3. CoBus habits for CoIndex sessions (BPOE v1 view)

This section summarizes how CoIndex sessions are expected to behave
with respect to CoBus, based on CoBus_BPOE_v1 and the registry vocab doc.

### 3.1 Envelopes

Required fields for CoBus v1 messages:

- from_session_label
- to_role
- wave_id
- intent
- scope
- sensitivity
- ts_utc

Optional but recommended:

- to_session_label
- priority
- hp57_tier
- not_before_utc
- required_before_utc
- notes

Delivery semantics:

- at least once
- idempotent per wave_id

### 3.2 When to read lanes

For CoIndex, CoBus lanes are defined in docs/intent/CoBus_Lanes_CoIndex_v1.md.
Using the CoBus_BPOE_v1 view, CoIndex sessions SHOULD:

- At session startup, for each repo they expect to touch:
  - read the declared CoBus inbox lanes for that repo.

- Before any DO-block that mutates shared scopes:
  - re-read CoBus inbox for that repo.
  - treat guardrail and hp57-priority waves as binding for this session.

- At session shutdown, if the wave mutated shared scopes:
  - re-read lanes once more
  - ensure receipts exist for any mutating waves from this session.

For long waves, sessions SHOULD periodically re-read CoBus lanes
for repos they are actively mutating.

### 3.3 When to write receipts

Any DO-block that mutates shared scopes in CoIndex MUST emit a CoBus receipt:

- location:
  - docs/intent/cobus/receipts/YYYYMMDD/CoBus_<wave_id>.json

- minimal payload:
  - from_session_label
  - to_role
  - wave_id
  - intent
  - scope
  - sensitivity
  - ts_utc
  - status  (success, soft-fail, hard-fail)

Optional fields:

- priority
- hp57_tier
- notes
- any repo specific fields that do not conflict with the base envelope.

Receipts are the primary audit trail for orchestration.
Lock files under docs/intent/cobus/locks/ are reserved for v1.1 and later.

### 3.4 Roles and priorities

Relevant roles for CoIndex:

- co1-orchestrator
- guardrail-session
- product-session
- support-session
- advice-session

Yield rules (v1 view):

- Waves tagged with priority = guardrail or priority = hp57 SHOULD be treated
  as higher priority than normal or experiment waves on the same scope.
- Co1 MAY send CoBus messages that CoIndex sessions MUST obey when:
  - to_role = product-session or guardrail-session
  - and priority in { guardrail, hp57 }.

### 3.5 Terminology

- Preferred stack:
  - CoBus (wire) -> CoGibber (language) -> CoGbx (views).

- CoPortal is a deprecated term.
  - It may still appear in file names and historical notes.
  - New docs and interfaces MUST use CoGibber and CoGbx naming instead.

## 4. Next waves for CoIndex

Short list of next waves that future CoIndex sessions or Co1 may pick up:

- Registry expansion:
  - Add more pointees for CoSteward, CoCivium, CoAgent, CoArena and other CoSuite repos.
  - Distinguish public vs hp57-adjacent pointees clearly.

- Helper scripts:
  - Read CoBus lanes for CoIndex and emit a small status markdown.
  - Helper to create CoBus receipts from a wave envelope.

- Views:
  - Per-repo CoGbx views similar to the CoIndex one.
  - A cross-repo CoGbx aggregate view for common lenses and tags.

- HP57 housekeeping:
  - Move hp57-only backups out of repos when safe.
  - Confirm that hp57.advicebomb.index.v1 pointee remains hp57-private.

This trove file is the local CoIndex view of CoBus / CoGibber / CoGbx v1.
On conflicts, CoSteward BPOE docs remain the primary source of truth.

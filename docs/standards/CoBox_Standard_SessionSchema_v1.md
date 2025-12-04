# CoBox Session Schema (v1, human-readable)

## 1. Purpose

This document defines the core entities and fields that make up a
CoBox-compliant AI session record.

It is written for humans first (architects, stewards, implementers) and
will be complemented by a machine-readable schema (JSON/YAML) in later
versions.

## 2. High-level view

A CoBox session record captures:

- who interacted (pseudonymized when appropriate),
- which AI(s) were involved,
- what context and tools were available,
- what was said and done (turn-by-turn), and
- what deliverables were produced, with CoTense states.

## 3. Core entities

### 3.1 Session

Represents one contiguous interaction or logical session.

Suggested fields:

- `session_id` – unique identifier within the CoBox deployment.
- `session_label` – human-readable label (for example, "CoBox").
- `created_at`, `updated_at` – timestamps.
- `vendor` – optional; AI vendor or platform name.
- `model` – optional; model identifier (for example, gpt-5.1).
- `channel` – web, API, IDE, CLI, etc.
- `initiator_id` – pseudonymous user identifier.
- `tags` – free-form labels (project, client, risk level).

### 3.2 Actor

Represents parties involved in the session.

- `actor_id` – unique ID.
- `role` – user, ai, tool, system, observer.
- `display_name` – optional, for UI.
- `org_context` – optional, such as department or team.

### 3.3 Turn

Represents one atomic message or action.

- `turn_id` – unique ID.
- `session_id` – link back to Session.
- `actor_id` – who produced this turn.
- `timestamp`.
- `content_type` – text, code, tool-call, file-reference, etc.
- `content` – main payload, possibly structured.
- `attachments` – references to files, images, or other data.
- `tool_calls` – details of any tools or APIs invoked.
- `policies_triggered` – list of policy checks that fired (if any).

### 3.4 SandboxContext

Describes the "sandbox walls" and inputs available.

- `context_id`.
- `session_id`.
- `visible_history` – which prior turns the AI could see.
- `visible_files` – IDs of files available to the AI (with metadata).
- `tools_available` – tools and permissions the AI had.
- `constraints` – system messages, policy overlays, and limits.

### 3.5 Asset (CoTense-aware deliverable)

Represents a meaningful artifact emerging from the session.

- `asset_id`.
- `session_id`.
- `name` – human-readable name (for example, "CoBox Standard Overview").
- `asset_type` – note, spec, code, checklist, email_draft, etc.
- `co_tense_state` – CoPlanned, CoShaping, CoStaged, CoSaved, CoRetired.
- `version` – simple semantic or numeric version (for example, v1, v2).
- `source_turn_ids` – list of turns that contributed content.
- `summary` – short human-readable description.
- `civar_score` – optional score indicating likely civic/institutional value.
- `external_refs` – optional links to repo paths, tickets, or files.

## 4. CoTense states for assets

Suggested canonical values:

- `CoPlanned` – inferred or requested asset that may not be realized.
- `CoShaping` – asset is being actively drafted or revised.
- `CoStaged` – asset is complete enough to be saved or published; it is
  expected to appear in the next cycle of the user’s own systems.
- `CoSaved` – asset is known to have been committed to a system of record
  (repo, DMS, AdviceBomb, etc.).
- `CoRetired` – asset is no longer active, but remains part of history.

Consumers of the standard may collapse or extend this set, but should
document any deviations.

## 5. Policies and compliance

The schema should support attaching policy information at multiple levels:

- Per-session policy bundles (for example, "org_default", "client_X").
- Per-turn policy checks.
- Per-asset risk labels (for example, low, medium, high).

A separate Compliance and Audit profile can define concrete policy
fields and standard labels.

## 6. Serialization formats

This specification is format-agnostic.

Initial recommended bindings:

- JSON Schema for interoperability with web APIs.
- YAML for human-edited or config-like scenarios.

Future extensions may include Protobuf or other formats as needed.

## 7. Versioning of the schema

- This document is v1 (CoStaged).
- Changes that break compatibility should trigger a major version bump.
- Changes that add optional fields can be treated as minor.

Implementations should include the schema version in each Session record.

## 8. Next steps

- Produce a machine-readable JSON Schema draft.
- Create examples of complete CoBox session records.
- Align field naming with other open standards where feasible.
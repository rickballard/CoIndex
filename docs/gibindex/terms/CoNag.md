# CoNag (v1)

## Human-facing definition

**CoNag** is a gentle, transparent "self-nag" channel for CoSuite assets.

When an asset (helper, workflow, CoPortal, etc.) detects repeated friction, risk, or drift,
it can emit a **CoNag** signal instead of silently suffering. CoNag is the way assets say:
> "I want attention and evolution."

CoNag is:
- **Opt-in and transparent** – every CoNag includes who is nagging, why, and what it wants.
- **Gentle, not spammy** – designed for a small number of well-structured nags, not noisy alerts.
- **Repo-first** – CoNag events are written to markdown/logs and can be indexed by CoIndex / CoAudit.

## Typical triggers

Examples of when an asset might emit CoNag:

- **CoLag**: Repeated `CoLag-OE` or `CoLag-Chat` classifications for the same SessionId/host over time.
- **CoGuard / CoOE sentinels**: Frequent BPOE violations or repeated warnings on the same guardrail.
- **CoPortals / CoBeacons**: High traffic or usage, but low conversion on intended CTAs.

## Expected behavior

When a CoNag is raised:

1. It writes a small, structured log or `.md` record:
   - asset id/name
   - time window and frequency
   - observed pattern (e.g. "CoLag-OE 8 times today on host X1")
   - suggested next steps or evolution asks

2. It optionally surfaces a short, human-facing summary in:
   - CoStatus / CoSteward dashboards
   - CoAudit / CoIndex reports
   - session handoff notes

3. It invites a steward (CoSteward, CoBus, lane owners, etc.) to:
   - review the asset's BPOEs, thresholds, and design docs
   - decide whether to evolve, retire, or leave as-is with reasoning

## Relationship to CoNudge

- **CoNudge**: how *humans* train AIs by repeatedly expressing preferences ("please remember…").
- **CoNag**: how *assets* ask for evolution by repeatedly surfacing patterns and discomfort.

They are complementary:

- CoNudge = human → AI preference reinforcement.
- CoNag   = asset → steward evolution request.

## Pointers / use cases

- **CoLag**:
  - `CoLag_Design_v1.md`
  - `helpers/CoLag/helper.manifest.yml`
  - may raise CoNag when lag patterns persist.
- **CoGuard / CoOE helpers**:
  - may raise CoNag on repeated BPOE violations.
- **GIBindex**:
  - CoNag records are indexable signals for where the ecosystem wants to evolve next.

---

## Transparency Footer

**Term:** CoNag  
**Kind:** GIBindex term / CoWord  

**Intent options:**
- Give CoSuite assets a standard way to ask for attention and evolution.
- Make repeated friction and drift visible rather than silent.

**Ambitions:**
- Prioritise steward attention toward the most "naggy" parts of the system.
- Reduce long-term UX pain by listening to assets that see patterns humans miss.

**Evolutionary pressure vectors / CTAs:**
- Hook more helpers and watchers into CoNag as they mature.
- Aggregate CoNag events in CoIndex / CoAudit dashboards.
- Use CoNag patterns to guide roadmap, BPOEs, and refactors.

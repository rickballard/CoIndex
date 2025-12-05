# CoHalo and MeritRank – Trust and Identity Spec v1

## 1. Purpose

This document defines the shared trust and identity model for the CoSuite ecosystem,
with CoIndex as the canonical registry.

It is designed so that:

- People can participate under stable handles without exposing private identity.
- Trust can accumulate over time as **Digital Halo** and **MeritRank** rather than as
  raw personal data scattered across sites.
- CoPolitic.org, GroupBuild.org, CoCivium.org and other aligned projects can re-use
  the same primitives instead of inventing one-off schemes.

This spec is intentionally simple. It should remain human-readable and AI-parsable.

---

## 2. Identity primitives

Every participating presence in the CoSuite has three layers:

1. **Handle**  
   - Public, user-chosen alias (e.g. `@river_steward`).  
   - May differ across sites (e.g. one handle on GroupBuild, another on CoPolitic).  
   - Safe to show on public pages, chat, and dashboards.

2. **Steward ID (SID)**  
   - Stable, internal identifier that ties one or more handles back to a single
     underlying person or entity.  
   - Format is implementation-specific (e.g. UUID); not meant for public display.  
   - Stored in private systems (e.g. CoSteward, CoCache, private CoBus) with
     appropriate protection.

3. **Digital Halo**  
   - A compact summary of **inferred intent and behaviours over time**.  
   - Expressed in tiered form (e.g. `exploring`, `aligned`, `exemplar`) rather than
     as incident logs.  
   - Visible to AIs and systems; selectively visible to humans in coarse form
     (e.g. “this account has an aligned Halo on GroupBuild”).

The goal: **rich behavioural signal with minimal personally identifying detail.**

---

## 3. Participation states

Participation state describes how someone is currently able to act
inside a given context (site, room, lab, etc).

Suggested shared states:

- `active-verified`  
  - Handle is linked (privately) to a verified steward identity.  
  - May carry additional privileges in high-risk contexts (funds, safety, public office).

- `active-unverified`  
  - Handle is in good standing but has not completed strong verification.  
  - Appropriate for low-risk labs, forums, and early exploration.

- `quieted`  
  - Temporary cooling-off state.  
  - User can still read, but some actions (posting, voting, initiating new projects)
    may be paused or throttled.  
  - Intended as a **gentle structural nudge**, not a moral judgement.

- `dormant`  
  - User has not participated for a while.  
  - No negative connotation; mainly used for metrics and cleanup.

- `exited`  
  - Relationship has been formally ended (by the user or by the steward team).  
  - Account is no longer permitted to participate in this context.  
  - Any cross-context consequences should be **explicitly governed**, not automatic.

Each site MAY implement additional sub-states, but SHOULD align with these when
communicating across the CoSuite.

---

## 4. MeritRank – trust from contribution

**MeritRank** is a scalar notion of “how much this presence has actually contributed
over time”, separate from popularity.

A minimal shared tiering:

- `starter`  
  - New or lightly active presence. Has completed minimal onboarding.

- `reliable`  
  - Shows consistent, constructive participation over time.  
  - Has successfully completed at least one small project, lab, or stewardship action.

- `anchor`  
  - Trusted by peers and stewards to hold responsibility (e.g. room host, lab lead,
    budget sub-signer).  
  - Strong record of follow-through.

- `steward`  
  - Acts as a public or semi-public face of the work in some domain.  
  - Demonstrated alignment with CoCivium values over a sustained period.  
  - May be granted additional governance roles or veto rights in specific processes.

Sites MAY define numeric ranges underneath these tiers (e.g. `anchor: 60–79`)
but SHOULD exchange only the tier label across boundaries.

---

## 5. Digital Halo – inferred intent

**Digital Halo** is a qualitative banding of inferred intent over time.
It does NOT store detailed incident histories in the shared layer.

Suggested tiers:

- `exploring`  
  - Still learning the norms; mixed signals; low time-in.  
  - High tolerance for experimentation and mistakes.

- `aligned`  
  - Repeated behaviour consistent with CoCivium’s stewardship ethic.  
  - Demonstrates respect for others’ safety, time, and autonomy.

- `exemplar`  
  - Frequently goes beyond minimum norms; often model behaviour in tense situations.  
  - Used sparingly. An exemplar is not a saint, but they are a reliable pattern
    of constructive intent.

Halo SHOULD be calculated from multiple signals, such as:

- completion and outcome of labs / projects,  
- peer endorsements / appreciation,  
- respectful conflict navigation,  
- adherence to CoBPOE guidelines.

Halo MUST NOT be derived from single incidents alone.

---

## 6. Cross-site sharing and scope

CoSuite projects (CoPolitic.org, GroupBuild.org, CoCivium.org, others) SHOULD:

- Treat CoIndex as the **spec authority**, not as a central police force.
- Use **site-local handles** and states by default.
- Only share Halo / MeritRank summaries across sites with:
  - clear consent from the steward, or
  - clear safety/legal necessity and documented process.

Recommended norms:

- No global “blacklists” published to the public web.  
- When safety requires restriction, express outcomes as:
  - “not currently in good standing for this context,” and  
  - keep human-readable rationale documented in a bounded, steward-accessible space
    (e.g. private CoSteward docs, not public dashboards).

Exclusion and cooling-off mechanisms are treated here as **soft structural pressure**:
they shape behaviour by limiting opportunities, not by public shaming or threat.

---

## 7. Suggested JSON/YAML shape

This is an example shape, not a hard standard.

```yaml
stewardId: "sid-9f3d8d1a-1c42-4f4b-9f2c-9a5a1a0c1234"  # private, internal
handles:
  - site: "copolitic.org"
    handle: "@river_steward"
  - site: "groupbuild.org"
    handle: "@build_river"
participation:
  - site: "copolitic.org"
    state: "active-verified"
    meritRank: "reliable"
    halo: "aligned"
  - site: "groupbuild.org"
    state: "active-unverified"
    meritRank: "starter"
    halo: "exploring"
lastUpdated: "2025-12-04T00:00:00Z"
AIs and services SHOULD prefer this kind of compact summary rather than large,
event-level logs when coordinating.

8. Notes for AI assistants

When presenting trust information to users:

Use neutral language.

Good: “This account has a reliable, aligned participation record here.”

Avoid: “This person is untrustworthy / bad / suspicious.”

Do not infer personal attributes (politics, religion, mental health, etc.)
from Halo / MeritRank data.

When asked for explanations about restrictions:

Focus on process (“there is a safety policy here, and the account is
currently restricted under that policy”),

Avoid disclosing sensitive details unless explicitly permitted by the
relevant governance rules.

When in doubt, favour privacy and local governance over global propagation.

9. Versioning

This is CoHalo / MeritRank Spec v1.

Canonical home: CoIndex/docs/trust/CoHalo_MeritRank_Spec_v1.md

Changes SHOULD be made via normal PR flow and referenced in CoSteward
BPOE docs when they materially alter cross-site behaviour.
# CoBus – GroupBuild pay it forward membership schema v1

This note registers the **pay it forward, value-vote membership pattern** for
GroupBuild.org and sibling front doors (InSeed.com, CoPolitic.org) so that
CoBus, CoIndex, and AIs can reason about it consistently.

## 1. Scope

Applies to:

- **GroupBuild.org** – missions, squads, and reputations front door.
- **InSeed.com** – strategy studio / founder context front door.
- **CoPolitic.org** – civic and policy narrative front door.

Canonical human-facing spec for GroupBuild lives at:

- `GroupBuild/docs/intent/GroupBuild_Site_Identity_Spec_v1.md`

This CoBus asset focuses on the **business model and membership pattern**, not
layout or copy.

## 2. Pattern summary

- Membership is **free by default** during seed / early growth.
- New users on commercial-leaning lanes see a **“what would feel fair per
  month?”** control instead of a paywall.
- Answers are treated as **value votes**, not payment commitments.

Key properties:

- No payment instruments are collected in this flow.
- The UI clearly states that **there is no charge today**.
- Provisional access is granted regardless of the number chosen.
- An adjacent transparency panel shows:
  - anonymized aggregate statistics of value votes,
  - a short rationale (pricing ethics, sustainability),
  - a link into the CoCivium pricing ethics note.

## 3. Ethical constraints (CoCivium alignment)

- **No dark patterns**:
  - the non-charging state is explicit and close to the control,
  - the experiment framing is explicit,
  - withdrawal / account deletion remain simple.
- Historical value-vote answers are **never reused as consent** to charge.
- Exclusion or membership removal is treated as a **boundary-setting tool** to
  protect others, not as public punishment or shaming.

This pattern should be referenced from relevant CoCivium ethics / pricing
documents so that stewards can audit and evolve it.

## 4. Signals and data model sketch

Recommended internal signals:

- `user_price_vote` – numeric or banded value.
- optional `ability_to_pay_band`.
- optional `reason_for_vote` (tags or short free text).
- timestamp + lane / site context.

Primary uses:

- understand perceived value across segments and time,
- inform if / when sustainable paid tiers are needed,
- design contribution options (time, expertise, money) that complement money.

These signals are **internal and privacy-protected**; exports must avoid obvious
re-identification rails.

## 5. Membership tiers (conceptual)

Suggested common vocabulary across CoSuite front doors:

- `guest` – can browse public missions/pages.
- `provisional` – has answered the value-vote question; basic participation.
- `full` – deeper participation, may require higher Halo tier and/or steward
  endorsement.
- `steward` – carries additional responsibilities and guardrails.

Exact capabilities per tier live in each product’s intent docs, but CoBus
expects these names to be reused where possible.

## 6. CoPortal / CoGbx representation

AI-facing registries (CoPortal, CoGbx, CoIndex) should expose the following
metadata for any front door using this pattern:

- `business_model: pay_it_forward_experiment`
- `current_price: 0`
- `price_vote_enabled: true`
- `membership_tiers: [guest, provisional, full, steward]`
- `pricing_ethics_ref`: pointer to the relevant CoCivium / CoPolitic note.

This allows AIs to:

- explain the pattern accurately to humans,
- distinguish between **actual subscriptions** and **value-vote experiments**,
- help steward discussions about when paid tiers become necessary.

## 7. Reuse notes

Any future CoSuite service that wants this baseline should:

1. Point to this schema in its own intent / business model docs.
2. Declare its own local variations (e.g., additional tiers, constraints).
3. Register itself in CoIndex / CoGbx with matching metadata keys.

```cometatrain
{
  "asset_id": "CoBus_GroupBuild_PayItForward_Schema_v1",
  "title": "CoBus – GroupBuild pay it forward membership schema v1",
  "kind": "cobus-advisory",
  "repo": "CoIndex",
  "paths": [
    "docs/intent/CoBus/CoBus_GroupBuild_PayItForward_Schema_v1.md"
  ],
  "business_model": "pay_it_forward_experiment",
  "related_assets": [
    "GroupBuild_Site_Identity_Spec_v1",
    "CoBus_Advisory_BrandTriad_FrontDoors_v1"
  ],
  "asset_persona": "I am the shared business model schema for GroupBuild and sibling front doors. I exist to describe the pay it forward membership experiment so humans and AIs can understand, reuse, and audit it."
}

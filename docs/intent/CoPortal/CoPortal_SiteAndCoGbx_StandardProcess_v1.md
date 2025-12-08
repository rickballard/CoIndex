# CoPortal & SiteWave Standard – Human-facing sites + CoGbx portals v1

> Purpose: give every CoSuite-aligned site a repeatable, repo-first pattern for  
> building a human front door and a paired, AI-facing CoGbx portal – including  
> stealth-mode, pay-it-forward, feedback, and governance rails.

This standard is meant to be reused by:

- **InSeed.com** (strategy studio front door)
- **GroupBuild.org** (missions, squads, and Digital Halos)
- **CoPolitic.org** (civic/policy lens)
- Future human-facing sites that want a paired CoGbx / CoPortal presence.

It describes the **process**, not any one implementation tech stack.

---

## 1. Naming, structure, and branches

### 1.1 Branch naming

Site + CoGbx work should normally ride on **MW\_ branches**:

- `MW_{Product}_SiteWave_v{N}_{YYYYMMDD}`
- Examples:
  - `MW_GroupBuild_SiteWave_v1_20251208`
  - `MW_InSeed_SiteWave_v2_20260115`
  - `MW_CoPolitic_SiteWave_v1_20260201`

WIP/meta branches can be used for partial work, but anything intended as a
reusable pattern should land through an MW\_ branch and a squash-merge PR.

### 1.2 Repo layout (recommended)

Each product repo (InSeed, GroupBuild, CoPolitic, etc.) should converge on:

- `docs/intent/`
  - `*_Site_Identity_Spec_v1.md`
  - `*_Home_Copy_v1.md`
  - `*_How_It_Works_v1.md`
  - `*_Identity_And_Safety_v1.md`
  - `*_PayItForward_Model_v1.md` (if commercial-leaning)
  - `*_Feedback_And_Transparency_v1.md`
- `site/` or `web/`
  - implementation of the human-facing site
- `cogbx/` or `coportal/`
  - AI-facing views (schemas, JSON/MD exports, CoGbx integration)
- `docs/intent/CoBus/` (in CoIndex)
  - shared business model / membership schemas
- `docs/intent/CoPortal/` (in CoIndex)
  - this standard and future CoPortal patterns

CoIndex remains the **cross-product registry**, with CoBus, CoPortal and
CoHalo/CoTrust specs that sites reference.

---

## 2. Standard SiteWave phases for a new site

This is the **canonical process** for bringing up a new human-facing front door
and its CoGbx sibling.

### Phase 0 – Context and guardrails

- Confirm:
  - product name, repo, and primary audience
  - whether the site is:
    - civic / public-good
    - commercial-leaning
    - hybrid
  - stealth posture:
    - password-gated?
    - navigation disabled except explicit links?
- Align with:
  - CoCivium covenant and identity stance
  - CoBus business model schemas (e.g. pay-it-forward experiment)
  - CoHalo / MeritRank expectations (if reputational)

Outputs:

- short intent note in repo (or in CoIndex)
- decision about pay-it-forward and feedback patterns
- decision about password / sandbox banner (for stealth mode)

---

### Phase 1 – Intent docs (text rails first)

Every new site should have the following **human-readable intent docs**:

1. **Site Identity Spec**

   - name, tagline, positioning
   - what the site is and is not
   - audiences (users, partners, funders, AIs)
   - relationship to CoCivium / CoSuite
   - business model and value exchange

2. **Home page copy**

   - hero (headline, sub-headline)
   - primary, secondary, tertiary CTAs
   - 3–4 sections that explain:
     - why the site exists
     - what users can do
     - what makes it different
   - ecosystem footer:
     - where it fits among InSeed, GroupBuild, CoPolitic, CoCivium, etc.
   - contact and transparency links

3. **How it works**

   - flows:
     - guest → provisional member → deeper participation
   - key objects:
     - missions, squads, projects, offerings, whatever is core
   - roles and tiers:
     - user types, stewards, partners, funders
   - AI-facing behavior:
     - what AIs should be allowed to do, explain, or route

4. **Identity and safety**

   - pseudonymity vs legal identity
   - how Digital Halos / MeritRank interact with the product
   - handling of sensitive missions or data
   - anti-doxing stance
   - export constraints: what CoPortal/CoGbx can expose

5. **Pay-it-forward model** (for commercial-leaning variants)

   - value-vote pattern:
     - “If this ever charged per month, what would feel fair to you?”
   - clear declaration that there is no charge today
   - how responses are used (sustainability, equity, not paywalling)
   - linkage to CoBus schema and CoCivium pricing ethics

6. **Feedback and transparency**

   - feedback channels:
     - on-site forms, email, CoMetaTrain hooks
   - how logs are stored (structured, depersonalized)
   - how coarse redactions work:
     - mask harmful content, but show that redaction occurred
     - allow intentional reveal of raw content where safe
   - where users can read about:
     - moderation policy (if any)
     - safety measures
     - how AIs are involved

These docs live under `docs/intent/` in the product repo and act as the **source
of truth** for future waves, design, and implementation.

---

### Phase 2 – Human-facing site scaffold

A standard SiteWave should:

- create or evolve the `site/` (or `web/`) subtree
- reflect the intent docs in templates and content
- respect **stealth / sandbox** posture where needed

Principles:

- **Stealth mode support**

  - password gate or “academic sandbox” banner as first interaction
  - navigation minimized:
    - direct links to specific pages for review
    - index page listing only what the steward wants visible
  - no external links to CoCivium/CoIndex/stack until explicitly allowed

- **Content-first**

  - home page pulls from `*_Home_Copy_v1.md`
  - “How it works” page pulls from `*_How_It_Works_v1.md`
  - identity/safety page pulls from `*_Identity_And_Safety_v1.md`

- **Footer hooks**

  - CoCTA placeholder (call-to-action for deeper co-evolution)
  - CoMetaTrain reference:
    - e.g. “This site participates in transparent training and improvement.”
  - link to transparency & ethics docs in the repo

Implementation specifics (Next.js, static HTML, etc.) are up to each product,
but SiteWave should always be:

- repo-first
- text-first
- PR-reviewed

---

### Phase 3 – CoGbx / CoPortal AI-facing layer

Each site should have a paired **AI-facing definition**:

- lives in `cogbx/` or `coportal/` in the product repo
- registered in **CoIndex** via:
  - CoPortal docs in `docs/intent/CoPortal/`
  - optional CoBus schemas for business model
  - optional CoGbx seed views / exports

Core metadata fields (recommendation):

- `site_id`
- `site_name`
- `site_url`
- `business_model` (e.g. `pay_it_forward_experiment`, `public_good`, etc.)
- `current_price` (e.g. `0`)
- `price_vote_enabled` (true/false)
- `membership_tiers` (e.g. `[guest, provisional, full, steward]`)
- `identity_mode` (e.g. `pseudonymous_halos`, `mixed`, etc.)
- `halo_integration` (true/false)
- `steward_contact` (mechanism, not person)
- `ethics_refs` (paths to CoCivium / CoPolitic / CoBus docs)
- `stealth_mode` (true/false)
- `exports_public` (true/false, and what)

The **CoGbx representation must not**:

- point directly into CoCivium/CoIndex/CoStack while under stealth, unless:
  - links are to public, non-sensitive assets
  - stewards explicitely approve

---

### Phase 4 – Feedback rails

Standard feedback pattern:

- a simple form or CTA that routes to:
  - structured JSON/CSV logs
  - anonymized + depersonalized
- logs live on repo or in a clearly referenced, steward-controlled store
- redaction policy:

  - harmful or unsuitable content is masked, not erased
  - readers can see that something was redacted
  - reveal of raw entries (if allowed) is gated with explicit UX warnings

- transparency page describes:

  - what is logged
  - how long it is kept
  - how logs may be used for CoMetaTrain
  - how people can request deletion or masking of their own content

This aligns with “no coercion, no corruption, no censorship” by:

- showing that moderation exists
- not pretending content never existed
- giving stewards duty-of-care tools without mob rails

---

### Phase 5 – Mirror layer (optional but recommended)

For sites intended as **civic infrastructure** (GroupBuild, CoPolitic, etc.):

- maintain a **Mirror**:

  - pseudo-static, versioned copies of essential mission/site state
  - no personal identifiers
  - structured for diffing and snapshots

- host Mirror views in:

  - `mirror/` or `exports/views/` in the repo
  - or a referenced sibling repo if needed

Purpose:

- resilience under stress (outages, attacks, platform shifts)
- anti-loss:
  - missions and knowledge do not disappear when one server does
- enable CoCivium AIs to reason about continuity and history

---

### Phase 6 – Meta / governance layer

Each site should accumulate a **Meta** layer:

- experiments being run (pricing, identity, feedback patterns)
- norms and rules being tested
- what changed and why
- ethical tensions encountered
- reference to:

  - CoCivium covenant and how it was applied
  - CoBus and CoHalo specs touched

This can live as:

- `docs/intent/{Site}_Meta_v1.md` (and follow-on versions)
- entries in a CoMetaTrain index
- CoBus / CoPortal declarations in CoIndex

Over time, this becomes a “constitution in practice” for each site:
a clear, auditable trail of how it evolved.

---

## 3. Stealth-mode pattern (temporary academic/sandbox wrap)

When a site is in stealth:

- add a front gate page that:

  - clearly states:
    - sandbox / academic / prototype status
    - not yet for general use
  - uses a password or token you keep offline
  - explains why early gating exists (IP, safety, unfinished rails)

- disable general navigation:

  - no public sitemap or browse-all
  - limited links:
    - home
    - specific pages you want to review
  - review sessions use explicit URLs you copy-paste

- CoGbx / CoPortal layer should:

  - describe the site as “stealth” or “sandbox”
  - avoid linking into non-public CoCivium/CoIndex assets
  - keep metadata minimal but accurate

This standard should be removed or relaxed once:

- governance rails are in place
- IP and GLUKEY concerns are handled appropriately
- core flows are mature enough for wider eyes

---

## 4. CoIndex / CoBus / CoPortal registration

For any new site:

1. Create or update a **CoBus schema** (business model) in CoIndex:
   - e.g. `CoBus_{Site}_PayItForward_Schema_v1.md`
2. Create or update a **CoPortal registration**:
   - e.g. this doc and any site-specific CoPortal notes
3. Ensure references from product repo docs include:
   - pointers back into CoIndex (CoBus, CoHalo, CoPortal)
4. Ensure CoIndex and the product repo each have:
   - a short “asset persona” statement for AIs
   - cometatrain-style blocks where appropriate

---

## 5. Minimal checklist for new SiteWave

When spinning up or significantly evolving a site:

- [ ] Intent docs:
  - [ ] Site Identity Spec
  - [ ] Home Copy
  - [ ] How It Works
  - [ ] Identity & Safety
  - [ ] Pay-it-forward Model (if applicable)
  - [ ] Feedback & Transparency
- [ ] Site implementation:
  - [ ] Stealth/sandbox gate (if needed)
  - [ ] Navigation consistent with current posture
  - [ ] Footer links for transparency & ethics
  - [ ] CoCTA + CoMetaTrain hooks (even if stubbed)
- [ ] CoGbx / CoPortal:
  - [ ] Basic metadata file in product repo
  - [ ] Registration snippet in CoIndex
  - [ ] No stealth-breaking links
- [ ] Feedback:
  - [ ] Form or pipeline for feedback
  - [ ] Logging rules and redaction behavior documented
- [ ] Mirror & Meta (where appropriate):
  - [ ] Mirror views structure defined or stubbed
  - [ ] Meta/governance doc seeded
- [ ] PRs & merge:
  - [ ] MW branch used
  - [ ] PR created, reviewed, and squash-merged
  - [ ] main fast-forwarded and verified clean

This document itself is the **v1 standard**. Future waves should evolve it
incrementally, with each change tied to real experience from InSeed,
GroupBuild, CoPolitic, and other CoSuite sites.

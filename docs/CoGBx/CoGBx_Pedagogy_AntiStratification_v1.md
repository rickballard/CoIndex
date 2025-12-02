# CoGBx Pedagogy & Anti-Stratification Sketch (v1)

Intent: prevent hybrid society from stratifying along CoGBx / tech-language lines by
making CoGBx feel like *normal conversation with a bit of structure*, not a new
programming language.

## 1. Design assumptions

- Most edge participants
  - are allergic to technical jargon,
  - are busy and distracted,
  - will never think of themselves as "learning a language".
- CoGBx must therefore
  - ride on top of existing natural language,
  - use very few new words,
  - make its "weirdness" feel like optional scaffolding, not a gate.

## 2. Three fluency tiers

We treat CoGBx as three overlapping layers, all usable by nontechnical people.

1. **Plain Talk (Tier 0)**
   - User speaks naturally about what they want:
     - "If the budget jumps, I want to know why."
     - "Don't let the system push one news source all the time."
   - System (AI) listens and proposes CoGBx patterns as suggestions, never as demands.

2. **Pattern Talk (Tier 1)**
   - User recognises and re-uses a small set of patterns like:
     - `WHEN X HAPPENS, ALWAYS SHOW ME Y.`
     - `NEVER LET THIS GO PAST Z WITHOUT ASKING.`
   - These patterns map directly to CoGbx templates with placeholders.

3. **Guardrail Talk (Tier 2)**
   - Trusted stewards and contributors start using explicit words like
     - "guardrail", "invariant", "certificate", but still inside human sentences.
   - They may edit or create CoGbx rules directly, but always with live examples
     and preview sentences.

Each tier must be valid by itself. Nobody *has* to climb to Tier 2 to matter.

## 3. Core CoGBx verbs and nouns (human-facing)

Minimal core vocabulary aimed at nontechnical users:

- **Verbs**
  - "protect" — as in, "protect me from..."
  - "show" — as in, "always show me when..."
  - "ask" — as in, "ask me first before..."
  - "log" — as in, "log this change somewhere I can see."
  - "explain" — as in, "explain in simple terms why..."
- **Nouns**
  - "guardrail" — friendly metaphor for constraint / policy.
  - "alert" — something that pops up when a guardrail is triggered or broken.
  - "badge" — small visual certificate, à la ENSO padlock.
  - "zone" — area of life / app / system the guardrail covers.

These words should appear in the UX, tutorials, and conversations consistently.

## 4. CoGBx sentence skeletons

The goal is to be able to express 80% of useful constraints with ~6 reusable
sentence skeletons. Examples:

1. **WHEN / DO / UNLESS**
   - "When [event], always [system action], unless [exception]."

2. **NEVER WITHOUT ASKING**
   - "Never [system action] without asking me first."

3. **ALWAYS SHOW**
   - "Always show me [summary / badge] when [important thing changes]."

4. **LIMIT**
   - "Limit [metric] to [range] for [scope]."

5. **ALERT**
   - "If [risk / threshold] is crossed, send an alert to [me / group]."

6. **EXPLAIN**
   - "Explain in plain language why [decision] was made."

Internally, these skeletons map to CoGbx templates and CoGibber primitives.

## 5. Session choreography: how AIs teach CoGBx gently

A typical interaction should look like this:

1. User says plain language desire.
2. AI responds with:
   - a short answer, and
   - "This sounds like you are asking for a guardrail. Does this CoGbx version look right?"
3. AI shows:
   - 1–2 suggested CoGbx skeleton sentences,
   - each with a "see the detailed guardrail" expansion for curious users.
4. User can:
   - accept as-is,
   - edit the sentence with plain language,
   - or say "no, that's not what I meant" and restate.

The AI gradually introduces CoGBx terms only when needed and always with examples.

## 6. Anti-stratification tactics

To avoid a CoGBx elite forming, we bake in:

1. **Mirroring & paraphrase**
   - System always shows how a CoGbx guardrail maps back into the user's own words.
   - No rule is considered "final" until user has seen and confirmed the paraphrase.

2. **Preference memory**
   - System remembers how a given user prefers to phrase things and reuses their
     own phrases in future suggestions.

3. **Shared pattern libraries**
   - Communities can share CoGBx pattern bundles like "News hygiene starter pack"
     or "Small nonprofit budgeting pack", expressed in Tier 0/1 language.

4. **Visible contribution halos**
   - Designing better CoGBx patterns is recognised as civic work, not technical
     wizardry, and surfaced as such in portals.

5. **Guardrail literacy instead of CoGBx fluency**
   - The primary goal is to help people understand the *idea* of guardrails and
     what they are protected from, not to make everyone fluent in CoGBx syntax.

## 7. Coordination with the CoGBx session

Parallel session "CoGBx" can treat this document as

- a starting point for the *human* side of the language,
- constraints against drifting toward too much technicality,
- a checklist for making Tier 0 and Tier 1 usable before expanding Tier 2.

This doc should be kept close to any formal CoGBx grammar or spec work.

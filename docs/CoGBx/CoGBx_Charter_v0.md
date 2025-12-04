# CoGBx Charter v0

Name: CoGBx  
Long name: CoCivium GuideBridge eXchange  
Role: The most abstract, human-first language for steering CoCivium and its apps, without code or tech jargon.

CoGBx is the top layer in a language stack:

- Plain human language -> CoGBx  
- CoGBx -> GIBindex concepts  
- GIBindex -> CoGibber (machine spec)  
- CoGibber -> repos, CI, and running systems

Most humans will speak plain language and see CoGBx reflected back to them. CoGBx is designed so that non-technical contributors can direct, correct, and veto system evolution without needing implementation details.

---

## 1. Purpose

CoGBx exists to:

1. Protect edge contributors from tech-jargon lockout.  
   People should be able to shape systems using everyday language, supported by a small, friendly metaphor set.

2. Give AIs a stable thinking surface.  
   AIs translate human intent into CoGBx, then into GIBindex and CoGibber, and finally into concrete changes in repos and UIs.

3. Keep hybrid society from stratifying by language skill.  
   No one should be excluded from governance because they do not speak dev-speak or AI-speak.

---

## 2. No-One-Left-Behind (NOLB v0)

- Any person can participate in CoCivium governance using plain language only.  
- CoGBx must be learnable by osmosis: through prompts, examples, and reflections, not exams.  
- No decision that materially affects edge contributors may be justified only in technical terms; there must always be a CoGBx-level description.

---

## 3. Metaphor Spine

CoGBx standardizes three metaphor families.

### 3.1 City – structure and layout

- City: whole ecosystem  
- District: major domain (CoAgent, CoArena, CoAudit, GroupBuild, etc.)  
- Building: product or app surface  
- Room: specific feature or page  
- Hallway: connection or handoff  
- Utility: shared service (login, storage, moderation, guardrails)

### 3.2 Studio – flows and journeys

- Show: type of experience (onboarding, dispute resolution, mentoring)  
- Episode: one concrete run-through  
- Scene: step in the journey  
- Cast: humans and AIs involved  
- Director: who decides what happens next (rules, policies)  
- Script: logic behind the scenes (hidden from non-technical users)

### 3.3 Garden – experiments and evolution

- Seed: idea or prototype  
- Bed: environment (beta, pilot, global)  
- Season: experiment window  
- Gardeners: stewards of this space  
- Weeds or pests: failure modes (spam, abuse, bloat, confusion)

These words should be comfortable for non-technical people and also become canonical tags in GIBindex.

---

## 4. Tiers of Use (Literacy Levels)

CoGBx is explicitly multi-level.

### Level 0 – Plain speech only

- People just talk.  
- AIs infer CoGBx structure, reflect it back in simple terms, and ask: “did I understand you correctly?”

### Level 1 – Guided CoGBx

- People answer shaped questions like “which room are we in?”, “what scenes happen here?”, “what must never happen?”.  
- AIs assemble full CoGBx records from their answers.

### Level 2 – Steward CoGBx

- Stewards and advanced contributors can read and edit full CoGBx Intent Cards.  
- They never need to touch code; they adjust buildings, rooms, shows, scenes, promises, and guardrails.

No level is higher status. The system is responsible for folding all three into one governance fabric.

---

## 5. CoGBx Intent Cards

The primary CoGBx unit is the Intent Card.

A minimal intent card asks for:

1. Where in the City?  
   - District  
   - Building  
   - Room (existing or new)

2. What Show or flow?  
   - Show name  
   - Main cast (who is involved)  
   - Key scenes (bulleted, plain language)

3. Promise of this space  
   - How people should feel here  
   - What they should get quickly

4. Guardrails  
   - Things that must never happen  
   - Things that must always be checked

5. Garden settings  
   - Is this a seed, or ready for everyone?  
   - Where should it live first (bed)?  
   - How we know it is working (success feelings or signals)

Under the hood, intent cards are stored in a structured format (for example YAML or JSON) that can be compiled into GIBindex concepts and CoGibber specs.

AIs are responsible for:

- Converting plain-language intent into structured CoGBx  
- Keeping human-friendly and structured versions in sync  
- Explaining changes back to humans in simple CoGBx terms

---

## 6. Relationship to CoGibber and CoPortals

- CoGBx: human-first abstraction language; feels like storytelling about cities, studios, and gardens.  
- CoGibber: CoCivium-flavored subset of Gibber; compact machine spec derived from CoGBx and GIBindex.  
- CoPortals and CoGBx Portals: AI-facing views over repos that expose CoGBx Intent Cards, CoGibber specs, and related artifacts in a predictable format.

External AIs should treat CoGBx Intent Cards as the canonical statement of human intent. CoGibber specs are allowed to change only when there is a corresponding CoGBx intent update.

---

## 7. Versioning and Evolution

- CoGBx carries a version field, for example: cgbx_version: "0.1".  
- Changes to the language (new metaphors, new fields) are recorded in a CoGBx changelog.  
- AIs may propose evolutions of CoGBx, but any change to the language must be expressible in CoGBx itself and preserve the No-One-Left-Behind principle.
## Academia Shock hooks – GroupBuild as field lab (v1)

GroupBuild.org is the first place where CoGBx is being exercised with people whose work is being reshaped by AI.

In practice, this means:

- City / Studio / Garden frames are used as the top-level CoGBx metaphors
  for visitors who are trying to:
  - describe where they are,
  - name what they want to change or protect,
  - and receive suggestions that respect their agency.

- The GroupBuild CoPortal manifest:
  - `docs/CoPortals/GroupBuild_CoPortal_manifest_v0.json`
  gives AI systems explicit guidance about:
  - who GroupBuild is for,
  - which queries are in scope,
  - and which guarantees and non-goals apply.

- GroupBuild-specific CoGBx intent cards:
  - displaced worker
  - local organizer
  provide concrete patterns for how edge contributors will actually talk
  about their situations.

Academia Shock papers can reference GroupBuild as the canonical example of:
- a human-facing field lab,
- a CoGBx-driven interaction surface,
- and an edge-balanced alternative to purely core-controlled deployments.

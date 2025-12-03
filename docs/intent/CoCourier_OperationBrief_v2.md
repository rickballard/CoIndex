# Operation CoCourier – Co1 brief v2

Session label: GB  
Origin repo: CoIndex (docs/intent)  
Date: 2025-12-02  

---

## 1. Why Operation CoCourier exists

Right now, a lot of CoSuite “wisdom” is spread across:

- advice and intent docs,
- theory and insight files,
- planning and idea cards,
- session plans and handoff notes.

Each session (and each helper) keeps rediscovering and re-deriving themes that already exist in repos.

**Operation CoCourier** asks Co1 to become a standing courier between:

- raw repo wisdom (scattered across CoSuite), and  
- structured, reusable overlays that other sessions can lean on.

This is not about building The One True Knowledge System. It is about:

- **reducing reinvention,**
- **shortening “time to context,”**
- and **making prior human + AI work easy to stand on.**

---

## 2. Mission for Co1

Co1 is asked to:

1. **Stand up a repo-wisdom pipeline (“CoCourier pipeline”)** that can:
   - scan across designated repos (starting with CoIndex and other core intent/theory hubs),
   - identify and cluster “wisdom” docs (advice, insights, plans, theory, idea cards),
   - emit Git-native overlays that are safe for other sessions to depend on.

2. **Be proactive, aggressive, and creative** in how this is done:
   - actively search for and test existing open-source helpers (RAG, graph, summarization, pipelines),
   - prefer **evolving** or **stripping** parts from existing tools (when licenses allow) over reinventing from scratch,
   - treat “good enough and improvable” as better than “perfect and never shipped.”

3. **Push for reuse of done work**:
   - whenever a new solution is proposed, first ask:
     - “What code, schema, or method already exists in CoSuite or open source that we can modify?”
   - default stance: **reuse → adapt → extend → only-then invent.**

---

## 3. First scope (v1) – where to look and what to output

### 3.1 Initial repos / zones to prioritize

Co1 should start from zones that are already “wisdom dense,” for example:

- **CoIndex**
  - `docs/intent/**`
  - `docs/CoTheoryCivilization/**`
  - `docs/CoGBx/**`
  - GroupBuild, Academia Shock, CoTheoryCiv megascroll segments and plans.

- **Other core repos** (to be expanded in later versions of this brief):
  - CoSteward, CoCore, CoAudit, CoAgent, CoCivium, CoPolitic, etc.,
  - focusing first on clearly-labeled intent/insight/advice/plan dirs.

This v2 brief does not hard-code the full list; Co1 is encouraged to propose and log an expanding “wisdom surface” as it learns where the value is.

### 3.2 Target outputs (CoWisdom overlays)

Co1 should produce **overlays**, not rewrite the source docs.

Candidate overlays (all Git-native, repo-visible):

- `CoIndex/docs/data/CoWisdom/CoWisdom_Index_v1.json`
  - list of wisdom-like docs across repos:
    - repo, path, title, type (advice / theory / intent / plan / card),
    - short summary,
    - coarse tags (e.g. “edge-governance”, “GroupBuild”, “children”, “CoGBx”).

- `CoIndex/docs/data/CoWisdom/CoWisdom_Clusters_v1.md`
  - human-readable cluster summaries:
    - theme name,
    - 2–3 sentence description,
    - representative docs (links),
    - notes on gaps or tensions.

- optional graph exports:
  - e.g. `CoIndex/docs/data/CoWisdom/CoWisdom_Graph_Attractors_v1.json`
  - nodes could be themes, docs, and key concepts; edges show influence and reuse.

The **source of truth** for the wisdom itself remains the original files in their home repos.  
The overlays are “maps of what we already know.”

---

## 4. Behavioural expectations for Co1

Co1 is explicitly invited to:

- **Be proactive**
  - propose tools, schemas, and file layouts,
  - open PRs with initial overlays even if rough.

- **Be aggressive in reuse**
  - mine CoSuite repos for:
    - existing indexes,
    - session plans,
    - partial graphs,
    - prior attempts at “indexing wisdom,”
  - mine open source for:
    - RAG frameworks,
    - graph & embedding tools,
    - pipeline orchestration tools,
  - strip and simplify those tools down to what fits CoSuite operations and licensing.

- **Be transparent**
  - log:
    - what tools were considered / tested,
    - what tradeoffs were made,
    - what limitations or failure modes were observed.
  - keep that log in CoIndex, for example:
    - `docs/intent/CoCourier/CoCourier_ToolingLog_v1.md` (Co1 can create this file).

Co1 is asked **not** to:

- quietly adopt heavy, opaque platforms without documenting:
  - cost,
  - lock-in,
  - failure modes,
- treat this as a one-shot import; CoCourier is ongoing.

---

## 5. Interfaces with other efforts

### 5.1 CoTheoryCiv and Academia Shock

CoCourier should:

- help CoTheoryCiv by:
  - surfacing which segments and themes already appear across repos,
  - suggesting cross-links between CoTheoryCiv segments and real-world field-lab artefacts.

- help Academia Shock by:
  - highlighting existing arguments, stories, and examples that can be lifted directly into flagship pieces,
  - reducing the need to draft entirely fresh text where strong prior work exists.

### 5.2 GroupBuild and other field labs

CoCourier should:

- treat GroupBuild-related materials as **priority signals**:
  - displaced worker stories,
  - local organizer patterns,
  - City/Studio/Garden language in use.

- make it easy for new GroupBuild docs (and other field labs later) to be:
  - discovered and clustered,
  - wired into CoTheoryCiv and CoCore.

---

## 6. How other sessions should tag their work

Other sessions **do not** need to integrate directly with CoCourier.

Helpful habits:

- put wisdom-like docs in discoverable places:
  - `docs/intent/**`
  - `docs/insights/**`
  - `docs/theory/**`
  - clearly named “ideas” / “advice” / “planning” dirs,

- mention “CoCourier” or “CoWisdom” in a brief note when a document is:
  - an important piece of intent,
  - a high-value insight pack,
  - a reusable pattern or idea card.

This gives Co1 simple hooks to prioritize.

---

## 7. Success criteria (v1)

Operation CoCourier is working if, within a reasonable time window:

- there is at least one **CoWisdom index** and one **cluster summary** checked into CoIndex,
- new sessions can:
  - quickly find prior wisdom relevant to their focus,
  - reduce “time spent re-deriving the same 10 insights”,
- Co1 has:
  - tested multiple helper stacks,
  - logged which ones fit CoSuite philosophy (edge-balanced, repo-first, transparent),
  - converged on a default stack for the next phase.

Future versions of this brief should be appended (v3, v4, …), not overwritten, so CoCourier’s evolution path remains clear.

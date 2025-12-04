# Operation RepoWisdom – CoCourier bridge (v1)

Short: this operation defines how **CoWisdom** treats "repo-wide wisdom" so that
sessions can *deliberately* evolve artefacts with awareness of other wisdoms,
instead of relying on whatever they happen to remember.

## 1. Problem this is solving

Right now, sessions:

- Often only read the single file they were pointed at.
- Rarely traverse *all* relevant wisdom files before evolving something.
- May not know which repos, folders, or docs count as “wisdom” vs noise.
- Depend heavily on Rick’s memory and manual curation.

This leads to:

- Wisdom clouds that look partial or skewed,
- Important prior thinking not being surfaced,
- Non-deliberate evolution (whatever was “seen” recently dominates).

## 2. CoWisdom / RepoWisdom goals

RepoWisdom aims to:

1. **Make wisdom discoverable**
   - Clear directories + tags for “wisdom-bearing” docs.
   - Obvious entry points (CoIndex + CoSteward) for AIs and humans.

2. **Make wisdom traversable**
   - Views / manifests listing the main wisdom artefacts for a repo.
   - Lightweight structure so sessions can scan the map before editing.

3. **Make wisdom evolvable**
   - Encourage “read-then-evolve” patterns.
   - Treat wisdom docs as living, versioned assets with clear owners.

4. **Align with CoCourier / CoBus**
   - Use CoBus notes and CoCourier envelopes to announce new wisdom waves.
   - Make it easy for sessions to know when to refresh their mental model.

## 3. Where things live (v1 sketch)

This operation assumes:

- **CoIndex** is the primary home for cross-repo wisdom views:
  - `CoIndex/docs/CoWisdom/` – operations, manifests, and cross-repo wisdom maps.

- **Per-repo wisdom clusters** are anchored in each repo, e.g.:
  - `CoCivium/docs/insights/…`
  - `CoSteward/docs/handbook/…`
  - `InSeed/docs/intent/…`
  - etc.

CoWisdom should *point at* these clusters rather than duplicate them.

## 4. How sessions should use RepoWisdom (v1 behavior)

When a session wants to evolve a wisdom-bearing file (example: a long advisory
or theory doc), it should:

1. **Check CoIndex first**
   - Look for:
     - this file: `docs/CoWisdom/Operation_RepoWisdom_CoCourier_v1.md`
     - any CoWisdom manifests (repo-wide lists / clusters).
2. **Identify relevant wisdom clusters**
   - For the target repo, note the folders / docs marked as “wisdom”.
3. **Scan at least the headings / summaries**
   - Don’t read every word, but build a quick mental map.
4. **Only then evolve the target file**
   - Prefer summaries + pointers to avoid bloating individual docs.

If CoWisdom manifests don’t yet exist, sessions should:

- Note that gap in CoBus / CoCourier envelopes,
- Suggest a future wave to build those manifests,
- Avoid pretending the local view is complete.

## 5. Relationship to CoCourier

CoCourier’s job is to:

- Move *messages* and *wave intents* between sessions using CoBus.
- Let sessions say:
  - “I just ran a wisdom sweep on repo X”
  - “We have a new wisdom cluster in CoCivium/docs/insights/…”
  - “Please read Operation_RepoWisdom_CoCourier_v1 before touching these files.”

RepoWisdom’s job is to:

- Define *how* repos should shape and expose wisdom,
- Provide patterns for manifests, indexes, dashboards, and metrics.

Together:

- CoCourier = the **wire** for notifications and coordination.
- CoWisdom / RepoWisdom = the **map** and **practice** of wisdom management.

## 6. Next steps for Co1 / CoPrime

1. **Confirm this file as canonical v1**
   - Treat this as the starting point for CoWisdom / RepoWisdom behavior.

2. **Add a CoWisdom manifest for at least one repo (pilot)**
   - e.g. `CoIndex/docs/CoWisdom/Manifest_CoSteward_v1.md`
   - list the main wisdom-bearing docs for CoSteward.

3. **Integrate with CoGbx views**
   - Expose CoWisdom manifests in CoGbx seed views so AIs can find them easily.

4. **Plan metrics**
   - Track:
     - number of wisdom docs per repo,
     - number of sessions that reference CoWisdom ops,
     - how often wisdom manifests get updated.

5. **Document the pattern in CoSteward**
   - CoSteward should have a short advisory pointing at this file and explaining
     how stewards should think about wisdom vs noise.

When CoWisdom patterns stabilize, bump to v2 and update any external links.

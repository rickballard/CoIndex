# CoIndex – Browser / Front-End Lag Cluster (v1)

UTS: 20251209T021901Z  

These entries are **sanitized** for public CoSuite usage. Any GLU-adjacent detail lives
in vault-side notes, not here.

---

## CoSessionHygiene

**Role:**  
A family of habits and tools that keep ChatGPT / browser-based sessions responsive under
heavy load.

**Notes:**  
- Currently anchored by:
  - CoSteward: CoSteward_SessionPurgePrep_v1.ps1, CoReloadRunner_v1.ps1
  - CoIndex: Invoke-CoSessionHygiene_v1.ps1
- Future: dashboard hooks (CoLag / CoBloat) and CoStatus integration.

---

## CoFrontLagVector

**Role:**  
Label for observable front-end (browser) strain that affects perceived CoSuite performance
even when the back-end is healthy.

**Examples:**  
- Scroll anchoring bugs and jumpy viewports.
- Text input lag unrelated to model response time.
- Render stalls in long transcripts.

**Usage:**  
- Tag in CoLag / CoBloat analyses as a suspected cause of slowdown.
- Used to distinguish from back-end latency or orchestration faults.

---

## CoWaveStall

**Role:**  
A wave that has clearly slowed down for UI reasons (front-end) rather than model reasons.

**Indicators (non-exhaustive):**  
- The model finishes, but text appears on-screen very late.
- The browser feels sluggish even when no new API calls are happening.
- Simple actions (select, copy, scroll) are delayed or misbehave.

**BPOE Response:**  
- Consider a session hygiene action:
  - Wave boundary and tab refresh.
  - Split workload across multiple windows or profiles.
  - Run CoSessionHygiene helper and follow suggestions.

---

## CoTabRefreshHeuristic

**Role:**  
A simple rule-of-thumb for how often to refresh a heavy working tab.

**Examples (tunable):**  
- When:
  - CoFrontLagVector is flagged,
  - or a wave feels like a CoWaveStall,
  - or CoBloat soft threshold is crossed,
- Then:
  - Suggest a friendly 'tab refresh' (within normal browser UX),
  - or building the next wave in a fresh tab.

**Note:**  
Details of the actual heuristic (timers, metrics, etc.) are subject to change and may be
refined off-repo.

---

## CoDethrottle (Reserved / Placeholder)

**Role:**  
Reserved name for future techniques that *carefully* reduce perceived throttling from the
user’s perspective without over-exposing low-level browser tricks.

**Status:**  
- Name reserved in this term cluster.
- Implementation notes should live in vault-side docs, not on GitHub.

---

## Integration Notes

- CoSteward doc: docs/intent/CoFrontEnd/CoFrontEnd_StressAndSessionHygiene_v1_*.md
- CoIndex helper: 	ools/ps7/Invoke-CoSessionHygiene_v1.ps1
- Co1 / CoCache should treat this cluster as the canonical, public-safe naming.


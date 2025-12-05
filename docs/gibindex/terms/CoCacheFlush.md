# CoCacheFlush (v1)

## Human-facing definition

**CoCacheFlush** is the pattern where:

- Perceived "AI/session lag" is **primarily caused by browser/tab/cache bloat**,
  not by model or conversation age; and
- A deliberate **browser cache + tab hygiene reset** produces a clear
  responsiveness improvement.

In other words, CoCacheFlush is:

> "The moment you realise it's your browser, not your AI."

It belongs to the same family of concepts as:

- **CoLag** – classification of lag causes (Chat vs OE vs Net/Platform).
- **CoNag** – assets asking for evolution when patterns repeat.
- **CoBPOE** – Best Practice Operating Environment guidance.

## Typical signals

CoCacheFlush is a likely explanation when:

- Multiple long-running sessions all feel laggy at once.
- CoLag classifications skew heavily toward `CoLag-OE`.
- Browser RAM usage and tab counts are very high.
- A cache clear + browser restart + tab reduction leads to:
  - noticeably snappier response
  - no further lag without changing the underlying sessions

## Expected behavior

When CoCacheFlush is suspected:

1. Run **CoLag** to confirm an OE-skewed pattern (`CoLag-OE`).
2. Apply **browser hygiene**:
   - close non-essential tabs/windows
   - restart the browser
   - clear cache/cookies for the profile used with CoSuite
3. Re-test:
   - if sessions now feel healthy, record the event as a CoCacheFlush case
   - optionally log it via CoNag/CoAudit for pattern tracking

## Relationships

- **CoLag**:
  - Provides classification (Chat vs OE vs Net/Platform).
  - CoCacheFlush is one of the primary OE-remediation stories.
- **CoBPOE**:
  - BPOE docs should describe CoCacheFlush as a standard hygiene step.
- **Outreaches / RickPublic**:
  - CoCacheFlush is an investor- and partner-friendly story:
    - "We misdiagnosed lag as session burnout; it was the browser.
       We built tools and BPOEs so it doesn’t surprise us again."

---

## Transparency Footer

**Term:** CoCacheFlush  
**Kind:** GIBindex term / pattern  

**Intent options:**
- Give a name to the "it was the browser all along" discovery.
- Make it indexable and reusable across advisories, decks, and BPOEs.

**Ambitions:**
- Prevent future over-attribution of lag to AI or session age.
- Encourage systematic OE diagnosis before session resets.

**Evolutionary vectors / CTAs:**
- Wire CoCacheFlush explicitly into:
  - CoLag design docs
  - CoBPOE browser/OE best practices
  - Outreaches and investor materials
- Use CoNag + CoAudit to track how often CoCacheFlush events occur.

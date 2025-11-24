# CoIndex BPOE Notes v1

Mission Id   : CoIndex_BackboneDesign2025_Mission
Session label: MurphyPlus_CoIndex20251123
Stamp        : 20251124T010814Z

## 1. MegaWave countdown style

We prefer the notation:

    n / N

Where:

- n  = number of waves completed (or current wave index),
- N  = current total number of planned waves.

This allows:

- starting with 1/8, 2/8, 3/8,
- and later expanding to 4/9, 5/10, etc.,
- when new waves are added as the design surface grows.

The denominator N is not fixed; it is updated when the plan legitimately expands.
This gives humans and AIs a quick sense of progress without pretending the plan
was fully known from the start.

## 2. Workflow learnings for CoIndex

- Always work repo-first; chat is not a source of truth.
- Use MegaWave for any non-trivial change.
- Each wave should:
  - state commentary on prior waves,
  - declare explicit intent,
  - ship PS7 CoBlocks,
  - leave CoPing receipts.

- CoIndex will eventually be orchestrated by Co1; this session is seed-stage only.

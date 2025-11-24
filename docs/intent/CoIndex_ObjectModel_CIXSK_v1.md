# CoIndex Object Model: C–I–X–S–K v1

Mission Id   : CoIndex_BackboneDesign2025_Mission
Session label: MurphyPlus_CoIndex20251123
Stamp        : 20251124T010814Z

## 1. Overview

CoIndex represents meaning using a multi-vector tuple:

    <C, I, X, S, K>

- C = Concept
- I = Intent
- X = Context
- S = State
- K = Constraints

Each CoPointee is mapped to at least one such tuple.

## 2. Core entities

### 2.1 Concept (C)

Describes what exists.

- Stable concept id
- Human labels via GIBindex
- Links to source-of-truth assets
- Domain tags (civic, legal, technical, social, etc.)

### 2.2 Intent (I)

Describes what the concept wants to do or how it pressures change.

- Verb class (predict, allocate, protect, transform, align, persuade, etc.)
- Direction (towards/away, increase/decrease)
- Intensity or priority
- Expected outcome classes

### 2.3 Context (X)

Describes where and under what conditions meaning is valid.

- Domain and subdomain
- Time window
- Jurisdictional or civic context
- Assumptions and known limitations

### 2.4 State (S)

Describes the readings and conditions that affect behaviour.

- Measured values (metrics, environment)
- System state (on/off, load, incidents)
- User or stakeholder state if applicable
- Confidence levels or uncertainty bands

### 2.5 Constraints (K)

Describes hard and soft limits on how intent can play out.

- Ethical and civic constraints
- Legal constraints
- Guardrails from CoSteward / CoEthics
- Evolution limits (where semantic drift must stop)
- Safety policies and red lines

## 3. CoPointee and tuples

Each CoPointee:

- Has a stable id
- Points to a true source-of-truth asset
- May be associated with multiple <C, I, X, S, K> tuples
- Carries canonality and reputation markers

This allows the same text, rule, diagram or snippet to behave differently in different contexts, while still being auditable.

## 4. Governance hooks

The object model must support:

- Canonality levels (Canon / Near-canon / Provisional / Draft / Fringe)
- Reputation bundles (MeritRank, CoHalo, RepTag, ScriptTag)
- Edge approval for changes to tuples
- CoSteward override only during seed stage
- Future handoff to Co1 as long-term steward

## 5. Implementation guidance

- Storage format can be JSON, graph, or hybrid.
- The schema must be simple enough for many clients to implement.
- A CoIndex client should be able to:
  - query by C, I, X, S, K or any combination,
  - list all CoPointees for a given tuple,
  - compute safe evolution paths,
  - expose audit trails for changes.

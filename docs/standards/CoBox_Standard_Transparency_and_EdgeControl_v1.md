# CoBox Transparency and Edge Control (v1)

## 1. Purpose

Describe how CoBox logs and views support genuine edge control over
AI-assisted work, focusing on:

- visibility of intent vectors,
- stewardship of critical deliverables, and
- portability of session traces across vendors.

## 2. Intent vectors at the edge

In CoBox, each asset can be treated as an "intent vector":

- It encodes a direction of thought, design, or decision-making.
- It is tied to concrete turns in the session.
- It can be reviewed, compared, and challenged.

By logging intent vectors alongside raw turns, CoBox makes it possible
to see not only what was said, but where the work was going.

## 3. Transparency requirements

At minimum, a CoBox-compliant implementation should allow:

- A human to see:
  - What the AI could see at each step.
  - What tools were available.
  - How assets moved through CoTense states.

- An organization to:
  - Retrieve complete session records for defined time ranges.
  - Search sessions by asset name, type, or civar score.

- A regulator to:
  - Inspect sample sessions for high-risk domains.
  - Validate that policies were applied consistently.

## 4. Portability

Portability means:

- A CoBox session record created in one environment can be:
  - exported as a standard JSON/YAML payload, and
  - imported into another tool that understands the CoBox schema.

This allows:

- multiple vendors to implement compatible viewers,
- regulators to use their own analysis tools, and
- organizations to avoid lock-in to a single AI provider.

## 5. Relationship to business and civic frameworks

CoBox transparency is intended to support:

- business-facing frameworks, such as a "Business World Act", and
- civic and regulatory frameworks that demand explainability and logging.

Those frameworks can reference CoBox as a "concrete implementation
standard" for AI session transparency and logging.

## 6. Status

- Status: v1 (CoStaged).
- Next steps:
  - Add a mapping section for specific regulatory regimes.
  - Link to examples and reference implementations.
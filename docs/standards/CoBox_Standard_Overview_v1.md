# CoBox – Visible Sandbox Standard (Overview v1)

## 1. Purpose

CoBox is an open, vendor-neutral standard for making AI "sandboxes"
visible, portable, and auditable across tools, vendors, and model types.

This document provides a high-level overview of the goals, scope, and
core concepts of the CoBox standard.

## 2. Problem statement

Modern AI systems operate inside opaque sandboxes:

- Users cannot see what context the AI truly had.
- Organizations lack reliable logs of AI-assisted work.
- Regulators have no consistent way to inspect AI sessions across vendors.
- Edge interactions (where ideas and decisions are formed) leave weak or
  inconsistent traces.

Without transparent, portable sandboxes:

- Intent vectors at the edge cannot be inspected or aligned.
- Edge control and governance become performative rather than real.
- Civic and commercial actors lose leverage to steer AI-assisted workflows.

## 3. CoBox concept

CoBox combines two ideas:

1. **Black-box recorder**  
   A standard way to log AI sessions:
   - inputs, outputs, tools, and attachments
   - policies and constraints in effect
   - key decisions, deliverables, and their CoTense states

2. **Glass-walled sandbox**  
   A standard way to inspect that log:
   - for users
   - for organizations and stewards
   - for regulators and auditors

Any vendor, open-source project, or organization can implement the CoBox
standard without adopting any specific product.

## 4. Design principles

1. **Open and non-proprietary**  
   - Specification published under an open license.
   - Reference implementations can be forked and extended.

2. **Vendor-neutral**  
   - Works across commercial APIs, open models, and local deployments.
   - No dependence on any single platform or provider.

3. **Edge-first**  
   - Focused on the *edge* where humans and AIs interact.
   - Captures intent vectors and deliverables, not only raw tokens.

4. **CoTense-aware**  
   - Treats in-session assets as having clear states:
     CoPlanned, CoShaping, CoStaged, CoSaved, CoRetired.
   - Makes it obvious which assets were actually realized.

5. **Privacy-respecting and policy-aware**  
   - Integrates with PII/PHI detection and redaction schemes.
   - Respects local and sectoral regulations.

## 5. Core artifacts of the standard

The CoBox standard family includes:

- **Session Schema** – a structured format for representing AI sessions.
- **CoTense Asset Schema** – how to describe deliverables inside a session.
- **Implementation Profiles** – guidance for web UIs, APIs, and local tools.
- **Compliance and Audit Profiles** – guidance for regulators and stewards.

This "Overview" document sits at the top of that stack.

## 6. Intended users

- Individual users who want a trace of their AI usage.
- Organizations that need AI usage logs for safety and compliance.
- Regulators and auditors who must inspect AI-assisted decisions.
- Open-source communities building transparent AI tooling.

## 7. Relationship to other initiatives

CoBox is intended to complement, not replace:

- Ethical AI guidelines and governance frameworks.
- Regulatory sandbox initiatives.
- Existing logging and telemetry systems.

The CoBox Session Schema is designed to be mappable to other standards
as they evolve.

## 8. Status and roadmap

- Status: Overview v1 (CoStaged).
- Next steps:
  - Align terminology with the Session Schema document.
  - Add references to relevant open standards bodies and initiatives.
  - Invite public review and feedback.
# CoIndex Survey v1
Mission Id   : CoIndex_BackboneDesign2025_Mission
Session label: MurphyPlus_CoIndex20251123
Stamp        : 20251124T010006Z

## 1. Purpose
This survey summarizes existing indexing paradigms and evaluates their suitability
for CoIndex. The goal is to identify which components can be adopted, adapted, or replaced.

## 2. Systems Surveyed
1. Semantic and vector indexes  
2. Knowledge graphs  
3. Ontologies  
4. Topic models  
5. Intent mining frameworks  
6. State/action modelling approaches  
7. Reinforcement learning policy graphs  
8. Event logs / process mining  
9. Database indexes (symbolic)  
10. File system trees (hierarchical)  

## 3. Findings (summary)
- **Semantic/vector indexes**: fast but shallow; no guardrails; cannot express constraints.
- **Knowledge graphs**: express entities/relations but not *why* relations evolve.
- **Ontologies**: good for taxonomies; rigid; slow to evolve; human-centric.
- **Intent frameworks**: capture verbs; lack stability and civic governance.
- **Process mining**: models behaviour; lacks concept granularity.
- **RL policy graphs**: have actions but no concept semantics.
- **Hierarchical indexes**: stable but non-evolutionary.
- **None** natively support democratic edge control, guardrails, or evolvable concept+intent tuples.

## 4. Conclusion
Existing systems contribute useful patterns but none satisfy the CoIndex requirements:
AI-first, safe evolution, concept+intent at core, context/state/constraint vectors,
and governance through canonicality and reputation.

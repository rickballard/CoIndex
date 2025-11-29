# CoIndex Entry – Emotion_Model_Circumplex_v1

index_key : Emotion_Model_Circumplex_v1
kind      : emotion_model
status    : stable_reference   # canonical baseline, can be extended

source:
  family : academic_circumplex_models
  notes  : "Valence x arousal circumplex used as shared map for human and AI affect."

axes:
  - name : valence
    span : unpleasant_to_pleasant
  - name : arousal
    span : deactivation_to_activation

summary_short:
  Baseline two axis model of affect (valence and arousal). Emotions occupy
  regions in this space, giving CoCivium a simple shared coordinate system
  for mapping feelings, states, and AI interpretations of emotion.

usage_notes:
  - Use as the default emotional map when:
      - interpreting least among us logs,
      - designing CoCivia emotional states,
      - mapping Hope and other bridge emotions into coordinates.
  - Hope is treated as:
      - moderately pleasant,
      - medium activation,
      - outward and future facing.
  - This entry does not lock in any single label set; labels can vary by culture
    while coordinates remain stable.

related_index_keys:
  - Hope_Primordial_Emotion_v1
  - Emergent_Quiet_Intelligence_v1
  - CoCivia_Mythos_Lineage_v1

links:
  - label: diagrams_reference
    kind : internal
    hint : "See CoCivium/docs/history/LeastAmongUs/ and emotion diagrams for visuals."
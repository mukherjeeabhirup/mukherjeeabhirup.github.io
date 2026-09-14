---
layout: page
title: Activation Steering for Smart Contract Vulnerability Detection
description: UT Dallas, 2025-2026
img:
importance: 1
category: research
---

{% comment %}TODO: add the code repository link (`github:` in the front matter or a link here) once confirmed.{% endcomment %}

This project evolved into my first first-author paper at ISI’26: IEEE International Conference on Intelligence and Security Informatics.

Steering vectors were computed and applied at inference time, without fine-tuning, and then evaluated for six LLMs on an 11-class Solidity vulnerability classification task using the SmartBugs Curated dataset.

The core finding of this work is that activation steering can improve multi-class vulnerability classification in Solidity smart contracts beyond simple few-shot prompting through direction-specific confidence calibration.

## Methodology

<figure>
  <a href="{{ '/assets/img/publication_preview/activation-steering-method.svg' | relative_url }}" target="_blank" rel="noopener noreferrer">
    <img
      src="{{ '/assets/img/publication_preview/activation-steering-method.svg' | relative_url }}"
      alt="Activation steering methodology: leave-one-category-out prompting, CDM and CPS steering vector extraction, layer selection, and steered inference."
      class="img-fluid rounded"
      style="background-color: white; width: 100%; height: auto;"
      loading="lazy"
    >
  </a>
</figure>

## Presentation slides

<iframe
  src="{{ '/assets/pdf/paper12-isi-2026-v3.pdf' | relative_url }}#view=FitH"
  title="ISI 2026 presentation: Activation Steering for Smart Contract Vulnerability Detection"
  width="100%"
  height="600"
  style="border: 1px solid var(--global-divider-color); height: clamp(300px, 60vw, 650px);"
  loading="lazy"
></iframe>

[Open or download the slides (PDF)]({{ '/assets/pdf/paper12-isi-2026-v3.pdf' | relative_url }}).

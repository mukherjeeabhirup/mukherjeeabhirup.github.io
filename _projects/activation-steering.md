---
layout: page
title: Activation Steering for Smart Contract Vulnerability Detection
description: contrastive steering vectors as a confidence-calibration mechanism for LLM-based Solidity vulnerability classification (MS thesis topic; IEEE ISI 2026)
img:
importance: 1
category: research
related_publications: true
---

{% comment %}TODO: add the code repository link (`github:` in the front matter or a link here) once confirmed.{% endcomment %}

This project (2025–2026) grew out of my master's thesis at The University of Texas at Dallas, advised by Dr. Latifur Khan, and became my first-author paper at IEEE ISI 2026 {% cite mukherjee2026activation %}.

Steering vectors are computed contrastively from paired vulnerable/patched Solidity code and applied at inference time, without fine-tuning. We evaluate six LLMs (7B–34B parameters) on an 11-class Solidity vulnerability classification task using the SmartBugs Curated dataset.

The core finding is that activation steering acts as a confidence-calibration mechanism bounded by pre-training knowledge: it is not a reasoning enhancer.

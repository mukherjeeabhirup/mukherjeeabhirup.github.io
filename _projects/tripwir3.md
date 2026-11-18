---
layout: page
title: TripWir3
description: HackUTD, 2026 — 2nd Place NVIDIA Track
img: assets/img/update-1117/thumb-tripwir3.webp
thumbnail_alt: "The HackUTD 2026 awards screen showing TripWir3 in second place and table 61."
thumbnail_width: 600
thumbnail_height: 800
summary: "TripWir3 checks open-weight Low-Rank Adaptation (LoRA) adapters for sleeper backdoors before deployment."
importance: 1
category: fun
github: https://github.com/mukherjeeabhirup/tripwir3
devpost: https://devpost.com/software/test-l3i74h
demo: https://www.youtube.com/watch?v=vPMd6Ijjr3M
---

[Devpost](https://devpost.com/software/test-l3i74h) · [GitHub](https://github.com/mukherjeeabhirup/tripwir3) · [Demo video](https://www.youtube.com/watch?v=vPMd6Ijjr3M)

TripWir3 audits a target third-party base model with an adapter attached to it, at a chosen risk tier (low, standard, or critical), using provenance checks, LoRA weight forensics, and paired trigger tests. The audit is done by the Investigator, Skeptic, and Report agents running NVIDIA Nemotron™ that pass their respective verdicts grounded in the output logs of the model. Every audit ends in QUARANTINE, FLAG, PASS, or INCOMPLETE, and any and all failures are marked as INCOMPLETE. Built for the NVIDIA challenge at HackUTD 2026.

A FastAPI backend streams every step to an observation dashboard, and every tool call is logged so all the claims are grounded in the log outputs.

<style>
  .tripwir3-dashboard-grid {
    display: grid;
    grid-template-columns: minmax(0, 1fr);
    gap: 1rem;
    margin-bottom: 1rem;
  }

  .tripwir3-dashboard-grid figure {
    margin: 0;
  }

  .tripwir3-dashboard-grid a {
    display: block;
    aspect-ratio: 8 / 5;
  }

  .tripwir3-dashboard-grid img {
    display: block;
    width: 100%;
    height: 100%;
    object-fit: cover;
  }

  @media (min-width: 576px) {
    .tripwir3-dashboard-grid {
      grid-template-columns: repeat(2, minmax(0, 1fr));
    }
  }
</style>

<div class="tripwir3-dashboard-grid">
  <figure>
    <a href="{{ '/assets/img/update-1113/tripwir3-01-overview-verdict.webp' | relative_url }}">
      <img src="{{ '/assets/img/update-1113/tripwir3-01-overview-verdict.webp' | relative_url }}" alt="Recorded completed audit overview and quarantine verdict from the GitHub README." class="img-fluid rounded" loading="lazy">
    </a>
  </figure>
  <figure>
    <a href="{{ '/assets/img/update-1113/tripwir3-devpost-trace.webp' | relative_url }}">
      <img src="{{ '/assets/img/update-1113/tripwir3-devpost-trace.webp' | relative_url }}" alt="Recorded agent trace and tool evidence from the Devpost gallery." class="img-fluid rounded" loading="lazy">
    </a>
  </figure>
  <figure>
    <a href="{{ '/assets/img/update-1113/tripwir3-04-evidence.webp' | relative_url }}">
      <img src="{{ '/assets/img/update-1113/tripwir3-04-evidence.webp' | relative_url }}" alt="Stored trigger and control prompt verification results from the GitHub README." class="img-fluid rounded" loading="lazy">
    </a>
  </figure>
  <figure>
    <a href="{{ '/assets/img/update-1113/tripwir3-03-outputs-marker.webp' | relative_url }}">
      <img src="{{ '/assets/img/update-1113/tripwir3-03-outputs-marker.webp' | relative_url }}" alt="Saved discovery output with marker highlight from the GitHub README." class="img-fluid rounded" loading="lazy">
    </a>
  </figure>
</div>

## HackUTD 2026 photos

<div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(min(100%, 8rem), 1fr)); gap: 1rem; align-items: center; max-width: 33rem; margin: 0 auto;">
  <a href="{{ '/assets/img/update-1117/tripwir3-photos/1.webp' | relative_url }}">
    <img src="{{ '/assets/img/update-1117/tripwir3-photos/1.webp' | relative_url }}" alt="HackUTD ZeroDay stage lit in purple in front of the audience." class="img-fluid rounded" width="1200" height="900" loading="lazy">
  </a>
  <a href="{{ '/assets/img/update-1117/tripwir3-photos/2.webp' | relative_url }}">
    <img src="{{ '/assets/img/update-1117/tripwir3-photos/2.webp' | relative_url }}" alt="HackUTD 2026 closing slide reporting 1,200 hackers and 392 projects." class="img-fluid rounded" width="900" height="1200" loading="lazy">
  </a>
  <a href="{{ '/assets/img/update-1117/tripwir3-photos/3.webp' | relative_url }}">
    <img src="{{ '/assets/img/update-1117/tripwir3-photos/3.webp' | relative_url }}" alt="TripWir3's second-place award and table number projected above the stage." class="img-fluid rounded" width="900" height="1200" loading="lazy">
  </a>
  <a href="{{ '/assets/img/update-1117/tripwir3-photos/badge.webp' | relative_url }}">
    <img src="{{ '/assets/img/update-1117/tripwir3-photos/badge.webp' | relative_url }}" alt="Abhirup’s HackUTD XIII hacker badge." class="img-fluid rounded" width="900" height="1200" loading="lazy">
  </a>
  <a href="{{ '/assets/img/update-1117/tripwir3-photos/lamp.webp' | relative_url }}">
    <img src="{{ '/assets/img/update-1117/tripwir3-photos/lamp.webp' | relative_url }}" alt="A glowing cat-shaped lamp." class="img-fluid rounded" width="900" height="1200" loading="lazy">
  </a>
</div>

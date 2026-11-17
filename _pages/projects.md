---
layout: page
title: research and projects
permalink: /projects/
description:
nav: true
nav_order: 2
display_categories: [research, fun]
---

<style>
  .project-list .project-thumbnail {
    display: block;
    width: min(100%, 160px);
    aspect-ratio: 8 / 5;
  }

  .project-list .project-thumbnail img {
    display: block;
    width: 100%;
    height: 100%;
    object-fit: cover;
  }

  /* Center the award projections within their stage photos. */
  .project-list .project-thumbnail img[src$="/thumb-tripwir3.webp"] {
    object-position: center 51%;
  }

  .project-list .project-thumbnail img[src$="/thumb-data-pattern-observatory.webp"] {
    object-position: center 40%;
  }

  /* The objective text is at the left edge of the Mars slide. */
  .project-list .project-thumbnail img[src$="/mars-landing.webp"] {
    object-position: left center;
  }
</style>

<div class="publications project-list">
{% for category in page.display_categories %}
  <h2 id="{{ category }}" class="bibliography" style="color: var(--global-text-color);">{% if category == 'fun' %}Projects{% else %}Research{% endif %}</h2>
  {% assign sorted_projects = site.projects | where: "category", category | sort: "importance" %}
  <ol class="bibliography">
  {% for project in sorted_projects %}
    <li>
      <div class="row">
        <div class="col-sm-3">
          <figure>
            <a class="project-thumbnail" href="{{ project.url | relative_url }}">
              <img src="{{ project.img | relative_url }}" alt="{{ project.thumbnail_alt | escape }}" class="img-fluid rounded" width="{{ project.thumbnail_width | default: 800 }}" height="{{ project.thumbnail_height | default: 500 }}" loading="lazy">
            </a>
            {% if project.thumbnail_caption %}<figcaption class="caption">{{ project.thumbnail_caption | escape }}</figcaption>{% endif %}
          </figure>
        </div>
        <div class="col-sm-9">
          <div class="title"><a href="{{ project.url | relative_url }}">{{ project.title }}</a></div>
          <div class="periodical">{{ project.description }}</div>
          <p>{{ project.summary }}</p>
          <div class="links">
            <a class="btn btn-sm z-depth-0" href="{{ project.url | relative_url }}">Details</a>
            {% if project.github %}<a class="btn btn-sm z-depth-0" href="{{ project.github }}">GitHub</a>{% endif %}
            {% if project.devpost %}<a class="btn btn-sm z-depth-0" href="{{ project.devpost }}">Devpost</a>{% endif %}
            {% if project.demo %}<a class="btn btn-sm z-depth-0" href="{{ project.demo }}">Demo</a>{% endif %}
          </div>
        </div>
      </div>
    </li>
  {% endfor %}
  </ol>
{% endfor %}
</div>

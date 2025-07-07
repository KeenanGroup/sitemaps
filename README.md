# Keenan Group Sitemaps

This repository hosts XML sitemaps for thekeenangroup.com to resolve canonical URL issues in Google Search Console.

## Hosted Sitemaps

- `sitemap-canonical.xml` - Main sitemap with canonical URLs (non-www)
- `sitemap-urls.txt` - Plain text list of URLs
- `sitemap.xml` - Primary sitemap
- `sitemap-blog-dpages.xml` - Blog pages
- `sitemap-agent-dpages.xml` - Agent pages
- `sitemap-neighborhoods-dpages.xml` - Neighborhood pages
- `sitemap-properties-dpages.xml` - Property pages

## Usage

These sitemaps are accessible via GitHub Pages at:
- https://keenangroup.github.io/sitemaps/sitemap-canonical.xml
- https://keenangroup.github.io/sitemaps/sitemap-urls.txt

## Purpose

Resolving "Duplicate, Google chose different canonical than user" errors by providing Google with proper canonical URLs (non-www version).

## Implementation

1. Sitemaps are hosted on GitHub Pages
2. Submitted to Google Search Console
3. 301 redirects implemented from www to non-www on main site

---
*Maintained by The Keenan Group at Compass Real Estate*
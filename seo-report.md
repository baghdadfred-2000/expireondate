# ExpireOnDate.com — Google SEO Optimization Report (2026)

This package turns the single-page death-date calculator into a small, Google-optimized
static site for **https://expireondate.com**. All files are production-ready and
copy-pasteable to the web root.

**Files delivered**

| File | Purpose |
|---|---|
| `index.html` | Homepage = the goth death-date calculator app + full SEO + FAQ |
| `how-it-works.html` | Methodology page (HowTo + FAQ schema) — high keyword value |
| `about.html` | About / E-E-A-T (who, why, ethics) |
| `disclaimer.html` | Entertainment-only / YMYL trust page |
| `privacy.html` | Privacy & cookies |
| `robots.txt` | Google-first crawl rules + sitemap reference |
| `sitemap.xml` | All canonical URLs |

---

## Assumptions made (please confirm / correct)

1. **Canonical host = non-www**, `https://expireondate.com/`. If you prefer `www`, do a global find-replace and set a 301 redirect from the non-preferred host.
2. **File-extension URLs** (`/how-it-works.html`) are used so the package works as plain static files. Cleaner slugs (`/how-it-works`) are better long-term — see the action plan for the rewrite.
3. **Author / E-E-A-T** is attributed to a fictional mascot ("Morty") plus a real "editorial team." For stronger E-E-A-T, add a real named author with a bio and, ideally, a credentialed reviewer note.
4. **`og-image.png` does not exist yet** — you must create a 1200×630 share image (see action plan).
5. Language is **English** (`lang="en"`). Add `hreflang` tags only if you launch a Thai or other-language version.

---

## Page 1 — `index.html` (Homepage)

**Page type:** Web application / tool landing page
**Primary target keyword:** *death date calculator*
**Secondary / LSI / entities:** death clock, when will I die, life expectancy calculator, how long will I live, death countdown, expiry date, memento mori, BMI, life expectancy by country.
**Search intent:** Tool/transactional ("let me use a death calculator") + informational.

**Key Google changes & rationale**

- **Title (55 chars):** `Death Date Calculator — When Will You Die? | ExpireOnDate.com` — primary keyword first, intent question, brand last. Helps relevance + CTR.
- **Meta description (~155 chars):** benefit + feature + "for fun only" to win clicks and set expectations (reduces pogo-sticking).
- **Canonical** to `https://expireondate.com/` prevents duplicate-URL dilution.
- **One H1** containing the core query intent; supporting **H2s** ("Live Death Clock", "Death Date Calculator: FAQ") create scannable, snippet-friendly structure.
- **Primary keyword in the first ~30 words** of body copy (the intro paragraph), satisfying early-keyword and Helpful-Content signals.
- **Visible FAQ section** mirrored by **FAQPage JSON-LD** → eligible for FAQ rich results and strong AI-Overview fodder (clear Q→A, definitive answers).
- **JSON-LD @graph**: `Organization`, `WebSite`, `WebApplication` (price 0, free), `BreadcrumbList`, `FAQPage` — helps Google understand the entity and the tool.
- **Open Graph + Twitter** tags with 1200×630 image for rich social/SERP previews.
- **Semantic HTML5**: `<nav>`, `<header>`, `<main>`, `<footer>`; descriptive internal links to all sub-pages (crawl depth = 1).
- **Mobile-first**: responsive Tailwind, proper viewport, `font-display:swap`, `preconnect` to font origins.
- **No heavy images** (emoji + CSS) → naturally strong LCP/CLS; the only render-blocker is the Tailwind CDN (see CWV note).

---

## Page 2 — `how-it-works.html`

**Page type:** Informational article
**Primary target keyword:** *how does a death date calculator work* (also "how is life expectancy calculated")
**Intent:** Informational — ideal for featured snippets & AI Overviews.

**Key changes & rationale**

- Step-numbered method with question-style H2/H3 → wins "how" snippets.
- **HowTo** + **FAQPage** JSON-LD for rich-result eligibility.
- **External authority links** (Worldometers, WHO) with `rel="nofollow noopener"` — supports transparency/E-E-A-T without passing equity to unvetted targets.
- Internal links to calculator + disclaimer build a topical cluster.

---

## Page 3 — `about.html`

**Page type:** AboutPage (E-E-A-T hub)
**Primary keyword:** *about ExpireOnDate / who makes this death date calculator*

**Key changes & rationale**

- Demonstrates **Experience/Expertise/Trust**: why it's built, how "accuracy" is handled, ethics, named (if you fill in) team, last-updated date.
- `AboutPage` + `Organization` (with `foundingDate`) schema.
- Care/safety language for the sensitive topic — a positive YMYL trust signal.

---

## Page 4 — `disclaimer.html`

**Page type:** Trust/legal (critical for a mortality/health-adjacent topic)
**Primary keyword:** *death calculator disclaimer / entertainment only*

**Key changes & rationale**

- Unambiguous "not medical advice" framing protects against Helpful-Content/YMYL penalties for a death/health topic.
- Compassionate "if you're struggling" section — both ethical and a trust signal.
- `WebPage` + `BreadcrumbList` schema; linked site-wide.

---

## Page 5 — `privacy.html`

**Page type:** Trust/legal
**Primary keyword:** *ExpireOnDate privacy / death calculator privacy*

**Key changes & rationale**

- Clear "browser-only, nothing stored, no tracking cookies" statement = strong trust signal and accurate to the app's behavior.
- Discloses third parties (Google Calendar, CDNs) honestly.
- `WebPage` + `BreadcrumbList` schema.

---

## robots.txt (delivered)

- `User-agent: *` allows all; blocks only private/parameterized patterns (future-proofing).
- Explicit `Googlebot` + `Googlebot-Image` allow; **CSS/JS/images are never blocked** (required for rendering & ranking).
- `Google-Extended`, `Bingbot`, and major AI/search bots allowed to aid AI-Overview citations. `GPTBot` allowed by default — flip to `Disallow: /` if you want to opt out of AI training.
- `Sitemap:` directive points to the XML sitemap.

## sitemap.xml (delivered)

- 5 canonical, indexable URLs with `lastmod`, `changefreq`, and priorities (1.0 home, 0.8 how-it-works, 0.5–0.6 trust pages). Update `lastmod` whenever content changes.

---

## Overall Google SEO Health Report

**Strengths now in place**
- Unique titles/descriptions/canonicals on every page; one H1 each.
- Rich structured data (Organization, WebSite, WebApplication, FAQPage, HowTo, AboutPage, BreadcrumbList).
- Clean internal-linking cluster; semantic HTML; mobile-first; accessible labels/ARIA.
- Lightweight, emoji/CSS visuals → favorable Core Web Vitals baseline.
- Honest disclaimers/privacy → important for this YMYL-adjacent topic.

**Highest-impact improvements to make next**
1. **Core Web Vitals — replace the Tailwind CDN.** The `cdn.tailwindcss.com` script is render-blocking and ships unused CSS. Compile a minimal Tailwind build (or inline critical CSS) and `defer` non-critical JS. Target LCP < 2.5s, CLS < 0.1, INP < 200ms.
2. **Create `og-image.png` (1200×630)** — branded skull + "ExpireOnDate.com / Death Date Calculator" — referenced by every page's OG/Twitter tags. Add a `favicon.ico` / `apple-touch-icon.png` too.
3. **Clean URLs** — configure the server to serve `/how-it-works` (no `.html`), then update canonicals + sitemap and 301 the `.html` versions.
4. **Add real author + reviewer** on `about.html` (name, bio, photo) and a byline/`datePublished`/`dateModified` on `how-it-works.html` to strengthen E-E-A-T.
5. **Grow the topical cluster** — add articles like "Life expectancy by country (2026)", "What is a death clock?", "Memento mori, explained" to capture informational queries and funnel to the tool.

---

## Post-Optimization Action Plan (exact steps)

1. **Upload** all files to the web root of expireondate.com (`index.html`, the 4 sub-pages, `robots.txt`, `sitemap.xml`) and add `og-image.png` + favicons.
2. **Verify** the property in **Google Search Console** (domain property preferred). Pick www vs non-www and 301-redirect the other; set HTTPS canonical.
3. **Submit** `https://expireondate.com/sitemap.xml` in GSC → *Sitemaps*.
4. **Request indexing** for each URL via the **URL Inspection** tool (home + how-it-works first).
5. **Test rich results** with the **Rich Results Test** and **Schema Markup Validator** (FAQ, HowTo, Breadcrumb, Organization).
6. **Check rendering** with the **Mobile-Friendly Test** and **PageSpeed Insights**; act on CWV item #1 above.
7. **Monitor** GSC *Pages (Coverage)*, *Core Web Vitals*, and *Enhancements/Rich results* reports weekly for the first month.
8. **Link GA4** to Search Console for query + behavior data (use a consent-mode setup if you add analytics).
9. **301 redirects:** if you move to clean URLs later, redirect `*.html` → extensionless versions and update the sitemap.
10. **Freshness:** review content quarterly; bump `lastmod` and the "Last updated" dates when you do.

---

## Validation performed locally

- All JSON-LD blocks parse as valid JSON.
- Every page has exactly one `<h1>`, a unique `<title>`, a self-referencing `<canonical>`, and OG/Twitter tags.
- The homepage calculator engine passes a JavaScript syntax check, and the calculation/share/calendar logic was unit-tested in Node.

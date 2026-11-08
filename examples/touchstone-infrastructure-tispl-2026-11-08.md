# SystemScout report: Touchstone Infrastructure and Solutions Pvt Ltd (TISPL)

Run date: 8 November 2026. Mode: website only.
Input: https://tispl.in/

---

## 1. Verdict line

**Touchstone (TISPL) | Lead: Touchstone Lump-Sum Desk | Pattern F + D | Score 81/100 | Confidence MEDIUM**
Pitch as lead. Decision maker is named publicly (see section 13). Note the branch count and staff size flags in the disqualifier check, so use email and LinkedIn to the MD, not the owner-letter campaign.

---

## 2. Business card

| Item | Finding | Tag | Source |
|---|---|---|---|
| What they are | Turnkey commercial interior design and build contractor, with civil and infrastructure scope | SEEN | tispl.in/about/, /services/ |
| Services | Design and Build, Turnkey Contracting, Interior Contracting, Civil and Infrastructure | SEEN | /services/ |
| Scope | Space planning, 3D rendering, MEP (HVAC, electrical, plumbing, fire fighting), civil and partition works, custom furniture, acoustics, lighting, handover | SEEN | /services/ |
| Scale claims | 300+ projects, 40 lakh+ sq ft built, 85% repeat customers, 25+ awards, since 2007 | SEEN (own claims) | homepage |
| Projects | 30 listed portfolio projects, for example TCS Navalur 45,000 sq ft, Nidec 13,500, Pinnacle 17,000, Tata Electronics 8,000, all design and build | SEEN | /projects-by-commercial-interiors-contractors/, /blogs/portfolio/ |
| Clients (logos) | Amazon, Capgemini, Atos, Autoliv, Blue Star, Daimler, Flipkart, Wipro, Tata Steel, BPCL, Reliance, Nissan, Knight Frank | SEEN (logos, not contracts) | /about/ |
| Awards | "1 Million Safe Work Hours" appreciation from Amann and Blue Star; Daimler "Quality and Service" award; Saint-Gobain Silver Partner | SEEN | /awards-recognition/ |
| Offices | Chennai (Ambattur HQ), Gudur (AP), Saroornagar (Telangana), Bengaluru (Indira Nagar); also operates in Kerala | SEEN | /contact/, /about/ |
| Pricing posture | Fit-out typically ₹1,800 to ₹4,500+ per sq ft; "guaranteed lump-sum budget during the initial design phase" | SEEN | /blogs/ FAQ |
| Tools named | Primavera and MS Project for scheduling | SEEN | /commitments/ FAQ |
| People | Vinoth Kumar P (Managing Director, M.Arch), Ramkumar S R (Director, Business Development), Balaji Subashchandran (Director, Strategic Integration), Vinod Kumar V (Regional Head, Design and Build), Senthilkumar A (Sales Head), Sakthi Vel S (AGM Projects) | SEEN | /about/ |
| Staff count | Not published | not found | none |
| Hiring | Regularly recruits 3D visualisers, interior designers, project managers, site engineers, MEP engineers, procurement managers, BD leads; no open roles listed | SEEN | /careers-3/ |
| Enquiry | Web form (name, company, email, phone, location, project type, approximate area), email projects@tispl.in, WhatsApp number, reply in 24 to 48 business hours | SEEN | homepage, /contact/ |

---

## 3. Prediction card

| Prediction | Confidence | Clue |
|---|---|---|
| Email on Google Workspace; website on WordPress built by an agency (MEDiAMAX); no CRM or client portal | High | MX records point to Google; page source shows WordPress, Elementor, Slider Revolution; footer credit; no login found |
| Every bid is a hand built BOQ in Excel, priced from the estimator's memory and past project files | Medium | Peers and Indian job ads for fit-out QS roles describe BOQ and RA bills in Excel; a lump-sum promise needs a priced BOQ before award |
| Margin on a fixed lump-sum job is decided in the first estimate and leaks through variations, re-work and sub-contractor overruns; it is seen only after handover | Medium | Lump-sum guarantee on the site; many trades (civil, MEP, partitions, furniture, acoustics) sub-contracted across 5 states |
| Running bills, vendor work orders and material indents are tracked per project in Excel and Tally, with measurement sheets approved by site engineers | Medium | Procurement managers and site engineers are standing hiring roles; multi-city sites |
| Corporate clients (Amazon, Daimler, Blue Star) require safety records, QC checklists, as-built drawings and handover files per site | Medium | "1 Million Safe Work Hours" awards; QC checklist described in the commitments page |
| The estimator and regional design heads carry the cost and schedule judgement that wins fixed price bids | Medium | 19 years in business, regional heads named |

---

## 4. Peer comparison

- **Boqos** (an AI quote to cash product for interior fit-out and design-build firms) already sells BOQ to proposal to invoice for a few thousand rupees a month. It is generic: it does not hold Touchstone's 300 past projects, rates, sub-contractor history or client safety requirements.
- **Odoo Project BOQ** and Excel BOQ templates cover estimating only or need heavy set-up.
- Peers such as Design Arc Interiors advertise "fixed BOQ assurance", and iKraft and IBS sell turnkey fit-out across the same cities. Whoever prices a lump sum fastest and holds the margin wins bids. Boqos-style tools raise the bar for quoting speed, so Touchstone's edge must come from its own data.

---

## 5. Chain and leaks

**Predicted chain:** Enquiry from corporate real estate or consultant → site visit and area survey → concept and space plan → BOQ and lump-sum price → negotiation → award → detailed design and drawings → sub-contractor and vendor work orders → procurement and delivery → site execution by trade → measurement and running bills → snag list and handover documents → final bill and retention.

**Top three leaks**
1. **Pricing a lump sum from memory.** 300+ finished jobs exist, but the next price is built bottom up in Excel. Evidence: lump-sum promise and cost-per-sq-ft claim on the blog; estimator-heavy hiring is predicted.
2. **Budget versus actual is seen late.** Sub-contractor bills, material and variations hit the project after the price is fixed. Evidence: fixed price model, many trades, five states. INFERRED.
3. **Handover paperwork per site.** QC checklists, as-builts, O and M files and safety records for MNC clients. Evidence: awards for safe work hours and QC checklist text.

---

## 6. The system

### Touchstone Lump-Sum Desk
**Promise:** Price every fit-out enquiry as a lump sum in a day from your own 300 past projects, then watch each project's margin against that price while it is being built.

**What we would build for you**
1. A rate memory built from your past projects: cost per sq ft and per trade for offices, cafeterias, labs and showrooms, by city and by finish level.
2. A quote builder that takes the area, floor plan and spec from an enquiry, drafts the BOQ and lump-sum price using those rates, and flags unusual items for your estimator.
3. A project budget that locks that price and compares it with sub-contractor work orders, material purchases and running bills as they are raised.
4. A margin alert per project and per trade ("false ceiling is 12% over budget on Nidec style jobs") that reaches the project manager early.

**Expertise it captures:** the estimator's and regional heads' rate and risk judgement.
**What it replaces:** the Excel BOQ and cost sheet per project and the monthly review of Tally for margin.
**Catalogue blocks inside:** Quote generation from RFQ, three-way match for vendor bills, spend anomaly detection, knowledge layer (Pattern G).
**Phase 1 slice:** the quote builder alone, seeded from public project data. Phase 2: budget versus actual.

---

## 7. Specificity gate result

| Check | Result |
|---|---|
| Named for company and pain | Pass (Touchstone Lump-Sum Desk) |
| Two real details | Pass (lump-sum guarantee and ₹1,800 to ₹4,500 per sq ft claim; TCS Navalur, Nidec, Pinnacle project sizes) |
| One concrete moment | Pass (estimator pricing a 20,000 sq ft Bengaluru office the night before a client's bid deadline, with no one sure what the last similar job cost) |
| Says what it replaces | Pass (Excel BOQ and cost sheet) |
| Swap test | Pass (relies on Touchstone's own rate history, lump-sum model and sub-contractor data) |
| No banned phrases | Pass |

---

## 8. Two backups

| System | One line | Score |
|---|---|---|
| **Touchstone Handover Desk** (Pattern A) | Snag list with photos, safety records, QC checklists, as-builts, O and M files and warranty papers collected per site and issued as one handover pack to Amazon, Daimler or Blue Star style clients. | 70 |
| **Touchstone Vendor Desk** (Pattern D, procurement) | Vendor and sub-contractor register with rates, work orders, three-way match against measurement and bill, and performance score across Tamil Nadu, Karnataka, Telangana and Andhra Pradesh. | 70 |

---

## 9. Score table

| Criterion | Max | Lump-Sum Desk | Handover Desk | Vendor Desk |
|---|---|---|---|---|
| Pain visible on public evidence | 20 | 15 | 13 | 12 |
| Expertise at risk | 15 | 13 | 7 | 9 |
| Time saved | 15 | 13 | 10 | 10 |
| Speed to demo slice | 10 | 8 | 8 | 8 |
| Low change burden | 10 | 8 | 7 | 7 |
| Fit with proven pattern | 10 | 8 | 8 | 9 |
| Recurring revenue | 10 | 8 | 8 | 8 |
| Buyer reachable | 5 | 5 | 5 | 5 |
| Swap test | 5 | 3 | 4 | 2 |
| **Total** | 100 | **81** | **70** | **70** |

---

## 10. Pitch hook and copy

**Hook:** You promise a guaranteed lump sum on every fit-out. What if each price came from your own 300 finished projects, and you saw the margin slipping while the site is still running?

**Letter or email paragraph (4 points)**
- You quote corporate fit-outs as a lump sum, from TCS Navalur size jobs down to small labs.
- The price is only as good as the estimator's memory of the last similar job.
- We would build Touchstone Lump-Sum Desk to price from your own past projects and warn you when a live project drifts from its budget.
- We can show it on two or three of your past quotes before you decide anything.

**Email (to the MD or Director, Business Development)**
Subject: Pricing fit-outs from your own 300 projects

Hello Vinoth,
You promise clients a lump-sum price at the design stage. That price is built from what your estimator remembers of earlier jobs.
We build a rate memory from a firm's finished projects, a quote builder on top of it, and a margin alert while the site is running.
Happy to try it on two or three of your past quotes so you can compare with what your team sent.
Could we take 20 minutes next week?
Kishore, ClickFieldAI

**LinkedIn**
Saw Touchstone's lump-sum model and the work for Nidec, TCS and Tata Electronics. Pricing each one from memory is hard. We help fit-out firms price from their own project history and spot margin drift early. Open to a short look on a few of your past quotes?

---

## 11. Demo plan (48 hour slice)

- Load the 30 portfolio projects from tispl.in (name, state, category, size, status) as the project history, with sample cost per trade ranges seeded from the public ₹1,800 to ₹4,500 per sq ft range.
- Enter three mock enquiries: a 20,000 sq ft IT office in Bengaluru, a cafeteria in Chennai, a showroom.
- Show the drafted BOQ, the lump-sum price, similar past jobs side by side, and the flagged risky items.
- Show a mock live project (Nidec style) with budget versus work orders and one trade in red.
- Output a one page quote summary for the estimator.

---

## 12. Discovery questions

1. How is a lump-sum price built today, who builds it, and how long does it take for a 20,000 sq ft office?
2. After a project closes, how do you know what margin you made and on which trades?
3. How many sub-contractors and vendors do you work with across the five states, and how are their work orders and running bills tracked?
4. Which clients require safety records, QC checklists and as-built files at handover, and who compiles them?
5. Do you use Tally, Primavera or any project software beyond MS Project, and do you plan to?

---

## 13. Risks and sources

**Disqualifier checks**
| Check | Result |
|---|---|
| MNC subsidiary | Pass (private Indian company, 2007) |
| Above about 150 staff | Unknown, possible with site teams across five states; confirm |
| More than two branches | **Flag.** Four office addresses plus Kerala presence. Do not use the owner-letter campaign; use email and LinkedIn to the MD |
| Decision maker identifiable | Pass: Vinoth Kumar P, Managing Director (LinkedIn linked from tispl.in/vinoth-kumar-p/); Ramkumar S R, Director Business Development |
| Modern system already doing the job | No sign of one |

**Other risks**
- Boqos and similar fit-out software already pitch BOQ and quote to cash, so the pitch must rest on Touchstone's own rate history, sub-contractor data and lump-sum model, not generic estimating.
- Client logos on the site are not proof of current contracts; do not name them as clients in outreach beyond the portfolio projects.
- The site contains inconsistencies (18+ vs 19+ years, an Anna Nagar HQ mention vs an Ambattur address, an "spl.in" email in an FAQ); a quick website clean-up is a possible small side offer, not a lead.
- Rate memory quality depends on whether their past quotes and final costs are stored in a usable form. Test this on the first call.

**Research log**
- Site pages read: https://tispl.in/ , /about/ , /services/ , /commitments/ , /projects-by-commercial-interiors-contractors/ , /awards-recognition/ , /careers-3/ , /contact/ , /blogs/ , /vinoth-kumar-p/ , four portfolio pages (TCS Navalur, Nidec, Pinnacle, Tata Electronics), and the 2025 E-brochure PDF (text not readable)
- Tech check: MX records → Google Workspace; page source → WordPress, Elementor, Slider Revolution, Google tag, WhatsApp link
- Search "tispl.in company" → no third party listing found for this company (results were other TISPL-named firms, not used)
- Peers and tools: [Boqos quote-to-cash for fit-out](https://moonproduct.pages.dev/boqos), [Odoo Project BOQ](https://probuseappdemo.com/blog/odoo-apps-3/project-boq-construction-contracting-1763), [Excel BOQ template market](https://constructionestimatorindia.com/?p=8595), [iKraft](https://ikraft-co-in.pages.dev/), [IBS fit-outs](https://ibs-website.pages.dev/services/general-contracting/interior-fit-outs), [Design Arc Interiors](https://clutch.co/profile/design-arc-interiors), [EPS Interior Industries](https://brojure.com/eps-interior-industries)
- Job-ad signals for fit-out QS and billing roles: [QS Engineer, AMS Project Consultants](https://jobs.weekday.works/quantity-surveyor-qs-engineer-at-ams-project-consultants-pvt-ltd-wkdyokw82q), [Interior QS and Billing Manager](https://jobs.weekday.works/interior-qs-and-billing-manager-at-interex-arch-designs-pvt-ltd-wkdy6z9iw3)

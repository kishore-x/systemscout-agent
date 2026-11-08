# SystemScout report: MB Metallic Bellows Pvt Ltd

Run date: 6 November 2026. Mode: website only test run (no prior project knowledge used).
Input: MB Metallic Bellows, Oragadam, Chennai → site found at https://www.mbmetallicbellows.com

---

## 1. Verdict line

**MB Metallic Bellows | Lead: MB Bellows Quote Desk | Pattern F + G | Score 83/100 | Confidence MEDIUM**
Pitch as lead. Decision maker not named publicly, so first touch goes to the company and asks for the MD or design head.

---

## 2. Business card

| Item | Finding | Tag | Source |
|---|---|---|---|
| What they make | Expansion joints and metal bellows: tied lateral, universal, gimbal, pressure balanced, reinforced, rectangular, tuyere stock bellows, 6 m bellows | SEEN | products.html |
| Range | 100 NB up to 8 m diameter; stainless, high nickel and carbon steel | SEEN | index.html |
| Codes | ASME, EJMA, PED, IBR, ISO; inspection to ASME, ASTM, DIN, IS | SEEN | aboutus.html |
| Certifications | ISO 9001:2015, ASME U stamp, PED enabled | SEEN | index.html |
| Customers | BHEL, NTPC, NPCIL, SAIL plants (Bhilai, Durgapur, Rourkela), Tata Steel, JSW, RINL, Essar, Mazagon Dock, Cochin Shipyard, GRSE, CPCL, IOCL, BPCL, HPCL, SPIC, FACT, GSFC, IFFCO | SEEN | clients.html |
| Consultant approvals | Kvaerner Power Gas, Humphreys & Glasgow, MECON, M N Dastur, Tata Consultants, Uhde India, VOEST Alpine, Petrofac | SEEN | clients.html |
| Third party inspection | Lloyds Register, Bureau Veritas, DNV, TUV, SGS, PDIL, Tata Projects | SEEN | clients.html |
| History | Three decades; erstwhile industrial division of Metallic Bellows (I) Pvt Ltd | SEEN | aboutus.html |
| Plant | Plot 47 & 48, SIPCOT Oragadam, Chennai | SEEN | contactus.html |
| How they win work | Engineer to order. Each job is designed against customer process data (enquiry form asks for NB, pressure, temperature, movements, end connection, media) | INFERRED from request.html |
| Scale | Single plant, no headcount published; hiring quality, design and production managers | SEEN (hiring) / size unknown | index.html |

---

## 3. Prediction card

| Prediction | Confidence | Clue |
|---|---|---|
| Email runs on Google Workspace; a Gmail address is also used for enquiries | High | MX records point to Google; mbmetallicbellows@gmail.com on index.html |
| Enquiries arrive mostly as email and tender documents from PSUs and EPC consultants, with spec sheets and drawings attached | High | Client list is PSU and consultant heavy; web form has no file upload |
| Each enquiry is sized by a design engineer using an EJMA calculation sheet or in house program, then costed in Excel | Medium | Site mentions "computerized simulative techniques"; peers and vendors (SPULLOWS) describe Excel based enquiry to quote as the norm |
| Design and quoting knowledge sits with a few senior people; losing one slows every quote | Medium | Actively hiring a Design manager and Quality manager; three decades of history |
| Every order carries a heavy document pack: QAP, MTCs, RT/PT/hydro reports, TPI call letters and release notes | Medium | Seven TPI agencies named, PSU and nuclear customers, ASME U stamp |
| Accounts likely on Tally; no visible CRM or customer portal | Low | No portal, chat or login on site; static 2020 website |

---

## 4. Peer comparison

- **Witzenmann India** offers an online calculation program with stored CAD data, and **Belman** offers BelMaker Light, a product finder, plus a downloadable inquiry sheet.
- MB's site has a design data form but no instant response, no selection help and no file upload for spec sheets (SEEN on request.html).
- PSU and EPC buyers compare response speed and technical clarity across bidders, so faster, cleaner technical offers are a visible edge. Off the shelf tools like SPULLOWS exist, but they are generic and do not hold MB's own past designs, prices or consultant specific requirements.

---

## 5. Chain and leaks

**Predicted chain:** Enquiry or tender (email, consultant spec) → technical review against code and movements → design sizing (convolutions, plies, material) → costing → technical and commercial offer → PO and drawing approval by consultant → material procurement → forming, welding, NDT → TPI inspection → document pack → dispatch → payment.

**Top three leaks**
1. **Enquiry to offer is slow and person dependent.** Every enquiry needs a design and a cost before a price can go out. Evidence: design data form on request.html; hiring a Design manager (index.html).
2. **Document and inspection load per order.** QAPs, NDT reports and TPI release across seven agencies and many consultants. Evidence: clients.html inspection and consultant lists.
3. **Past designs are not reused systematically.** Thirty years of jobs across similar NB, pressure and movement ranges, likely stored as files and drawings. INFERRED, goes to discovery questions.

---

## 6. The system

### MB Bellows Quote Desk
**Promise:** Turn a consultant enquiry into a sized, priced technical offer the same day, using MB's own thirty years of designs.

**What we would build for you**
1. An enquiry reader that pulls NB, pressure, temperature, movements, media and end connection out of emails, PDFs and tender specs, and fills MB's design data sheet automatically.
2. A design match that finds the closest past MB bellows by size, rating and movement, and proposes convolutions, plies and material for the engineer to confirm against EJMA.
3. Costing from MB's own rates for sheet, flanges, tie rods, forming, welding, NDT and TPI, producing a priced offer with a GA sketch and deviation list.
4. An offer register showing every open enquiry, who is working on it, and which consultant or PSU it is for.

**Expertise it captures:** the design manager's sizing judgement and the estimator's pricing rules.
**What it replaces:** the email inbox, the EJMA sheet run by hand per enquiry, and the Excel costing file.
**Catalogue blocks inside:** Quote generation from RFQ emails, Sales order entry from email and PDF, Smart RFx (reverse use), knowledge layer (Pattern G).

---

## 7. Specificity gate result

| Check | Result |
|---|---|
| Named for company and pain | Pass (MB Bellows Quote Desk) |
| Two real details | Pass (EJMA design inputs from their form; BHEL, NTPC, IOCL and consultant approvals) |
| One concrete moment | Pass (design engineer re sizing a lateral bellows for a refinery tender late at night) |
| Says what it replaces | Pass (inbox, hand run EJMA sheet, Excel costing) |
| Swap test | Pass (built on MB's past designs, rates and consultant list) |
| No banned phrases | Pass |

---

## 8. Two backups

| System | One line | Score |
|---|---|---|
| **MB Inspection Dossier Desk** (Pattern A) | Per order QAP, NDT results, TPI call and release tracking for LR, BV, TUV and others, compiling the final data book for dispatch automatically. | 76 |
| **MB Design Memory** (Pattern G) | Searchable library of every past bellows design and drawing by size, rating, movement and customer, so new engineers reuse proven designs. | 70 (best folded into the Quote Desk as Phase 2) |

---

## 9. Score table

| Criterion | Max | Quote Desk | Dossier Desk | Design Memory |
|---|---|---|---|---|
| Pain visible on public evidence | 20 | 17 | 15 | 10 |
| Expertise at risk | 15 | 14 | 9 | 14 |
| Time saved | 15 | 13 | 12 | 10 |
| Speed to demo slice | 10 | 9 | 8 | 7 |
| Low change burden | 10 | 8 | 8 | 8 |
| Fit with proven pattern | 10 | 9 | 10 | 8 |
| Recurring revenue | 10 | 8 | 8 | 7 |
| Buyer reachable | 5 | 1 | 1 | 1 |
| Swap test | 5 | 4 | 5 | 5 |
| **Total** | 100 | **83** | **76** | **70** |

---

## 10. Pitch hook and copy

**Hook:** Every bellows enquiry from a refinery or steel plant needs a design before it gets a price. What if that took an afternoon, not a week?

**Letter paragraph (4 points)**
- You size every expansion joint against the customer's pressure, temperature and movements before you can quote.
- Thirty years of those designs already sit in your files.
- We would build MB Bellows Quote Desk to read each enquiry, match it to your closest past design and draft the priced offer for your engineer to confirm.
- We can show it working on a few of your past enquiries before you decide anything.

**Email**
Subject: Faster bellows offers for MB

Hello,
Every enquiry you get from BHEL, NTPC or a refinery consultant needs a design before it gets a price.
We build a quote desk that reads the enquiry, finds your closest past bellows and drafts the offer for your design team to approve.
Happy to run it free on 10 of your past enquiries so you can compare it with what your team sent.
Could we take 20 minutes with you or your design head next week?
Kishore, ClickFieldAI

**LinkedIn**
Saw MB's work across BHEL, NTPC and the SAIL plants. Every one of those bellows was designed before it was priced. We help engineer to order makers turn that into a same day offer using their own past designs. Open to a short look on a few of your past enquiries?

---

## 11. Demo plan (48 hour slice)

- Load MB's eight product types, materials (SS, high nickel, CS), size range 100 NB to 8 m, codes (EJMA, ASME, PED, IBR) and a sample of named customers and consultants.
- Feed three mock enquiries written like MB's own request form: a tied lateral bellows for a turbine to condenser line (power), a tuyere stock bellows (steel), a universal bellows for a refinery line.
- Show extraction into the design sheet, a suggested design from a seeded "past designs" table, a cost build up, and a PDF technical offer.
- Close with the offer register view.

---

## 12. Discovery questions

1. When a consultant enquiry arrives, how long until the offer goes out today, and who touches it?
2. How do you size a bellows now: an EJMA sheet, in house software, or a purchased package?
3. Where do past designs and drawings live, and how often does a new job closely match an old one?
4. How many enquiries a month do you get, and what share become orders?
5. Who pulls together the QAP, NDT reports and TPI documents for dispatch, and how long does that take per order?

---

## 13. Risks and sources

**Disqualifier checks**
| Check | Result |
|---|---|
| MNC subsidiary | Pass (Indian private company, former division of Metallic Bellows (I)) |
| Above about 150 staff | Unknown, single plant, likely pass |
| More than two branches | Pass (one plant) |
| Decision maker identifiable | **Not found publicly.** A mailbox name appears in a link on index.html; confirm the MD through MCA records or a call |
| Modern system already doing the job | No sign of one; static 2020 site |

**Other risks:** some contact links on the site point to an older domain (metallicbellows.in), so verify the right email before sending. Off the shelf bellows quoting tools exist (SPULLOWS); the pitch must stay on MB's own data and consultant workflows.

**Research log**
- Site pages: https://www.mbmetallicbellows.com/ (index, aboutus, products, clients, contactus, request, vendor .html)
- MX lookup: `dig MX mbmetallicbellows.com` → Google mail servers
- Search: company + Oragadam → [CemNet profile](https://www.cemnet.com/b2b/company/4453), [IndiaMART](https://m.indiamart.com/company/2226699), [Engineering.com profile](https://jobs.engineering.com/jobs/company/252840/MB-Metallic-Bellows-Pvt.-Ltd.)
- Search: MD / founder / LinkedIn → no named leader found
- Search: careers / Naukri → no listings beyond the hiring line on the site
- Peers: [Belman India](https://www.belman.com/in/metallic-expansion-joints/), [Belman toolbox](https://www.belman.com/toolbox/), [Witzenmann India brochure](https://media.witzenmann.com/mediapool/documents/brochures/expansion-joints-witzenmann-india.pdf), [Flexican on IndiaMART](https://m.indiamart.com/flexican-bellowshoses), Lonestar Industries Chennai ([EnggPro](https://www.enggpro.com/company/lonestar-industries))
- Niche software: [SPULLOWS](https://www.slideshare.net/slideshow/spullows/30290255), [MACOGA bellows design](https://www.macoga.com/en/services/bellows-design-calculation), [Triad Bellows](https://www.triadbellows.com/?p=303)

---

## Test evaluation (for Kishore, not part of the pitch)

- What we actually built for MB was **MB OrderFlow**, a 10 stage enquiry to dispatch pipeline (Pattern A).
- SystemScout led with a **Quote Desk** (Pattern F) and put the Pattern A **Inspection Dossier Desk** second at 76, which together cover the OrderFlow scope.
- It found the same evidence we used: the client list, ASME U stamp, PED, TPI agencies and EJMA inputs.
- Verdict: partial match. The agent leans toward the quote engine because the playbook calls it the strongest offer. If you want it to favour the full order pipeline for engineer to order makers with heavy TPI load, raise "document and inspection load" in the signals or rubric.

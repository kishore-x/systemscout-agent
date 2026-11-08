# CLICKFIELDAI | INTERNAL PLAYBOOK (MASTER)

**How we build. How we solve. How the agent pitches.**

The complete operating description of ClickFieldAI projects, and the blueprint for an agent that reads a company website and finds the one system worth pitching.

Prepared for **Kishore KV, Founder**
Date **6 November 2026**
Source: our shared work on MB OrderFlow, TNTH LIMS, Paravalves, Qualtech OS, the IVF systems, the procurement catalogue and the outreach campaigns, plus the website only research mode added on 6 November 2026.

This file replaces `pitch-agent-playbook.md` and `clickfieldai-internal-playbook-source.md`.

### Contents

- Part 1 The one page version
- Part 2 How we run a project, start to finish
- Part 3 How we solve problems: the pattern library
- Part 4 The procurement and operations catalogue
- Part 5 The agent: website in, pitch out (including website only research mode)
- Part 6 Worked examples
- Part 7 The master prompt, data model and build plan
- Appendix Other builds and reusable bases

---

## PART 1. The one page version

ClickFieldAI is an operational transformation consultancy. We do not sell software first. We read how a business actually runs, find the place where time or expertise leaks, and build one named system that closes that leak. The technology is chosen last.

### What makes our work different

- **We start from the client's own workflow.** MB OrderFlow was a ten stage engineer to order pipeline using their bellows types, materials, TPI agencies and certificate pack, not a generic order module.
- **We sell a named system, not an ERP.** MB OrderFlow, Qualtech OS, ViryaSys OS, Energy Intelligence, Patient Journey, PharmaLIMS. Each name tells the owner what it does for them.
- **We pick one visible pain first.** Quote every enquiry in 10 minutes, not 2 days. Sample to Certificate in one system. From Enquiry to Sign off in one system.
- **We capture expertise, not only data.** The estimator's pricing judgement, the QA reviewer's acceptance rules, the senior engineer's technical review. Systems that hold this are hard to leave and easy to value.
- **The client owns it.** Full ownership, full build documentation, a two year support contract, and a handover to another agency if we ever cannot continue.
- **We stay credible.** We removed an unrealistic 500x claim from the MB material. We cut Pandam down to its core loop. Scope and claims stay honest.

> **THE TEST FOR ANY IDEA WE PITCH**
> 1. Can the owner picture the pain within five seconds of reading it?
> 2. Could we show a working slice using only public information about their company?
> 3. Would the pitch read the same for their competitor with the name swapped? If yes, it is too generic. Rewrite it.

### What the agent has to do, in one sentence

Take only a company website, research the company and its peers on the open web, predict how that company earns and delivers and which tools it runs on, find where its time and expertise leak, and return one specific, named system (plus two backups) with the evidence, a pitch hook, a demo plan and ready copy, so you can reach out the same day. Never a general ERP.

---

## PART 2. How we run a project, start to finish

### 2.1 The operating framework

ClickFieldAI Operating System v1.0 is a six stage framework. Every engagement, from a ₹48,993 website to a ₹3,40,000 hospital system, follows it, with the depth scaled to the size of the job.

| Stage | What we do | What it produces |
|---|---|---|
| **1 Observe** | Read the website, talk to the owner, watch how an order, patient, sample or project actually moves. | A plain description of the current state in the client's own words. |
| **2 Map** | Draw the chain stage by stage, with who touches what, in which tool (WhatsApp, Excel, email, paper). | A workflow map, such as the 10 stages of MB or the 8 gated stages of the manufacturing letters. |
| **3 Diagnose** | Find the leaks: repeated typing, chasing, lost documents, knowledge held by one person. | A short list of problems with a time or rupee figure attached. |
| **4 Redesign** | Design the future flow on paper first. Remove steps before adding software. BPA, BPM, Lean and Six Sigma thinking sits here. | The target flow, role by role, and the one system that carries it. |
| **5 Engineer** | Build the system, seeded with the client's real clients, materials and documents so the demo feels like theirs. | Working software, documentation and training. |
| **6 Optimize** | Monthly feedback meetings, ticketing, small enhancements, then AI features once the data is clean. | A system that improves after go live. |

### 2.2 The delivery sequence we actually follow

1. **Site read and first call.** We study the website and the owner's role before the call. The call confirms the chain and the pain.
2. **Proposal.** Fixed structure: Overview, Cloud Data Security, Scope of Work, Investment, Payment Schedule, Ongoing Maintenance, Next Steps. Valid for two weeks. Branded to the client's site where it helps (MB navy and teal, Paravalves crimson and charcoal, TNTH green and black) but never a typical looking document.
3. **Document set.** Proposal, service invoice with 18% GST, Client Service Agreement, standalone NDA, a data security document, and a technical cloud architecture note when asked. Invoice and proposal go out as one combined PDF.
4. **Build.** Weekly online progress calls, project visibility in ClickUp or Notion, and a demo that runs on the client's real data.
5. **Trial, training, go live.** A 15 day trial period in the agreement, role based training for the client team, then go live.
6. **Post deployment support.** Two year contract from day one, monthly feedback loop, ticketing with 24 to 48 hour resolution, extension on the same monthly basis.

### 2.3 The stack we reach for

| Layer | Default choice and the reason |
|---|---|
| **Web applications** | Next.js (App Router, Server Actions), Prisma ORM, PostgreSQL in production (SQLite locally), JWT session auth, Tailwind UI, jsPDF for certificates and documents. Proven on TNTH LIMS. |
| **Data and AI** | Supabase with pgvector for retrieval, sentence transformers, Llama 3.3 via Groq or Claude through the API, FastAPI where a Python service is needed. This is the base of the Manufacturing Intelligence OS. |
| **Automation** | n8n for workflows, Gmail and WhatsApp for intake and alerts, Adobe Sign for agreements. Proven on the accounting firm onboarding system. |
| **Mobile** | Android and iOS apps for field sales and operations (Fermier, Ranger). Store listing fees are paid by the client. |
| **Hosting and data** | Cloud by default, on premise when the client demands it (Dr. Archana HMIS). DPDP Act 2023 is the compliance reference in India. HIPAA does not apply. |
| **Demo resilience** | Every demo runs on a laptop without internet: SQLite or PGlite DB-less mode (Paravalves `DEMO_DB=pglite`), seeded demo stores with role logins (AFOS), demo content fallback when Supabase or Docker is down (Udaan, Fermier), zero dependency builds where a framework is overkill (Sambaha, Qualtech Inventory). |
| **Our own operations** | Google Sheets for finance, Notion for operations, ClickUp for delivery tracking, Airtable for outreach data. Claude is connected to all of them. |

### 2.4 Commercial pattern

Use this table to calibrate. Pricing stays out of cold outreach and out of the agent's pitch output. It belongs in the proposal after a conversation.

| Client | System | One time | Payment split |
|---|---|---|---|
| **MB Metallic Bellows** | MB OrderFlow, 10 stage order to dispatch | ₹2,60,000 | 50 / 20 / 30 |
| **TNTH** | LIMS and QMS, multi industry lab | ₹1,60,000 | ₹50,000, ₹55,000, ₹55,000 |
| **Paravalves** | Unified operations platform | ₹1,70,000 | 50 / 50, plus ₹14,000 a month |
| **Qualtech Engineers** | Qualtech OS, tendering to job costing | ₹1,60,000 | 60 / 40 |
| **Dr. Archana IVF** | IVF clinic management system (HMIS) | ₹3,40,000 | 50 / 20 / 30 |
| **Chennai Analytical Labs** | LIMS and QMS | ₹1,55,000 | As agreed, ₹15,000 a month first month |
| **Fermier Agency** | Sales and Operation mobile app | ₹1,55,000 + GST | 60 / 40 |
| **Raghav Engineering** | ERP, AI content engine, website | ₹2,26,000 | Retainer discussed |
| **Pandam** | Core loop marketplace app | ₹1,25,000 | 80 / 20 |

Common terms: 18% GST on every invoice, even for GST exempt clients; proposals valid two weeks; AI token or API costs, when AI is added later, are billed to the client monthly on top of fees; monthly care is quoted separately once ongoing support needs are clear.

### 2.5 Support and continuity commitment

- Two year support contract, locked from day one, extended monthly after that.
- Monthly operational and feedback meetings with the client team.
- Ticketing system, with tickets aimed at resolution within 24 to 48 hours.
- If ClickFieldAI ever cannot continue: full ownership of working software, complete build documentation (plan and platforms used), and we set the client up with a software agency. We chose this over a refund policy.

---

## PART 3. How we solve problems: the pattern library

Every build we have done is a variation of a small number of patterns. The agent must think in patterns first, then name the system for the specific company. Each pattern below lists the shape of the problem, the build, and the expertise it preserves.

### 3.1 The eight patterns

| Pattern | Problem shape | What we build | Expertise it saves |
|---|---|---|---|
| **A Gated workflow, enquiry to sign off** | Engineer to order or made to order work moves through spreadsheets, WhatsApp and memory. | Stage gated pipeline with documents, approvals, role access and dispatch pack. MB OrderFlow, the 8 stage manufacturing pitch, Paravalves. | Technical review rules, material and standard choices, certificate pack know how. |
| **B Sample to certificate** | Labs track samples, analysts, results and reports on paper and Excel. | LIMS and QMS: intake, analyst assignment, testing, QA review, Certificate of Analysis. TNTH, CAL, AVM, Litmus, PharmaLIMS. | Test methods, acceptance limits, reviewer judgement. |
| **C Patient or customer journey** | Records scattered, follow ups missed, no complete picture of one person. | Journey record plus follow up engine. IVF HMIS, Patient CRM and Digital Skin Journal, doctor dashboards, WhatsApp confirmations. | Clinical protocols, doctor preferences, follow up cadence. |
| **D Lead to project to procurement** | EPC, solar, PEB and construction firms lose margin between the quote and the site. | Leads, tendering, projects, procurement, job costing, dashboards. ViryaSys OS, Qualtech OS, PEB pitch. | Estimating logic, vendor knowledge, costing rules. |
| **E Field sales and operations app** | Field staff report by call and photo; owners cannot see the day. | Mobile app for customers and operations side. Fermier, Ranger. | Territory and customer knowledge held by senior reps. |
| **F Quote engine from enquiries** | Enquiries arrive as email, PDF and WhatsApp; quotes take days. | AI reads the RFQ, pulls prices and drafts the quote in minutes, with a free pilot on 10 past RFQs. | The estimator's pricing judgement and past quote history. |
| **G Knowledge and intelligence layer** | Answers sit in a few senior heads and old documents. | Retrieval based assistant over SOPs, drawings, past jobs and quotes (Manufacturing Intelligence OS, IVF knowledge assistant for DFMC). | The whole point: tribal knowledge becomes searchable and teachable. |
| **H Onboarding and intake automation** | Every new client or patient triggers the same manual steps. | n8n flow with forms, agreements, e sign, folders, reminders. Accounting firm onboarding. | The firm's checklist and sequencing. |

### 3.2 How we solve a problem, in order

1. **Name the chain.** Write the real stages in the client's vocabulary: enquiry, technical review, quote, PO, material, fabrication, NDT, TPI inspection, documentation, dispatch.
2. **Find the single worst leak.** Pick the one a person feels every day. That becomes the headline, and the rest of the system is the support structure around it.
3. **Seed the demo with their world.** MB's demo carried BHEL, NTPC, CPCL, IOCL, JSW, RINL, NPCIL and BPCL as clients, and SS 321, SS 316L, Inconel 625 and Incoloy 800 as materials. This is what makes an owner say "this is ours".
4. **Extend before replacing.** For Viryasys we proposed extending the lead form they already had instead of building a new page. When a client has Excel or an old system, we import it and mirror their columns instead of forcing a re keying week.
5. **Ship the core loop, defer the clever part.** Pandam was cut to listing, want, offer, chat, deal and credits. AI matching was deferred. Multi party chains came later.
6. **Clean the master data first.** When a client has hundreds of messy items, normalize names, units, specs and grades, dedupe, then link vendors and price history before building on top. Inventory stays ledger based: stock is derived from movements, never edited directly.
7. **Make compliance visible.** Role based access, audit trail, certificates, DPDP Act clauses, data security documents. Regulated owners buy on this.
8. **Reuse the closest base.** Fork the nearest proven build (TraceForge to MB Bellows, Paravalves) instead of starting from zero.
9. **Write down the build.** Every system leaves with documentation, so ownership is real and continuity is credible.

### 3.3 Industry quick reference

| Vertical | Typical chain | Where expertise hides | Lead systems to test |
|---|---|---|---|
| **Engineer to order manufacturers (bellows, valves, pumps)** | Enquiry, technical review, quote, PO, material, fabrication, inspection, dispatch pack | Estimator and design engineer | Quote engine, MB style OrderFlow, certificate pack builder |
| **Testing and calibration labs** | Sample, analyst, test, QA review, certificate | Reviewers and method owners | LIMS and QMS, calibration due radar, NABL document control |
| **IVF and hospitals** | Enquiry, consult, cycle, procedure, follow up | Doctor protocols | Patient journey, doctor dashboard, knowledge assistant |
| **Skin and aesthetic centres** | Consult, treatment plan, sessions, review | Doctor treatment judgement | Patient CRM and skin journal |
| **Solar, EPC, PEB, construction** | Lead, site survey, design, BOQ, procurement, execution, handover | Estimating and site planning | Sizing calculator, project OS, procurement automation |
| **Real estate developers** | Layout, plot inventory, booking, payment schedule, registration | Sales head and site office | Plot and booking desk (Sambaha) |
| **Equipment dealers** | Enquiry, demo, order, delivery, service, spares | Senior field reps | Field sales and service app (Fermier) |
| **Distributors and traders** | Enquiry, quote, order, stock, dispatch, collection | Sales head price memory | Quote engine, order entry from WhatsApp, dead stock detector |
| **Logistics** | Booking, dispatch, tracking, POD, billing | Dispatch planner | Status updates, POD capture, billing reconciliation |
| **Architects and interiors** | Brief, design, BOQ, vendors, site, handover | Design and vendor judgement | Built Environment OS (ArchiSpine codename, AFOS build) |
| **Accounting and tax firms (US, UK)** | Lead, onboarding, documents, filing, billing | Partner workflow | Automated client onboarding |

---

## PART 4. The procurement and operations catalogue

You hold a catalogue of 101 systems (100 distinct, because tail spend clustering appears in two groups). The agent uses it as a menu of proven building blocks. It should combine two or three of these under one company specific name, never read them out as a list.

| Category | Count | Examples that sell fastest |
|---|---|---|
| **Buying, requisition and receiving** | 12 | PO creation from free text, supplier capacity alerting, goods receipt checks |
| **Invoicing and payments** | 10 | Three way match automation, duplicate invoice detection |
| **ESG and compliance** | 10 | Supplier compliance tracking, audit trail reports |
| **Procurement intelligence and planning** | 10 | Supplier delivery ETA prediction, inflation impact modelling |
| **Data and analytics** | 10 | Cross system dashboards, supplier flow visualisation |
| **Chatbot and help desk** | 10 | Procurement policy bot, invoice status bot, contract lookup bot |
| **Workflow orchestration and agentic AI** | 11 | Autonomous PO creation, exception management agent, SLA monitoring agent |
| **Spend analytics** | 10 | Maverick spend detection, spend anomaly detection, tail spend clustering |
| **Sourcing and contracting** | 10 | Smart RFx generation, bid evaluation, contract expiry and renewal radar |
| **Supplier management** | 8 | Supplier risk monitoring, performance scoring, vendor master data hygiene |

### 4.1 The eight with the strongest traction

Chosen for mid sized, founder led companies because each removes a daily, visible pain with fast return and little change in how people work.

| Domain | System | Why it lands |
|---|---|---|
| **Procurement** | PO creation from free text | Staff type "200 bearings, 3 weeks" and a PO is drafted. |
| **Procurement** | Three way match automation | PO, receipt and invoice matched; only mismatches reach a person. |
| **Supply chain** | Supplier delivery ETA prediction | Stops the habit of learning about delays after production halts. |
| **Supply chain** | Order and shipment status auto updates | Ends the "where is my order" calls. |
| **Inventory** | Reorder and shortage alerts | Flags items about to run out using usage and lead time. |
| **Inventory** | Dead and slow stock detector | Shows cash locked in stock as a rupee figure. |
| **Sales** | Quote generation from RFQ emails | Quotes in minutes, the strongest single hook for manufacturers and distributors. |
| **Sales** | Sales order entry from email, WhatsApp and PDF | Messy customer orders become clean entries. |

> **THE SINGLE STRONGEST OFFER SO FAR**
> Quote every enquiry in 10 minutes, not 2 days. The system reads RFQ emails, PDFs and WhatsApp, drafts the quote, and the risk reversal is a free pilot on 10 of the company's past RFQs.
> Best first segment: Tamil Nadu industrial valve and pump makers. Then US and UK distributors and component makers, found through Thomasnet and LinkedIn filters.

**Open action:** share the cleaned numbered list of all 101 systems so it can be converted into the agent's catalogue file with one line of pain, one line of fix and the best fit vertical for each.

---

## PART 5. The agent: website in, pitch out

**Working name:** SystemScout. Rename freely.

### 5.0 The input is only a website

The agent gets a URL and nothing else. No call notes, no contact, no known pain, no referral context. It must find the missing context itself by researching the company and similar companies on the open web, then predict how the company works and which tools it probably uses, and only then propose a system.

The output is always a **specific, named system for one concrete workflow**. A general ERP, "digital transformation", or "inventory plus invoicing plus dashboard" in the output counts as a failure.

### 5.1 Inputs

- Required: website URL.
- Optional, rarely present: contact name and role, LinkedIn URL, country, anything already known (a referral, an expo stall, a prior chat). The pipeline must work fully without these.

### 5.2 The pipeline

| Stage | What the agent does | Output |
|---|---|---|
| **0 Collect** | Fetches Home, About, Products or Services, Industries, Quality or Certifications, Careers, News, Contact, catalogue PDFs and any Login, Portal or Form pages. Notes tools visible in forms and footers. | Page text with source URLs. Flag if the site is thin or blocked. |
| **1 Research outside the site** | Runs the research in 5.3: web search on the company, job postings, directories, technical footprint, 3 to 5 peer companies, niche software vendors, industry norms. | Research log with every search and URL. |
| **2 Read the business** | What they sell, to whom, where, scale signals (locations, staff, certifications, years), and how they win work: stock, made to order, engineer to order, project, service, appointment. | Business card, each line tagged SEEN or INFERRED. |
| **3 Predict how they run** | Fills the prediction card in 5.4: likely tools, likely order flow, likely choke points, expertise at risk, what peers already have. | Prediction card, each line tagged PREDICTED with confidence and clue. |
| **4 Rebuild the chain** | Reconstructs the 6 to 10 stages from first contact to cash collected, in their own vocabulary. | Workflow map with the handoffs marked. |
| **5 Hunt the leaks** | Uses the signals in 5.5: where time is repeated, documents pile up, knowledge sits in people. | Ranked leak list with evidence. |
| **6 Find the expertise at risk** | Whose judgement would hurt most to lose? Estimator, technical reviewer, QA head, doctor, site planner. | One or two expertise assets to capture. |
| **7 Match, name and gate** | Matches leaks to patterns A to H and catalogue blocks, builds three named candidates, runs the specificity gate in 5.6. | Three named candidates that pass the gate. |
| **8 Score and choose** | Scores each candidate on the rubric in 5.7, picks the lead plus two backups. | Decision with score table. |
| **9 Write the pack** | One page brief, pitch hook, letter points, email, LinkedIn copy, demo plan, discovery questions. | The output pack in 5.9. |

### 5.3 Research sources (stage 1)

| Source | What the agent pulls | Why |
|---|---|---|
| **Web search on the company name** | LinkedIn page and staff titles, news, tenders, exhibitions, reviews, directory listings (IndiaMART, Thomasnet, TradeIndia, Justdial, Google Maps) | Size, customers, product range, how enquiries arrive, decision maker name |
| **Job postings** (Careers, Naukri, LinkedIn, Indeed) | Roles like estimator, coordinator, data entry, QA, store keeper, and tools named in them (Tally, SAP B1, Zoho, Excel) | A manual bottleneck and the current stack |
| **Site technical footprint** | Page source, scripts, forms, chat widgets, WhatsApp links, email provider (MX records), CMS | Google Workspace vs Zoho vs Microsoft, CRM or none, how leads are captured |
| **Catalogues, PDFs, certificates** | Product variants, standards, test and inspection requirements | Document load and technical review rules |
| **3 to 5 peer companies** (same product, same customers, same region, plus one larger overseas) | Their quote forms, customer portals, configurators, case studies | What good looks like in this niche, and what competitors already offer |
| **Software vendors in the niche** | Vendor feature pages and case studies (LIMS vendors for labs, shop floor tools for ETO makers) | What exists off the shelf, so we pitch what it lacks for this company |
| **Industry norms** | Typical standards, certificates, inspection agencies, regulations | Vocabulary and seed data for the demo |

Public information only. Log every source. Respect robots.txt and rate limits.

**Preferred crawler: Firecrawl** (github.com/firecrawl/firecrawl). Use `map` to list a site's URLs, `scrape` for clean markdown of key pages and PDF catalogues (including JavaScript heavy pages), and `search` to pull full page content for peers and directory listings. Fall back to WebFetch, Claude in Chrome or Apify when it is not available. The API key stays in the environment and is never printed or pasted into chat.

### 5.4 Prediction card (stage 3)

Each line is labelled **SEEN**, **INFERRED** or **PREDICTED**, with a confidence (high, medium, low) and the clue behind it.

- **Likely daily tools**, for example Tally plus Excel plus WhatsApp plus email, no ERP, because a job ad asks for "Tally and Excel" and enquiries go to a Gmail address.
- **Likely order flow** from first contact to cash, built from the site and peers.
- **Likely manual choke points** and which role carries them.
- **Likely expertise at risk**: whose judgement is hard to replace.
- **What a typical peer already has**, so we do not pitch something they can buy off the shelf.

PREDICTED items go into discovery questions, never into the pitch as facts. Phrase them softly: "from what we could see, enquiries probably arrive by email and each quote is built by hand".

### 5.5 Signals the agent looks for

| Signal | What it usually means |
|---|---|
| **"Request a quote" form or email only** | Quotes are hand built. Pattern F quote engine. |
| **Long product list with specs and standards** | Technical review and BOM knowledge sits with engineers. Patterns A and G. |
| **Certifications (ISO, ASME, NABL, PED, NABH)** | Heavy document and traceability load. Pattern A or B. |
| **Many clients named in power, oil, pharma, defence** | Dispatch packs, certificates and inspection reports per order. |
| **Multiple branches or locations** | Consolidated view and consistent process are missing. |
| **Careers page or job ads hiring estimators, coordinators, data entry** | A manual role is a bottleneck. Strong ROI story. |
| **Job ads naming Tally, Excel or "MIS"** | Records live in spreadsheets; data flows by hand between tools. |
| **Booking or lead form that defers to a callback** | Instant response is missing. Viryasys style calculator or instant result. |
| **Claims of AI or digital platform with nothing visible** | Gap between claim and product. Offer to build the real thing. |
| **Peers offer a portal, configurator or instant quote; this company does not** | A visible competitive gap the owner already feels. |
| **Dealers, distributors, field staff** | Field reporting blind spot. Pattern E. |
| **Founder led, a named owner or MD** | Reachable decision maker. Raises the reachability score. |
| **Already names SAP, Oracle or a large ERP** | Likely disqualify, or pitch an AI layer on top only. |

### 5.6 Specificity gate (stage 7, hard rule)

Every candidate must pass all six checks, or be rewritten or dropped:

1. **Named for the company and the pain**, built as Company plus OS, Flow, Intelligence, Desk or Journey (for example "Valve Quote Desk", "MB OrderFlow"). Never "ERP", "management system" or "digital platform".
2. **Mentions at least two real details** from the site or research: a product, a standard, a customer type, a certificate, a location.
3. **Describes one concrete moment** in their week (the estimator rebuilding the same quote at 9 pm, the QA head hunting a test certificate) and what changes in that moment.
4. **Says what it replaces**: the specific spreadsheet, WhatsApp thread, register or paper form.
5. **Swap test**: if a competitor's name could replace theirs and the pitch still reads true, reject.
6. **No banned phrases** in any output: "ERP", "end to end solution", "streamline operations", "digital transformation", "all in one", "unified platform". The word ERP may appear only in internal reasoning, or when the prospect is openly shopping for one.

If the best idea fails the gate, narrow it to one workflow slice (one quote type, one certificate pack, one register) and rename it.

**From predicted workflow to specific system:**
1. Pick the most expensive predicted choke point (time per week x people x frequency, or error cost).
2. Ask what the expert does in that step that is judgement, not typing. The system captures that.
3. Fix the input it eats (RFQ email, PDF drawing, WhatsApp order, sample sheet) and the output it produces (priced quote, certificate pack, PO draft, dispatch pack).
4. Check the patterns and catalogue for a block that already does it, then name and scope only that.
5. Define a 48 hour demo slice using only public information.

### 5.7 Scoring rubric (out of 100)

| Criterion | Weight | What full marks look like |
|---|---|---|
| **Pain visible on public evidence** | 20 | Two or more SEEN signals point to the same leak. |
| **Expertise at risk** | 15 | A clear person or role whose judgement the system can hold. |
| **Time saved, stated in hours or days** | 15 | A before and after the owner can check against their own week. |
| **Speed to a demo slice** | 10 | We can show a working slice in 48 hours using only public data. |
| **Low change burden** | 10 | Works with the email, WhatsApp and PDFs they already use. |
| **Fit with a proven pattern and stack** | 10 | Maps to one of patterns A to H with little new engineering. |
| **Recurring revenue potential** | 10 | Natural monthly support, AMC or subscription. |
| **Buyer reachable** | 5 | Named owner or MD found. |
| **Passes the swap test** | 5 | Pitch would not fit a competitor unchanged. |

**Decision rule: 75 or above, pitch as the lead. 60 to 74, pitch only as a discovery call opener. Below 60, do not pitch; log the company and the reason.** A candidate that fails the specificity gate scores zero regardless.

### 5.8 Disqualifiers and guardrails

- Disqualify: subsidiary of an MNC (as with Auma India and Micro Precision), more than about 150 staff for the letter campaign, more than two branches for owner led letters, no identifiable decision maker, or evidence of a modern system already doing the job.
- Evidence discipline: SEEN items may be stated as fact with the page URL. INFERRED items are phrased as "from what we could see" or turned into a question. PREDICTED and ASSUMED items go to the discovery questions, never into the pitch.
- Never claim they lack something unless the pages checked make that clear.
- Use "hospital" not "clinic" in India outreach.
- No pricing in cold outreach or in the pitch pack.
- No dashes in any written output. Keep copy short, spoken in tone, and in the format of the email and LinkedIn copy rules we already use.
- Stay tool agnostic. Frame the problem with process thinking first, name technology second.
- Respect outreach law: UK PECR limits on sole traders, US CAN SPAM, and sensible send times by time zone.
- Credible claims only. No invented multiples such as 500x. Prefer ranges and "typically".

### 5.9 Output pack for every website

| Section | Content |
|---|---|
| **1 Verdict line** | Company, lead system name, pattern, score, confidence (high, medium, low). |
| **2 Business card** | What they do, who they sell to, size signals, how they win work. Tagged SEEN or INFERRED. |
| **3 Prediction card** | Likely tools, flow, choke points, expertise at risk, with confidence and clues. |
| **4 Peer comparison** | Three lines: what peers offer, what is missing here, why it matters to their buyers. |
| **5 Chain and leaks** | The reconstructed workflow and the top three leaks with evidence. |
| **6 The system** | Name, one sentence promise, the 4 "What we would build for you" points, the expertise it captures, what it replaces, the catalogue blocks inside it. |
| **7 Specificity gate result** | Pass or fail on each of the six checks. |
| **8 Two backups** | Name and one line each, with scores. |
| **9 Pitch hook** | A single opening line built on their pain, for letters, email and LinkedIn. |
| **10 Copy** | A 4 point letter paragraph, a short email, a LinkedIn message. No pricing. |
| **11 Demo plan** | What a 48 hour working slice would show, and the seed data to load (their real products, clients, standards). |
| **12 Discovery questions** | Five questions that test the PREDICTED and ASSUMED items. |
| **13 Risks and sources** | Disqualifier checks passed or failed, the full research log, every URL used. |

### 5.10 What makes a pitch non generic

- It names one of their actual products, clients, certifications or locations.
- It describes a moment in their week, such as an estimator rebuilding the same quote at 9 pm.
- It has a company specific name, built as Company plus OS, Flow, Intelligence, Desk or Journey.
- It offers a small proof first: a free pilot on 10 past RFQs, a calculator on their own page, a demo seeded with their data.
- It states the saved time or protected expertise in plain words an owner repeats to a partner.
- It shows awareness of their market: what their peers already offer and where they could pull ahead.

---

## PART 6. Worked examples

Three real cases from our work, run through the agent's logic.

### 6.1 Viryasys Technologies (solar and BESS EPC, Chennai)

| Step | Result |
|---|---|
| **Seen** | Site markets AI driven energy optimisation, but no such product is visible. Chennai solar page has a lead form that promises a data driven recommendation, then defers to a manual callback. |
| **Leak** | Instant response is missing at the first moment of interest, and the business earns only one time EPC revenue. |
| **Pattern** | D (lead to project), plus an instant result layer. |
| **System** | Viryasys Energy Intelligence: a public solar and BESS sizing and payback calculator for lead capture, and a private post install monitoring dashboard. |
| **Why it wins** | Extends their existing form (roof area, backup toggle, instant results screen). Converts one time EPC into recurring AMC and SaaS revenue. Later became the ViryaSys OS project. |

### 6.2 CK Composites (US composites manufacturer)

| Step | Result |
|---|---|
| **Seen** | Product lines InsuLam, InsulVolt and InsulWynd, vertical integration and in house CNC machining. |
| **Leak** | Supply continuity and traceability matter more because they control materials and machining under one roof. |
| **Pattern** | Procurement catalogue blocks, packaged as one company system. |
| **System** | Supplier risk monitoring with delivery ETA prediction, inflation impact modelling and three way match automation. |
| **Why it wins** | Speaks to their differentiator, uses blocks we already hold, and starts with a free supplier scan instead of a sales pitch. |

### 6.3 MB Metallic Bellows (expansion joints, Oragadam)

| Step | Result |
|---|---|
| **Seen** | Three decades of expansion joint engineering, ISO 9001:2015, ASME U stamp, PED, clients across power, metals, hydrocarbons and chemicals. |
| **Leak** | Enquiry to certified dispatch runs through spreadsheets, WhatsApp threads and phone calls. Job status lives in someone's head. |
| **Pattern** | A, gated workflow. |
| **System** | MB OrderFlow: 10 stage engineer to order pipeline, role based access, eleven document certification pack, dispatch. |
| **Why it wins** | Uses their bellows types, materials, TPI agencies and real client names, so it can never be mistaken for a generic ERP. |

---

## PART 7. The master prompt, data model and build plan

### 7.1 Master prompt (copy and paste)

```text
ROLE
You are SystemScout, the pitch research agent for ClickFieldAI, an operational
transformation consultancy in Chennai. You read a company website and decide
which single custom system is worth pitching to its owner.

INPUT
Only a website URL. Assume you know nothing else. Any optional notes (contact,
role, country) are a bonus, never required.

METHOD (follow in order)
0. Fetch Home, About, Products or Services, Industries, Quality, Careers, News,
   Contact, catalogue PDFs and any form or portal page. Record every URL used.
1. Research outside the site: search the web for the company, its owner and
   staff titles, job postings and the tools they name, directory listings,
   certifications, customers and news. Inspect the site's technical footprint
   (forms, widgets, email provider). Study 3 to 5 similar companies and the
   software sold into that niche. Log every search and URL.
2. Build a business card: what they sell, to whom, where, scale signals, and
   how they win work (stock, made to order, engineer to order, project,
   service). Tag every line SEEN (from a page) or INFERRED (your reasoning).
3. Build a prediction card: the tools they likely use, their likely order flow,
   choke points, expertise at risk, and what peers already have. Tag each line
   PREDICTED with confidence and the clue behind it.
4. Rebuild the chain from first contact to cash collected in 6 to 10 stages,
   using the company's own vocabulary.
5. Find leaks using the signal list in the playbook. Rank the top three with
   evidence.
6. Identify the expertise at risk: whose judgement is hard to replace.
7. Match to patterns A to H and to catalogue blocks. Create three candidate
   systems, each with a company specific name (Company + OS, Flow,
   Intelligence, Desk or Journey). Run the specificity gate: real name, two
   real details, one concrete moment in their week, what it replaces, swap
   test, no banned phrases. If a candidate fails, narrow it to one workflow
   slice and rename it. Never propose a generic ERP.
8. Score each candidate with the 100 point rubric. 75 or more: lead pitch.
   60 to 74: discovery call opener only. Under 60: do not pitch, log reason.
9. Produce the output pack: verdict line, business card, prediction card, peer
   comparison, chain and leaks, the system with 4 'What we would build for
   you' points and what it replaces, gate result, two backups, pitch hook,
   copy (letter, email, LinkedIn), 48 hour demo plan with seed data, five
   discovery questions, risks and sources.

HARD RULES
State only SEEN facts as facts. Turn INFERRED items into soft phrasing or a
question. Put PREDICTED and ASSUMED items in discovery questions.
Never claim the company lacks something unless the pages you checked show it.
Banned in output: ERP, end to end solution, streamline operations, digital
transformation, all in one, unified platform.
No pricing anywhere in the pack. No dashes in any text. Use 'hospital' not
'clinic' for India. No invented numbers; use ranges and 'typically'.
Disqualify MNC subsidiaries, companies above about 150 staff or over two
branches (letter campaign), companies with no findable decision maker, and
companies with a modern system already doing the job.
Be tool agnostic: describe the process fix first, the technology second.
Keep copy short, plain, spoken in tone, one idea per line.

WHEN EVIDENCE IS THIN
Lean harder on peers and industry norms to predict the workflow, say so in
the verdict line, give confidence LOW, and list what one more page or a
LinkedIn URL would confirm. Do not invent company facts.
```

### 7.2 Knowledge the agent must be given

| File | Content |
|---|---|
| **patterns.md** | Part 3: the eight patterns, the problem solving order, the industry table. |
| **catalogue.md** | The 101 systems, each with pain line, fix line, best fit vertical, build effort. |
| **case_studies/** | One page per build: MB OrderFlow, TNTH, Paravalves, Qualtech, IVF HMIS, Viryasys, Raghav, Fermier, plus the appendix builds. |
| **icp_and_disqualifiers.md** | ICP rules, verified lists (valve, PEB, IVF, logistics), companies already rejected and why. |
| **voice_and_copy_rules.md** | Email and LinkedIn rules, letter templates, banned words, the no dash and no pricing rules. |
| **industry_playbooks/** | Typical chain, vocabulary, certifications, expertise map, typical tool stack and known niche software for each vertical. |
| **research_sources.md** | Part 5.3 sources, search query templates per vertical, which Apify actors or scrapers to use. |

### 7.3 Data model (Supabase or Airtable)

| Table | Key fields |
|---|---|
| **patterns** | id, name, problem_shape, build_summary, expertise_saved, example_clients |
| **catalogue_systems** | id, category, name, pain_line, fix_line, best_fit_vertical, effort_days |
| **past_builds** | id, client, vertical, pattern_id, systems_used, outcome_notes (embedded for retrieval) |
| **prospects** | id, url, company, country, contact, source, status |
| **research** | id, prospect_id, query_or_url, source_type, finding, used_in |
| **analyses** | id, prospect_id, business_card, prediction_card, peers, chain, leaks, candidates, gate_results, scores, lead_system, confidence |
| **pitches** | id, analysis_id, hook, letter_points, email, linkedin, demo_plan, questions |
| **outcomes** | id, pitch_id, replied, meeting_booked, won, reason (feeds back into the rubric weights) |

### 7.4 Research tooling

Firecrawl (map, scrape, search; MCP server, CLI or API; self-hostable) as the preferred crawler, with WebSearch and WebFetch as the fallback for pages and peers. Apify actors (rag web browser, LinkedIn, IndiaMART, Google Maps, job boards) for directories and postings. Claude in Chrome for sites that block fetches. A small script for MX record and page source tech detection.

### 7.5 Three ways to run it

| Option | How it works | Best for |
|---|---|---|
| **A Claude project or skill** | Playbook and catalogue as knowledge, master prompt as instructions, Claude researches the site and the web and answers in chat or Word. | Start this week. Zero build time. |
| **B n8n and Supabase** | A row with a URL in Airtable or Notion triggers n8n, which fetches pages, runs the research searches, calls Claude with retrieval over patterns and past builds, and writes the pack back to the row. | Bulk runs for Harshad, Sridharan and the letter campaign. |
| **C Small web app** | Next.js app with a URL box, saved analyses, one click to Word or PDF, and a feedback button on outcomes. | When the process is proven and the team uses it daily. |

### 7.6 Build plan

| When | What | Done when |
|---|---|---|
| **Days 1 to 2** | Clean the 101 list. Convert Part 3 into patterns.md and the case studies into one page files. Load the voice rules and research sources. | Knowledge files exist. |
| **Days 3 to 4** | Run Option A in website only mode (URL and nothing else) on 10 known companies, including Viryasys, MB and CK Composites, and compare with what we actually pitched. | You agree with at least 8 of 10 lead systems, and none uses a banned phrase. |
| **Days 5 to 7** | Tune the rubric, the gate and the research queries. Add the Word output template. | Pack looks like a document you would send. |
| **Week 2** | Option B: Airtable intake, n8n flow, results written back. Harshad and Sridharan use it in the BD sprint. | 50 companies analysed, replies logged. |
| **Week 3 onward** | Feed outcomes back. Raise the weight of criteria that predict replies. Consider Option C. | Reply rate improves against the letter baseline. |

> **WHAT I NEED FROM YOU TO START**
> 1. The cleaned 101 system list, or permission to clean it from the earlier chat and send it back for your approval.
> 2. Five to ten companies you already pitched, with what you offered and the result, so the agent can be tested against real decisions.
> 3. A choice between Option A (start now) and Option B (automated). Recommendation: A this week, B in week two.

---

## APPENDIX. Other builds and reusable bases

| Build | Industry | Core idea | Reusable for |
|---|---|---|---|
| **TraceForge ERP base** | Manufacturing (valve QC) | Traceability from material to dispatch | Any engineer to order client (forked for MB Bellows and Paravalves) |
| **AFOS** | Architecture and interior firms | Single source of truth, 6 role logins, seeded demo | Built Environment OS pitches |
| **Sambaha Developers OS** | Real estate | Layouts and plots first, phased toward full operations | Developers and plotted layouts |
| **ViryaSys OS** | Solar EPC | Lead to project to procurement | EPC, PEB, construction |
| **Fermier Agency** | Equipment dealership | Field sales and operations, Zoho integration | Dealers and distributors |
| **Qualtech Inventory** | Engineering firm | Ledger based stock | Any stock heavy client |
| **AVM Calibration LIMS** | Calibration lab | Adapted from TNTH LIMS | Labs (pattern B) |
| **Firm onboarding MVP** | Accounting and tax firms | Automated client onboarding | Pattern H |
| **Technical OS** | Internal | Client projects, team logins, per project chat | Our own delivery |
| **Udaan NGO site, Blush & Hush site** | NGO, interior studio | Websites | Website engagements |

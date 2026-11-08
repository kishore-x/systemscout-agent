# SystemScout

**A pitch research agent for ClickFieldAI.** Give it a company website. It researches the company and its peers on the open web, predicts how the company runs and which tools it uses, finds where time and expertise leak, and returns **one specific, named system worth pitching**, plus two backups, the evidence, a score, a demo plan and ready outreach copy.

It never pitches a generic ERP.

> This repo is **private**. The playbook contains ClickFieldAI's client pricing, client names and pitch rules. Do not make it public.

---

## What it does

```
website URL
   │
   ▼
0 Collect          read the company's own pages (products, clients, certifications, forms, careers)
1 Research         web search, job ads, directories, tech footprint, 3-5 peer companies, niche software
2 Business card    what they do, for whom, how they win work   (SEEN / INFERRED)
3 Prediction card  likely tools, order flow, choke points      (PREDICTED + confidence)
4 Chain + leaks    rebuild their process, rank the top three leaks
5 Expertise        whose judgement is hardest to replace
6 Candidates       three named systems, run through the specificity gate
7 Score            100-point rubric: 75+ lead, 60-74 discovery opener, <60 do not pitch
8 Output pack      13 sections, saved as a Markdown report
```

The input is **only a URL**. Everything else (owner, size, tools, competitors, workflow) is found or predicted by the agent, and every claim is labelled so nothing guessed is stated as fact.

## The rules it follows

- **Specificity gate.** Every system must have a company-specific name, mention at least two real details from the business, describe one concrete moment in their week, say what it replaces, pass the "swap the competitor's name" test, and avoid banned phrases (ERP, end to end, unified platform, digital transformation, all in one, streamline operations). Fail any check and it is narrowed to one workflow slice and renamed.
- **Evidence labels.** SEEN (on a page, with URL), INFERRED (reasoned from what was seen), PREDICTED (from peers and industry norms). Only SEEN items are stated as fact. The rest become discovery questions.
- **Disqualifiers.** MNC subsidiaries, companies above ~150 staff or more than two branches (letter campaign), no findable decision maker, or a modern system already in place.
- **Copy rules.** No pricing, no dashes in outreach copy, "hospital" not "clinic" for India, no invented numbers.

## What's in this repo

| Path | What it is |
|---|---|
| `skill/systemscout/SKILL.md` | The agent's instructions (a Claude Code skill) |
| `skill/systemscout/playbook.md` | The knowledge the agent reads: patterns A to H, catalogue, rubric, gate, copy rules |
| `PLAYBOOK.md` | Same playbook at the repo root, the source of truth to edit |
| `install.sh` | Copies the skill into `~/.claude/skills/systemscout` |
| `examples/` | Two real test runs: MB Metallic Bellows and Podhikai Scientific |

## Install

Requires [Claude Code](https://claude.com/claude-code).

```bash
git clone https://github.com/kishore-x/systemscout-agent.git
cd systemscout-agent
./install.sh
```

This puts the skill in `~/.claude/skills/systemscout` and creates `~/systemscout-reports/` for output.

## Use it

In Claude Code, either type the command:

```
/systemscout https://example.com
```

or just say it in plain words: *"scout https://example.com"*, *"what system can we sell them: example.com"*, *"analyse this company"*.

**Batch mode:** paste several URLs. It writes one report per company plus `batch-<date>.md` ranking all of them by score.

**What you get back**
- In chat: verdict line, lead system name and promise, score, confidence, the pitch hook and a link to the report.
- On disk: `~/systemscout-reports/<company>-<date>.md` with the full 13-section pack:
  1. Verdict line  2. Business card  3. Prediction card  4. Peer comparison  5. Chain and leaks  6. The system (name, promise, four "what we would build for you" points, what it replaces)  7. Specificity gate result  8. Two backups  9. Score table  10. Pitch hook, letter points, email, LinkedIn  11. 48-hour demo plan  12. Five discovery questions  13. Risks, disqualifier checks and full research log

### Tools it uses

- **[Firecrawl](https://github.com/firecrawl/firecrawl) (preferred crawler).** Maps every URL on a site, scrapes pages and PDF catalogues to clean markdown (including JavaScript heavy sites), and searches the web with full page content for peers and directories.
- WebSearch and WebFetch as the built in fallback, `dig` for MX records (email provider), page-source checks for the site's technology.
- Claude in Chrome or the Apify web browser actor for sites that block fetching.

Public information only.

### Set up Firecrawl (optional but recommended)

SystemScout works without it, but reads JavaScript heavy sites, PDF catalogues and large product lists much better with it. Pick one:

**A. MCP server (easiest in Claude Code).** Get an API key at https://firecrawl.dev, then:
```bash
claude mcp add firecrawl -e FIRECRAWL_API_KEY=fc-YOUR_KEY -- npx -y firecrawl-mcp
```

**B. API key in your shell** (the agent calls the REST API with curl):
```bash
echo 'export FIRECRAWL_API_KEY=fc-YOUR_KEY' >> ~/.zshrc && source ~/.zshrc
```

**C. Self-hosted.** Run Firecrawl from its open source repo (see its self-hosting docs) and also set `FIRECRAWL_API_URL` to your instance.

The key is never written into this repo or into reports. Credits are limited, so the agent caps itself at about one `map`, 15 `scrape` and 6 `search` calls per company. Each report's research log says whether Firecrawl or the fallback was used.

## How to read a report

| Score | Meaning |
|---|---|
| 75 to 100 | Pitch as the lead system |
| 60 to 74 | Use only as a discovery call opener |
| Below 60 | Do not pitch; the report says why |

| Confidence | Meaning |
|---|---|
| High / Medium | Several SEEN signals support the same leak |
| Medium low / Low | Thin website or no third-party listings; the workflow is mostly predicted, so confirm on the first call |

Always read section 12 (discovery questions) and section 13 (risks) before sending anything.

## Test results so far

| Company | Lead system | Score | Notes |
|---|---|---|---|
| MB Metallic Bellows | MB Bellows Quote Desk | 83 | Backup was an inspection and document pack system, close to what ClickFieldAI actually built (MB OrderFlow). Partial match. |
| Podhikai Scientific | Podhikai Tender Desk | 77 | Thin online footprint, tender workload is predicted. Confidence medium low. |

## Keeping it current

1. Edit `PLAYBOOK.md` (new patterns, pricing bands, past pitches, rubric weights).
2. Copy it to `skill/systemscout/playbook.md`.
3. Run `./install.sh` again.

Planned: feed pitch outcomes (replied, meeting booked, won) back into the rubric weights; Airtable/n8n batch intake; a small web app front end.

## Known limits

- Decision makers are often not findable from public sources; verify through company registry (MCA) records or LinkedIn before outreach.
- Some sites block automated fetching or hide content behind JavaScript; the report notes what could not be read.
- Predictions are hypotheses to test in the first call, not facts.

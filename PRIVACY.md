# Soukromí / Privacy

*English version below.*

Platí pro skill a plugin **Doktor** (https://github.com/ondrnovy/doktor-skill). Stav k 20. 11. 2026.

## Česky

**Autor skillu od vás nic nedostává.** Skill nemá žádný server, databázi, analytiku ani sběr dat.
Je to sada pokynů a podkladů, podle kterých pracuje Claude ve vašem účtu.

**Co skill čte a ukládá.** Zdravotní údaje, které mu dáte: výsledky, zprávy, léky, rodinnou anamnézu.
V Claude Code je na váš pokyn ukládá do vaší zdravotní složky (na váš disk nebo do vašeho cloudu,
např. Google Drive). V claude.ai jsou jen v konverzaci, nic trvalého skill nevytváří.

**Kam data jdou.**
- **Konverzace s Claudem** běží na serverech Anthropicu podle podmínek a nastavení soukromí vašeho účtu
  ([zásady Anthropicu](https://www.anthropic.com/legal/privacy)).
- **Volitelně oponent jiným modelem:** když to výslovně odsouhlasíte, skill
  [oponent](https://github.com/ondrnovy/oponent-skill) pošle závěr k oponentuře do OpenAI (Codex).
  Zadání je anonymizované: bez jména, rodného čísla, data narození, adresy a jmen lékařů.
- **Webové vyhledávání** (když ho Claude použije) dostane jen odborný dotaz bez jmen a identifikátorů.
- Nikam jinam skill data neposílá.

**Jak dlouho.** Skill sám nic nedrží. Vaše složka je vaše, smažete ji kdykoliv. Konverzace se řídí
nastavením vašeho účtu u Anthropicu.

**Věk.** Skill není určený pro osoby mladší 18 let. Data dětí do rodinné složky zakládají rodiče.

**Veřejné kanály.** Issues a diskuze na GitHubu jsou veřejné. Nepište do nich svoje zdravotní údaje.

**Kontakt.** [Diskuze na GitHubu](https://github.com/ondrnovy/doktor-skill/discussions).

Podrobná pravidla, podle kterých Claude se zdravotními daty zachází (anonymizace, souhlas před odesláním),
jsou v [`skills/doktor/reference/soukromi.md`](skills/doktor/reference/soukromi.md).

## English

Applies to the **Doktor** skill and plugin. As of 20 November 2026.

- **The author receives nothing.** The skill has no server, database, analytics or telemetry. It is a set
  of instructions and reference documents that Claude follows in your own account.
- **What it reads and stores:** health data you provide (lab results, medical reports, medications, family
  history). In Claude Code, at your request, it stores them in your own health folder on your disk or your
  own cloud storage. In claude.ai the data stay in the conversation only.
- **Where data go:** conversations run on Anthropic's servers under your account's terms and privacy
  settings. Optionally, and only with your explicit consent, the separate
  [oponent](https://github.com/ondrnovy/oponent-skill) skill sends an anonymized summary (no name, ID number,
  date of birth, address or doctors' names) to OpenAI (Codex) for an adversarial review. Web searches contain
  only the medical question, no identifiers. Nothing is sent anywhere else.
- **Retention:** the skill retains nothing. Your folder is yours to delete at any time.
- **Age:** not intended for users under 18.
- **Contact:** [GitHub Discussions](https://github.com/ondrnovy/doktor-skill/discussions).

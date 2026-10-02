# Kit inicial do AI Smart Cell

Copie o conteúdo desta pasta para a raiz do repositório `ai-smart-cell`.

| Arquivo | Para quê |
| --- | --- |
| `README.md` | Página do projeto, com Status, etapas e gates |
| `CLAUDE.md` | Regras do Claude Code como mentor: revisa e explica, não escreve o código por você |
| `docs/RITUAIS.md` | Onde cada coisa vive, rituais, métricas de acompanhamento e regras |
| `docs/etapas/etapa-01.md` | Objetivo, sprints, Gate 1 e retrospectiva da Etapa 1 |
| `docs/sprints/sprint-01/` | Plano do Sprint 1 e o texto dos 6 tickets |
| `docs/log/TEMPLATE.md` | Modelo do diário de bordo semanal |
| `.github/ISSUE_TEMPLATE/` | Templates de ticket e de experimento |
| `tools/create_sprint1_issues.sh` | Cria labels, os milestones das 4 etapas e as issues do Sprint 1 |
| `tools/setup_github_project.sh` | Cria o quadro com campos de etapa, sprint e horas |

## Passo a passo (é o ticket T1)

1. No Windows do NUC, instale Git, GitHub CLI (`gh`) e VS Code. Os scripts rodam no Git Bash.
2. Crie o repositório público `ai-smart-cell` e proteja o branch `main`.
3. Copie este kit para a raiz, faça commit num branch `t1-kit`, abra o PR e faça o merge.
4. `gh auth refresh -s project`
5. Na raiz do repo:
   ```bash
   ./tools/create_sprint1_issues.sh
   ./tools/setup_github_project.sh
   ```
6. No navegador, ajuste uma vez as colunas de Status e as views do quadro (o script mostra como).
7. Preencha a seção Status do `README.md` e a data de início em `docs/etapas/etapa-01.md`.

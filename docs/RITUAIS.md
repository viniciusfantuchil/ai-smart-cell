# Como o projeto é conduzido

O repositório é a fonte da verdade. Cada ferramenta tem um papel, e cada ritual tem dia, duração e saída definidos.

## Onde cada coisa vive

| O quê | Onde | Atualizado quando |
| --- | --- | --- |
| Visão, arquitetura, trilha | Documento "AI Smart Cell — Trilha única" + `docs/architecture/` | Fim de etapa |
| Etapa e sprint atuais | `README.md` → seção Status | Início de sprint |
| Plano da etapa | `docs/etapas/etapa-NN.md` | Início e fim de etapa |
| Plano do sprint e tickets | `docs/sprints/sprint-NN/` + Issues no GitHub | Início de sprint |
| Quadro de execução | GitHub Project "AI Smart Cell" | Diariamente |
| Decisões | `docs/adr/` | Quando uma decisão é tomada |
| Resultados | `experiments/NNN-nome/README.md` | Fim de cada experimento |
| Diário de bordo | `docs/log/semana-NN.md` | Todo domingo |

## Rituais

| Ritual | Quando | Duração | Ferramenta | Saída |
| --- | --- | --- | --- | --- |
| Sessão de trabalho | Dias planejados | 1–3 h | Claude Code no repo | Commits; card do ticket movido no quadro |
| Revisão de PR | Ao abrir cada PR | 15–30 min | Claude Code | PR revisado e mergeado |
| Log semanal | Domingo | 30 min | `docs/log/` | `semana-NN.md` com horas e bloqueios |
| Revisão de sprint | A cada 2 semanas | 1 h | Projeto no claude.ai | Avaliação + plano do próximo sprint |
| Revisão de gate | Fim de cada etapa | 1–2 h | Projeto no claude.ai | `etapa-NN.md` fechado; gate verificado |

## O que se mede no acompanhamento

| Métrica | Fonte | Meta |
| --- | --- | --- |
| Horas por semana | Log semanal | ≥ 10 h em 10 de cada 12 semanas |
| Precisão da estimativa | Campos "Estimativa" e "Horas reais" no quadro | Erro < 50% até o fim da Etapa 1 |
| Tickets fechados por sprint | Quadro | Tendência estável; sem carregar > 2 tickets |
| Semanas sem log | `docs/log/` | Zero |

## Regras

1. Ticket só vai para "Em andamento" quando o anterior estiver em "Revisão" ou "Feito".
2. No máximo 1 ticket em "Em andamento" por vez.
3. Ticket só vai para "Feito" com o critério de aceite verificado e o PR mergeado.
4. Atrasou duas semanas seguidas? Reduza o escopo do próximo sprint. Não compense com maratona.
5. Ideias novas vão para o "Backlog" como issue com a label `ideia`. Nunca entram no sprint em andamento.

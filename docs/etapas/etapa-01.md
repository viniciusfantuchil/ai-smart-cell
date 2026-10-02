# Etapa 1 · Automação

- **Início:** · **Fim:** · **Sprints:** 1–3 (semanas 1–6)

## Objetivo
Linha de classificação no Factory I/O controlada por CODESYS, com máquina de estados, alarmes, intertravamentos e variáveis expostas via OPC UA, robusta o bastante para rodar sozinha e falhar de forma previsível.

## Sprints
| Sprint | Semanas | Foco |
| --- | --- | --- |
| 1 | 1–2 | Fundamentos de ST, `FB_MachineState`, `FB_AlarmManager`, projeto no papel (sem Factory I/O) |
| 2 | 3–4 | Ativar teste do Factory I/O; cena Sorting by Height; OPC UA; EXP-001 throughput |
| 3 | 5–6 | Ignition Maker (HMI, historian, alarmes) via OPC UA; injeção de falhas (EXP-002); comissionamento; teste de 2 h; vídeo; Gate 1 |

## Definition of Done (Gate 1)
- [ ] Linha produz por 2 h sem intervenção, com contagem final batendo com as peças geradas
- [ ] ≥ 98% de peças classificadas corretamente na velocidade nominal
- [ ] As 10 falhas injetadas geram o alarme correto; 0 alarmes falsos no teste de 2 h
- [ ] Toda transição de estado documentada e coberta pelo roteiro de comissionamento
- [ ] Variáveis de estado, contadores e alarmes visíveis na HMI do Ignition e gravados no historian
- [ ] README com vídeo, arquitetura, tabela de resultados e instruções de reprodução

## Decisões previstas nesta etapa
- ADR 0001 · CODESYS + Factory I/O (Sprint 1)
- ADR 0002 · Estrutura do repositório e versionamento do CODESYS (Sprint 1)
- ADR 0003 · Structured Text como linguagem principal (Sprint 1)
- ADR 0004 · Ignition Maker como camada SCADA/historian (Sprint 3)

## Opcional depois do Gate 1
Micro820 usado + Connected Components Workbench (gratuito), reimplementando parte da linha em ladder e ligado ao Factory I/O: "a mesma máquina em duas plataformas". Só se o orçamento permitir; confirmar preço e edição do Factory I/O antes de comprar.

## Retrospectiva (preencher ao fechar)
- **O que funcionou:**
- **O que travou e por quê:**
- **Horas planejadas vs reais:**
- **Planejado no papel (T6) vs encontrado na cena:**
- **O que muda na Etapa 2:**

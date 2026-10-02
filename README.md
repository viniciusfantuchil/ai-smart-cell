# AI Smart Cell

Célula de manufatura inteligente construída em quatro etapas: CLP → AI de diagnóstico → robô → Physical AI.
Regra de arquitetura: **a AI lê, diagnostica e propõe; o CLP e o robô executam com intertravamento e confirmação humana.**

## Status
- **Etapa:** 1 · Automação
- **Sprint:** 01 · Fundamentos de CLP
- **Início:** AAAA-MM-DD

## Etapas

| Etapa | Semanas | Entrega | Gate |
| --- | --- | --- | --- |
| 1 · Automação | 1–6 | Linha Factory I/O + CODESYS com estados, alarmes e OPC UA; HMI e historian no Ignition | 2 h sem intervenção; 10 falhas detectadas |
| 2 · Factory Copilot | 7–12 | Agente de diagnóstico via MCP somente leitura, RAG e evals | ≥ 80% de diagnósticos certos; zero escritas no CLP |
| 3 · Robô na célula | 13–24 | Braço ROS 2/MoveIt disparado pelo CLP | ≥ 80% de pick & place disparado pelo CLP |
| 4 · Physical AI | 25–52 | Percepção 3D, imitation learning, sim-to-real | Definido na revisão do Gate 3 |

## Estrutura
- `plc/` — projeto CODESYS, exports ST/PLCopenXML, cena do Factory I/O
- `scada/` — projeto Ignition exportado (HMI, historian, alarmes)
- `copilot/` — MCP server, agente e evals (Etapa 2)
- `robot/` — workspace ROS 2 (Etapa 3)
- `experiments/` — experimentos com hipótese, método e resultados
- `docs/` — arquitetura, ADRs, etapas, sprints, log semanal

## Resultados
_Preenchido ao fim de cada etapa: vídeo, tabela de métricas e link para os experimentos._

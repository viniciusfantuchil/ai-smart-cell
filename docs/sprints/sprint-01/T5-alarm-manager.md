## Objetivo
`FB_AlarmManager`: alarmes estruturados que, na Etapa 2, alimentam o Factory Copilot.

## Escopo
- [ ] `STRUCT` de alarme: código (`ALM_NNN`), texto, severidade (info/aviso/falha), ativo, reconhecido, timestamp de ativação e de normalização.
- [ ] Lista de alarmes em array; entradas de condição por alarme.
- [ ] Estados de cada alarme: normal → ativo não reconhecido → ativo reconhecido → normalizado (ou normalizado não reconhecido).
- [ ] Saída `FaultActive` = existe algum alarme de severidade "falha" ativo.
- [ ] Comando `AckAll` (borda).
- [ ] Integrar com `FB_MachineState`: alarme de falha leva a `FAULTED`.

## Fora de escopo
HMI gráfica (Etapa 1, Sprint 3) e histórico persistente (Historian, Etapa 2).

## Critério de aceite
- [ ] Trace mostrando um alarme passando por todos os estados.
- [ ] Teste: alarme de falha durante `RUNNING` leva a `FAULTED`; `Reset` só funciona após normalizar e reconhecer.
- [ ] Timestamps em UTC.

## O que vou aprender
Gestão de alarmes como dado estruturado: a diferença entre "um bit acendeu" e "um evento com contexto que alguém vai analisar depois".

## Recursos
- [CODESYS Online Help](https://content.helpme-codesys.com/en/) — "STRUCT", "ARRAY", funções de data/hora do sistema.
- Conceitos de ISA-18.2 (ciclo de vida do alarme): leia um resumo, não a norma inteira.

## Estimativa
Estimado: 4 h · Real: h

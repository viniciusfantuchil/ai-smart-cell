## Objetivo
`FB_MachineState`: a máquina de estados que vai governar a linha inteira.

## Escopo
- [ ] Estados: `STOPPED`, `STARTING`, `RUNNING`, `STOPPING`, `FAULTED`, `RESETTING` (inspirados no PackML, simplificados).
- [ ] Comandos: `Start`, `Stop`, `Reset`, `EStop` (borda de subida, exceto `EStop`, que é nível e prioritário).
- [ ] Entradas: `FaultActive` (vindo do gerenciador de alarmes) e `StartupDone` / `StopDone` (confirmações do processo).
- [ ] Implementar com `CASE` sobre um `ENUM`; nenhuma transição fora da tabela.
- [ ] Desenhar a tabela de transições em `docs/plc/machine-state.md` **antes** de codificar.
- [ ] Testar em simulação usando o Trace do CODESYS, cobrindo todas as transições.

## Fora de escopo
Modos (manual/automático) e estados de suspensão do PackML completo.

## Critério de aceite
- [ ] Tabela de transições no `docs/` e trace no PR mostrando cada transição pelo menos uma vez.
- [ ] `EStop` leva a `FAULTED` a partir de qualquer estado.
- [ ] `Reset` só sai de `FAULTED` se `FaultActive` for falso.
- [ ] Comportamento no primeiro scan documentado (estado inicial = `STOPPED`).

## O que vou aprender
Máquinas de estado industriais, PackML como linguagem comum entre fábricas e uso do Trace para validar lógica.

## Recursos
- [OMAC PackML](https://www.omac.org/packml) — veja o diagrama de estados; use a ideia, não a implementação completa.
- [CODESYS Online Help](https://content.helpme-codesys.com/en/) — "ENUM", "CASE" e "Trace".

## Estimativa
Estimado: 5 h · Real: h

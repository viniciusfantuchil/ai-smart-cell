## Objetivo
Praticar os blocos de construção de toda lógica de máquina em Structured Text.

## Escopo
Exercícios curtos em `plc/` (POUs separadas, cada uma com um comentário de cabeçalho explicando entradas, saídas e comportamento):
- [ ] **Temporizadores:** TON, TOF e TP; um atraso de partida e um tempo máximo de operação (timeout).
- [ ] **Bordas:** R_TRIG e F_TRIG; contar pulsos de um botão sem contar o tempo em que ele fica pressionado.
- [ ] **Contadores:** CTU com reset; contar peças até um lote e sinalizar "lote completo".
- [ ] **Intertravamento:** partida de motor com selo, parada prioritária e permissivo (ex.: porta fechada).
- [ ] **Primeiro scan:** o que cada exercício faz quando o CLP liga? Documente.

## Fora de escopo
Ladder (apenas leia um exemplo para reconhecer), SFC.

## Critério de aceite
- [ ] Cada exercício testado em simulação, com uma tabela "entrada → saída esperada → saída observada" no PR.
- [ ] Explicação escrita, em uma frase, da diferença entre nível e borda e de por que ela importa.

## O que vou aprender
IEC 61131-3 na prática: tipos, FUNCTION_BLOCKs com memória, ciclo de scan e comportamento determinístico.

## Recursos
- [CODESYS Online Help — Standard library](https://content.helpme-codesys.com/en/) — TON, TOF, TP, R_TRIG, CTU: leia a página de cada bloco quando for usá-lo.
- Um vídeo curto de "Structured Text basics" só se travar mais de uma sessão.

## Estimativa
Estimado: 5 h · Real: h

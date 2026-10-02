## Objetivo
CODESYS instalado no Windows, primeiro programa rodando em simulação e o projeto versionado de forma revisável.

## Escopo
- [ ] Instalar o CODESYS Development System V3.5 (versão atual) e o CODESYS Control Win.
- [ ] Projeto `plc/SmartCell.project` com um PROGRAM `PLC_PRG` em ST que pisca uma saída com `TON`.
- [ ] Rodar em modo de simulação e observar as variáveis online.
- [ ] Definir o procedimento de versionamento: a cada commit, exportar o código como ST (texto) e o projeto como PLCopenXML para `plc/export/`. Documentar o passo a passo em `docs/plc/versionamento.md`.

## Fora de escopo
Factory I/O, OPC UA, hardware real.

## Critério de aceite
- [ ] Screenshot do programa em execução online (simulação) no PR.
- [ ] PR mostra o diff legível do export em ST.
- [ ] `docs/plc/versionamento.md` permite que outra pessoa repita o processo.

## O que vou aprender
Estrutura de um projeto CODESYS (Device, Application, Task, POUs), ciclo de scan e por que arquivos binários exigem um processo de versionamento.

## Recursos
- [CODESYS Online Help](https://content.helpme-codesys.com/en/) — busque por "Simulation", "Task configuration" e "PLCopenXML export". Leia só essas seções.
- [CODESYS Store](https://store.codesys.com/) — download oficial do IDE e do Control Win.

## Armadilhas conhecidas
- O runtime sem licença para depois de cerca de 2 h. Reiniciar resolve; não é bug do seu programa.
- Se o OPC UA for usado depois, um Local Discovery Server ocupando a porta 4840 impede a conexão.

## Estimativa
Estimado: 3 h · Real: h

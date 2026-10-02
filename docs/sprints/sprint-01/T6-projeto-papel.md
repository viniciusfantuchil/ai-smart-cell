## Objetivo
Projetar a linha de classificação **no papel** antes de abrir o Factory I/O, e registrar as decisões fundadoras.

## Escopo
- [ ] `docs/plc/io-map.md`: mapa de I/O planejado para a cena Sorting by Height (sensores, atuadores, tipo, endereço/variável). Use a descrição da cena na documentação do Factory I/O.
- [ ] `docs/plc/sequencia.md`: sequência de operação da linha em passos numerados.
- [ ] `docs/plc/alarmes.md`: tabela inicial de alarmes (código, condição, severidade, ação esperada do operador).
- [ ] `docs/adr/0001-codesys-factory-io.md`: por que CODESYS + Factory I/O (e não TIA Portal, Studio 5000 ou OpenPLC).
- [ ] `docs/adr/0002-estrutura-repo.md`: estrutura do repositório e versionamento do CODESYS.
- [ ] `docs/adr/0003-st-linguagem-principal.md`: por que Structured Text como linguagem principal.

## Fora de escopo
Implementar a cena. Isso é o Sprint 2.

## Critério de aceite
- [ ] Cada ADR responde "por que não a alternativa?" com um argumento concreto (custo, mercado local, revisão em Git...).
- [ ] O mapa de I/O lista todos os sensores e atuadores da cena, mesmo que alguns fiquem sem uso.

## O que vou aprender
Projetar antes de programar, que é o hábito de um integrador. No Sprint 2 você vai comparar o planejado com o encontrado e registrar a diferença.

## Recursos
- [Documentação do Factory I/O](https://docs.factoryio.com/) — descrição das cenas e das partes (sensores e atuadores).
- [Documenting Architecture Decisions (Michael Nygard)](https://cognitect.com/blog/2011/11/15/documenting-architecture-decisions) — o formato ADR original.

## Estimativa
Estimado: 4 h · Real: h

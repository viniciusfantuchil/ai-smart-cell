---
name: Experimento
about: Experimento com hipótese, baseline e resultado medido
title: "EXP-<nnn> · "
labels: experiment
---

## Pergunta
<!-- O que queremos saber, numa frase. -->

## Hipótese
<!-- Falsificável e com número. Ex.: "Pilz LIN na aproximação final aumenta o sucesso de grasp em ≥ 10 pp vs OMPL RRTConnect." -->

## Baseline
<!-- O sistema atual, sem a mudança. Commit de referência. -->

## Variáveis
- **Independente (o que muda):** 
- **Controladas (o que fica fixo):** seed, mundo, objeto, commit, imagem Docker, versão do dataset
- **Dependentes (o que medimos):** 

## Protocolo
- N tentativas por condição (definido ANTES de rodar): 
- Condições: 
- Critério de sucesso de cada tentativa: 

## Ablação
<!-- Que componente removemos, um por vez, para saber o que contribui. -->

## Resultados
<!-- Tabela por condição com média, p50/p95 e incerteza.
     Taxas de sucesso: intervalo de Wilson 95%. Diferenças dentro do intervalo não são conclusões. -->

| Condição | N | Métrica | Valor | IC 95% |
| --- | --- | --- | --- | --- |
|  |  |  |  |  |

## Análise de falhas
<!-- Cada falha recebe uma categoria: percepção, IK, colisão, grasp, controle, timeout, outra. -->

| Categoria | Ocorrências | Exemplo (bag/episódio) |
| --- | --- | --- |
|  |  |  |

## Conclusão
- **Por que funciona:** 
- **Em quais condições deixa de funcionar:** 
- **Decisão tomada:** 

## Reprodução
```bash
# commit, config e comando exato
```

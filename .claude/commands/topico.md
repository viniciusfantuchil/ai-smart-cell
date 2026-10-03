---
description: Cria ou atualiza no Notion o conteúdo teórico de um ticket, experimento ou etapa
argument-hint: <ticket ou tema, ex.: T3>
---
Item: $ARGUMENTS

1. Leia o ticket correspondente em `docs/sprints/` (ou a issue no GitHub) e a página `docs/etapas/` da etapa atual.
2. Liste os conceitos que esse item exige. Para cada um, classifique como Must know / Useful / Nice to know / Ignore for now. Só os Must know e Useful viram páginas.
3. Busque no Notion, dentro da página "AI smart cell project" (id 3eefaeb658e88085b1eff757438f507b), se cada conceito já tem página. Se tiver, complemente; se não, crie como subpágina.
4. Cada página segue esta estrutura, em português:
   - Callout azul com 💡 e "**Em uma frase:**" (o conceito resumido em uma frase)
   - Linha "**Etapa:** N · Nome · **Visto em:** <ticket>"
   - Conceito explicado com subtítulos, tabelas quando houver comparação e exemplos de código de no máximo ~10 linhas
   - "Por que importa numa fábrica" (aplicação real)
   - "Uso no projeto" (preencher ao fechar o item; ao abrir, escrever "A preencher ao fechar <ticket>")
   - "Armadilhas"
   - "Para revisar" (3 a 5 perguntas sem resposta)
   - "Referências" (documentação oficial primeiro, com links verificados)
   - Ícone emoji coerente com o tema
5. Atualize o índice da página principal: coloque a nova página sob a etapa e o grupo certos e marque como concluído o item correspondente em "Próximos tópicos".
6. No final, me responda com a lista de páginas criadas ou atualizadas e os links, em no máximo 5 linhas.

Se o argumento for "fechar <ticket>", execute apenas a parte de atualização: preencha "Uso no projeto" a partir dos commits, do PR, de `docs/estudo/<ticket>.md` e do que conversamos, e marque o item como concluído no índice.

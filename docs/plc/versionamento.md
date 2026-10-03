# Versionamento do projeto CODESYS

O `plc/SmartCell.project` é binário: o Git registra que mudou, não o quê. Por isso todo commit em `plc/` leva junto o export PLCopenXML, e a revisão do PR é feita sobre o diff desse XML.

## Procedimento (a cada commit em `plc/`)

1. No CODESYS, `Build → Build` (F11): zero erros.
2. Se estiver online, `Online → Logout`.
3. `File → Save Project` (Ctrl+S) em `plc/SmartCell.project`.
4. Na árvore do dispositivo, selecione a `Application` → `Project → Export PLCopenXML` → salve sobre `plc/export/SmartCell.xml`.
5. Confira no XML: `contentHeader name="SmartCell.project"`. Outro nome (ex.: `Untitled1_RECOVERED_...`) significa que o export saiu do projeto errado.
6. `git status`: devem aparecer só `plc/SmartCell.project` e `plc/export/SmartCell.xml`. Os demais arquivos do CODESYS (`*.opt`, `*.~u`, `*.precompilecache`, `*.bootinfo`, `*.compileinfo`) já estão no `.gitignore`.
7. `git --no-pager diff plc/export/` e leia a mudança antes do commit. Commit dos dois arquivos juntos.

## Lendo o diff

- **Ruído esperado:** `fileHeader creationDateTime` e `contentHeader modificationDateTime`, no topo do arquivo, mudam a todo export. Ignore.
- **Mudança real:** o código ST aparece como texto dentro de `<ST><xhtml>`. No T2, trocar o período do pisca gerou 1 linha real e 2 de ruído (commit `b082dce`).
- O passo 7 não é formalidade: foi ele que pegou um `T#15MS` digitado no lugar de `T#1S`.

## Por que só PLCopenXML

O CODESYS não exporta ST como arquivos de texto puro de forma nativa; o PLCopenXML já traz o corpo ST legível, então um export basta. Decisão a registrar no ADR 0002 (T6).

Referência: [Export PLCopenXML (CODESYS Online Help)](https://content.helpme-codesys.com/en/CODESYS%20Development%20System/_cds_cmd_export_plcopenxml.html)

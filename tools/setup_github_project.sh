#!/usr/bin/env bash
# Cria o quadro (GitHub Project) "AI Manipulation Robot" com campos de acompanhamento
# e adiciona as issues abertas do repositório atual.
# Pré-requisito: gh auth refresh -s project
# Uso: rode na raiz do repo:  ./tools/setup_github_project.sh
set -euo pipefail

TITLE="AI Smart Cell"
OWNER="$(gh repo view --json owner --jq .owner.login)"
REPO_URL="$(gh repo view --json url --jq .url)"

gh auth status 2>&1 | grep -q "project" || {
  echo "Falta o escopo 'project'. Rode: gh auth refresh -s project"; exit 1; }

echo "==> Projeto"
NUMBER="$(gh project list --owner "$OWNER" --format json --jq ".projects[] | select(.title==\"$TITLE\") | .number" || true)"
if [ -z "$NUMBER" ]; then
  NUMBER="$(gh project create --owner "$OWNER" --title "$TITLE" --format json --jq .number)"
fi
gh project link "$NUMBER" --owner "$OWNER" --repo "$REPO_URL" >/dev/null 2>&1 || true

field() {  # cria o campo se ainda não existir
  local name="$1"; shift
  if ! gh project field-list "$NUMBER" --owner "$OWNER" --format json --jq '.fields[].name' | grep -Fxq "$name"; then
    gh project field-create "$NUMBER" --owner "$OWNER" --name "$name" "$@" >/dev/null
  fi
}

echo "==> Campos"
field "Etapa"       --data-type SINGLE_SELECT --single-select-options "Etapa 1,Etapa 2,Etapa 3,Etapa 4"
field "Sprint"      --data-type SINGLE_SELECT --single-select-options "Sprint 01,Sprint 02,Sprint 03,Sprint 04,Sprint 05,Sprint 06,Sprint 07,Sprint 08"
field "Estimativa"  --data-type NUMBER
field "Horas reais" --data-type NUMBER
field "Início"      --data-type DATE
field "Fim"         --data-type DATE

echo "==> Adicionando issues abertas"
for url in $(gh issue list --state open --limit 200 --json url --jq '.[].url'); do
  gh project item-add "$NUMBER" --owner "$OWNER" --url "$url" >/dev/null || true
done

echo
echo "Pronto: $(gh project view "$NUMBER" --owner "$OWNER" --format json --jq .url)"
echo "No navegador, ajuste uma vez:"
echo "  1. Status: Backlog, Sprint, Em andamento, Revisão, Feito"
echo "  2. Crie uma view Board agrupada por Status, filtrando o Sprint atual"
echo "  3. Crie uma view Table com Estimativa e Horas reais visíveis"

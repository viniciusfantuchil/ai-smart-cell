#!/usr/bin/env bash
# Cria labels, os milestones das 4 etapas e as issues do Sprint 1 no repositório atual.
# Uso (na raiz do repo, com o gh autenticado):  ./tools/create_sprint1_issues.sh
set -euo pipefail

DIR="docs/sprints/sprint-01"
MILESTONE="Etapa 1 · Automação"

command -v gh >/dev/null || { echo "Instale o GitHub CLI (gh) primeiro."; exit 1; }
gh auth status >/dev/null || { echo "Rode 'gh auth login' primeiro."; exit 1; }

echo "==> Labels"
gh label create ticket     --color 1D76DB --description "Unidade de trabalho do sprint" --force
gh label create experiment --color 5319E7 --description "Experimento com hipótese e métricas" --force
gh label create ideia      --color FBCA04 --description "Ideia para o backlog; não entra no sprint atual" --force
gh label create sprint-01  --color 0E8A16 --description "Sprint 1" --force
gh label create plc        --color B60205 --description "CODESYS / Factory I/O" --force

echo "==> Milestones"
existing="$(gh api "repos/{owner}/{repo}/milestones?state=all" --jq '.[].title')"
make_ms() {  # $1 título, $2 descrição
  grep -Fxq "$1" <<<"$existing" || gh api "repos/{owner}/{repo}/milestones" -f title="$1" -f description="$2" >/dev/null
}
make_ms "Etapa 1 · Automação"      "Gate 1: linha 2 h sem intervenção; 10 falhas detectadas; ≥ 98% classificação correta."
make_ms "Etapa 2 · Factory Copilot" "Gate 2: ≥ 80% diagnósticos corretos em 30 falhas; zero escritas no CLP."
make_ms "Etapa 3 · Robô na célula"  "Gate 3: ≥ 80% de pick & place disparado pelo CLP."
make_ms "Etapa 4 · Physical AI"     "Definido na revisão do Gate 3."

echo "==> Issues do Sprint 1"
create() {  # $1 arquivo, $2 título, $3 labels extras
  gh issue create --title "$2" --body-file "$DIR/$1" \
    --label "ticket,sprint-01${3:+,$3}" --milestone "$MILESTONE"
}
create T1-repo.md            "T1 · Repositório e quadro"
create T2-codesys.md         "T2 · Ambiente CODESYS versionado"            "plc"
create T3-st-fundamentos.md  "T3 · Fundamentos de Structured Text"         "plc"
create T4-machine-state.md   "T4 · FB_MachineState"                        "plc"
create T5-alarm-manager.md   "T5 · FB_AlarmManager"                        "plc"
create T6-projeto-papel.md   "T6 · Projeto da linha no papel + ADRs"       "plc"

echo "Pronto. Veja com: gh issue list --milestone \"$MILESTONE\""

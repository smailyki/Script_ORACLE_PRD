#!/bin/bash
# ============================================
# setup_repo.sh
# Création de la structure du repo Script_ORACLE_PRD
# Usage : bash setup_repo.sh
# ============================================

echo "📁 Création de la structure du dépôt Oracle DBA..."

DIRS=(
  "DDL/tables"
  "DDL/indexes"
  "DDL/views"
  "DDL/sequences"
  "DML/ref_data"
  "DML/patches"
  "DML/migration"
  "DML/rollback"
  "PLSQL/procedures"
  "PLSQL/functions"
  "PLSQL/packages"
  "PLSQL/triggers"
  "PLSQL/types"
  "PLSQL/jobs"
  "MAINTENANCE/stats"
  "MAINTENANCE/backup"
  "MAINTENANCE/index"
  "MAINTENANCE/purge"
  "MAINTENANCE/tablespace"
  "MAINTENANCE/export"
  "MONITORING/sessions"
  "MONITORING/perf"
  "MONITORING/AWR"
  "MONITORING/alerts"
  "MONITORING/space"
  "DOCS/runbooks"
  "DOCS/schemas"
  "SECURITY/audit"
  "SECURITY/privileges"
  "CONFIG/init_params"
  "TESTS/checks"
)

for dir in "${DIRS[@]}"; do
  mkdir -p "$dir"
  # Créer un .gitkeep pour que Git suive les dossiers vides
  touch "$dir/.gitkeep"
  echo "  ✅ $dir"
done

echo ""
echo "📄 Création du CHANGELOG.md..."
cat > CHANGELOG.md << 'EOF'
# Changelog

Toutes les modifications notables de ce dépôt sont documentées ici.

Format basé sur [Keep a Changelog](https://keepachangelog.com/fr/1.0.0/)

---

## [Unreleased]

### Ajouté
- Structure initiale du dépôt

---
EOF

echo ""
echo "✅ Structure créée avec succès !"
echo ""
echo "Prochaines étapes :"
echo "  git add ."
echo "  git commit -m 'feat: structure initiale du dépôt DBA Oracle'"
echo "  git push origin main"


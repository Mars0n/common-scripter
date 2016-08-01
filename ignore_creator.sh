#!/bin/bash

#Create a .gitignore file in a superior directory for common django project
cat <<EOF>> ../.gitignore
*.pyc
*.swn
*.swo
*.swp

$project_name/$setting_name.py
run.sh
shell.sh
dbshell.sh
db.sqlite3
migrate.sh

css/
stylesheets/
bower_components/

.sass-cache
.DS_Store
Gemfile
Gemfile.lock
EOF






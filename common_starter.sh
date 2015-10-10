#!/bin/bash

# Read the settings directory name and the custom setting file  
read -r -p "Project setting directory name: " project_name
read -r -p "Custom setting file name: " setting_name

# Scripts
echo python manage.py runserver --settings=$project_name.$setting_name > run.sh
echo python manage.py shell --settings=$project_name.$setting_name > shell.sh
echo python manage.py dbshell --settings=$project_name.$setting_name > dbshell.sh

# Execute mode on files
chmod +x run.sh shell.sh dbshell.sh

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

css/
stylesheets/
bower_components/

.sass-cache
.DS_Store
Gemfile
Gemfile.lock
EOF






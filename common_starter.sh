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



# Ask about creating a .gitignore file 
read -r -p "Create .gitignore file? [y/N]: " ifyesno
if [[ $ifyesno =~ ^([yY][eE][sS]|[yY])$ ]]
then
    source ignore_creator.sh
fi

# Ask about creating a requirements file 
read -r -p "Create requirements file? [y/N]: " ifyesno
if [[ $ifyesno =~ ^([yY][eE][sS]|[yY])$ ]]
then
    source requirements_creator.sh
fi

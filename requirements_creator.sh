#!/bin/bash

# Create a requirements file in a superior directory 
# for common python packages in a django project
cat <<EOF>> ../requirements.txt

# Basic packages for new python django projects
django
mysqlclient
simplejson
pytz
ipython

EOF





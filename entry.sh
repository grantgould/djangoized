# Import enviroment variables
source settings.sh

# Generate a Django project if none exist.
FILE=manage.py
if [ -f "$FILE" ]
then
    source server.sh
else 
    django-admin startproject $PROJECT_NAME $PROJECT_DIR
    source server.sh
fi

# Generate Django Project if None Exist
FILE=manage.py
if [ -f "$FILE" ]
then
    source server.sh
else 
    django-admin startproject .
    source server.sh
fi

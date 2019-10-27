# Make Nessary Migrations
python manage.py makemigrations

# Migrate Database 
python manage.py migrate

# Uncomment this line below when needing to add fixtures
# python manage.py loaddata fixtures/data.json

# Run the Server
python manage.py runserver 0.0.0.0:8000
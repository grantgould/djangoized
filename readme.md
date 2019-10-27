# Build a Django Server using Docker, Postgres, and Redis
Batteries Included:
- Django
- Postgres 
- Redis
- Docker

## Step 1: Build
```bash
git clone https://github.com/grantgould/djangoized
cd djangoized && docker-compose up
```

## Step 2: Postgres Integration
```bash
docker-compose down
```
- Delete SQLite Database (db.sqlite3)
- Swap Database Engine to Postgres in Settings (core/settings.py)
``` python
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': 'postgres',
        'USER': 'postgres',
        'HOST': 'db',
        'PORT': 5432,
    }
}
```
```bash
docker-compose up
```

## (Optional) Step 3: Integrate Django Channels & Redis
[Follow Django Channels Setup Documentation](https://channels.readthedocs.io/en/latest/tutorial/part_1.html) Remember your django project directory is located in /core.

## (Opinional) Step 4: Rename Project
- Rename directory /djangoized directory to your project name.
- Rename /docker-compose.yml main image to your project name.
- Rename directory /core to project name.
  - Update /manage.py DJANGO_SETTINGS_MODULE string to project name. 
  - Update project's settings.py, urls.py, and views.py DJANGO_SETTINGS_MODULE string to project name.

## Philosophy 
- /core (Django project)
- /apps (Django startapps directory)
- /fixtures (Load Database Data on Container Startup)
- /entry.sh (Create Django Project)
- /server.sh (Run Django Server)

## Changelog
- v0.0.1 Inital Version
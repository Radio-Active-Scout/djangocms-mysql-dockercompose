# Installing and running a DjangoCMS Docker instance

DjangoCMS install using manual directions:
https://djangocms.readthedocs.io/en/latest/how_to/install/

## _About_ ##
Based off `django-container-base`, with settings adjusted according to the manual installation directories. Note that PHPMyAdmin has also been configured for this container image without any special configuration relevant to this project.

# ACTONS: #

Don't forget to:
1. create your .env file.
2. start the app.
3. attach shell to appengine container to run `$ python manage.py migrate`.
4. in same shell, create a superuser for admin `$ python manage.py createsuperuser`.
5. shouldn't need to, but give the container the ol' turn it off and on again...
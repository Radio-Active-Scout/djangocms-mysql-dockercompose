# Djangocms-mysql-docker
This is a docker + docker-compose setup that install:
Djangocms on Python3
Mysql
PHPmyadmin


# Reason
The reason for building this was that there was no Djangocms with python3 and mysql builds out there.
This is important, since the sqlite is not optimal for cms hosting (at least in my oppinion).
This build is certainly not meant to be used as a live server, but rather for developing at near real conditions,
with mysql and phpmyadmin for ease of bugfixing.

# Notes
This build exposes the raw data of the containers to the user, so that you can word directly within the files.
This is fine for a local developer server, but if you think about using this in production, at the very least comment out:
all the volumes secions in the docker-compose file, eg.:
    volumes:
      - ${DJANGO_DATA_DIR-./data/DJANGO}:/app/

Furthermore, disable the phpmyadmin and mysql ports in production as well, also in the docker-compose file.


# Installation
## 1
First, go through the docker-compose file, and change ports, passwords, etc.
Second, make sure that the environment variables regarding mysql (both in django-cms and mysql sections) are equal. You need equal values in order for the mysql to work properly 
## 2
run: 
docker-compose build && docker-compose up
Wait a while. The build script (setup.sh) which is executed within the container on "docker-compose up" is silent for a long time, so give it at least 5 minutes before hitting ctrl+c ;)
The phpmyadmin will finish building and then you will have to wait a good while sadly. This is only true the first time you install a site.

## 3
You can now open up localhost:8000 (Or whatever port you have assigned) and login with user: admin, password:admin. (Make sure to change these asap).

## Switching between sites
it is possible to switch between sites within this docker container. Simply edit the environment variable "sitename" and do docker-compose up

# Resetting
It is very important that since the mysql db and the files used are persistent, that whenever you want to reset anything, delete everything in the data folder
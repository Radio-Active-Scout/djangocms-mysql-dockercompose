#
# Dockerfile for django-cms
#

FROM python:3.5
MAINTAINER Tobias <tobias@osandweb.dk>
ENV PIP_REQUIRE_VIRTUALENV false

WORKDIR /app
RUN mkdir -p /cms/requirements/
ADD requirements/base.txt /cms/requirements/base.txt
RUN pip install -r /cms/requirements/base.txt
# Add mysql to the project:
RUN pip install mysqlclient
# Install the actual django-cms:
RUN pip install djangocms-installer
COPY scripts/setup.sh /setup.py
RUN chmod +x /setup.py
CMD /bin/bash /setup.py

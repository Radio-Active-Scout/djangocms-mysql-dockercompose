#
# Dockerfile for django-cms
#

FROM python:3.5
ENV PYTHONBUFFERED=1
WORKDIR /app
COPY requirements.txt /app/
COPY setup.sh /app/setup.sh
RUN pip install -r requirements.txt

# Add mysql to the project:
# RUN pip install mysqlclient
# Install the actual django-cms:
# RUN pip install djangocms-installer

COPY . /app/
RUN chmod +x /app/setup.sh
RUN /bin/bash /app/setup.sh

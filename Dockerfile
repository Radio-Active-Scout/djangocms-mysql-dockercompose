#
# Dockerfile for django-cms
#

FROM python:3
ENV PYTHONBUFFERED=1
WORKDIR /app
COPY requirements.txt /app/
RUN pip install -r requirements.txt

# Add mysql to the project:
# RUN pip install mysqlclient
# Install the actual django-cms:
# RUN pip install djangocms-installer

COPY . /app/
CMD ["python", "radioactivescout/manage.py", "runserver", "0.0.0.0:8000"]
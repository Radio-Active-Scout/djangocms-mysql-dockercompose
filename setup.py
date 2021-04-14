cd /app
if [ -d "/app/$sitename" ] 
then
    python $sitename/manage.py runserver 0.0.0.0:8000
else
    # Setting up mysql
    # pip install mysql-python
    echo "Log, creating $sitename"
    mkdir $sitename
    echo "Log, making $sitename"
    djangocms --db mysql://$MYSQL_USER:$MYSQL_PASSWORD@mysql/$MYSQL_DATABASE $sitename
    echo "Log, migrating to mysql, $sitename"
    python $sitename/manage.py migrate --run-syncdb
    echo "Log, Running server $sitename"
    python $sitename/manage.py runserver 0.0.0.0:8000
fi

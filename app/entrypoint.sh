if ["$DATABASE" = "postgres"]
then 
    echo "Waiting for Response......"
    while ! nc -z $SQL_HOST $SQL_PORT; do
        sleep 0.1
    done


    echo "Postgres Started"
fi

python manage.py flush --no-input
python manage.py migrate

exec "$@"


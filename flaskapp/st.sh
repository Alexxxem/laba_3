gunicorn --bind 127.0.0.1:5000 wsgi:app & APP_PID=$!
sleep 40
echo start client
python3 client.py
APP_CODE=$?
sleep 5
echo $APP_PID
echo app code $APP_CODE
exit $APP_CODE

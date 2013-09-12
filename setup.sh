venv_activate=$VIRTUAL_ENV/bin/activate
thisdir=$(pwd)

echo 'Django Secret Key:'
read secret_key

echo 'Database String:'
read db_string

echo 'Project Name:'
read project_name



echo "" >> $venv_activate
echo "export DJANGO_SECRET_KEY='$secret_key'" >> $venv_activate
echo "export DJANGO_SETTINGS_MODULE='$project_name.settings.dev'" >> $venv_activate
echo "export DJANGO_DATABASE_URL='$db_string'" >> $venv_activate
echo "export PYTHONPATH=$thisdir" >> $venv_activate

mv django_heroku_skeleton $project_name
sed -i '' "s/django_heroku_skeleton/$project_name/g" $project_name/settings/common.py 
sed -i '' "s/django_heroku_skeleton/$project_name/g" $project_name/urls.py 
sed -i '' "s/django_heroku_skeleton/$project_name/g" $project_name/wsgi.py
sed -i '' "s/django_heroku_skeleton/$project_name/g" Procfile

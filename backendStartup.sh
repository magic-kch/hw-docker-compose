#!/bin/bash

set -x

echo "Начинаем миграцию базы данных..."
python manage.py migrate
echo "Миграция базы данных успешно завершена!"

echo "Начинаем сборку статических файлов..."
python manage.py collectstatic --noinput
echo "Сборка статических файлов успешно завершена!"

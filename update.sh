docker-compose exec app git pull origin master
docker-compose exec app composer install
docker-compose exec app php artisan migrate
docker-compose exec app php artisan cache:clear
docker-compose exec app php artisan config:clear
docker-compose exec app php artisan view:clear
docker-compose exec app php artisan route:clear
docker-compose exec app php artisan optimize

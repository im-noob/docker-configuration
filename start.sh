# comping .env
cp .env.example .env

# spinning up docker image
docker-compose build app
docker-compose up -d

# initial laravel configuration
sleep 30

docker-compose exec app composer install
docker-compose exec app php artisan key:generate
docker-compose exec app php artisan migrate --seed
docker-compose exec app php artisan cache:clear
docker-compose exec app php artisan config:clear
docker-compose exec app php artisan view:clear
docker-compose exec app php artisan route:clear


# for removing old images
# docker rmi $(docker images -a -q)

# for stopping all running processes
# docker stop $(docker ps -a -q)

# for removing all stopped processes
# docker rm $(docker ps -a -q)

# for checking the logs
# docker logs laravel-app

# for removing everything from docker
# docker system prune -a

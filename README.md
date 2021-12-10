# docker-configuration
Docker Configuration
### This Configuration can be used to when you want to add in the root folder


source: https://www.digitalocean.com/community/tutorials/how-to-install-and-set-up-laravel-with-docker-compose-on-ubuntu-20-04

Steps: 

1. ```docker-compose build app```
2. ```docker-compose up -d```
3. ```docker-compose ps```
4. ```docker-compose exec app ls -l```
5. ```docker-compose exec app composer install```
6. ```docker-compose exec app php artisan key:generate```
7. ```docker-compose exec app php artisan migrate```
8. ```docker exec -it app-name /bin/bash```
9. Make sure that your host name should be ```mysql``` in .env
10. bingo.. 😃

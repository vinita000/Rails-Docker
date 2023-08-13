# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


docker-compose ps ---- To check status of services
docker exec -it rails-docker_app_1 bundle exec rails console --- go inside container and ru rails console
--- create volume to map app data -
docker volume create myapp_data
/Rails-Docker
docker images
docker run -it -v noteapp-data:/Rails-Docker <image_name_or_id> /bin/bash
docker volume ls --- check volume list
checking data in volume -- docker run -it -v  noteapp-data:/volume-data ubuntu /bin/bash
cd /volume-data
docker run -it -v noteapp-data:/volume-data 310392a080e1 /bin/bash


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

### copy aws key-value name to project directory from downloads
cp -r aws_video.pem /Users/apple/Documents/Rails-Docker

sudo chmod 600 aws_video.pem
ll aws_video.pem --- which shows aws video has one person read and write
ssh -i "aws_video.pem" ubuntu@ec2-54-91-10-37.compute-1.amazonaws.com
sudo apt update
ssh-keygen
cat /home/ubuntu/.ssh/id_rsa.pub
go - security groups -add inbound rules - to port 3000

run on docker ----
create instance in aws
create ssh in aws console
add in git
clone project in aws console
docker build -t app .
docker volume create app-storage
docker build -t app:latest .
 sudo docker-compose run app bundle exec rails db:migrate
docker run --rm -it -v app-storage:/rails/storage -p 3000:3000 --env RAILS_MASTER_KEY=<see config/master.key> app ----console open


docker run --rm -it -v app-storage:/rails/storage -p 3000:3000 --env RAILS_MASTER_KEY=d035e4ba50c39e27799cf37701b3f788 app bundle exec rails server -b 0.0.0.0 -p 3000


sudo docker ps -a
CONTAINER ID   IMAGE              COMMAND                  CREATED          STATUS                      PORTS     NAMES
83c8067cb9db   rails-docker_app   "bundle exec rails s…"   17 minutes ago   Exited (1) 17 minutes ago             rails-docker_app_1
70bee3165a56   2a934ac9ec94       "bundle exec rails d…"   20 minutes ago   Exited (1) 18 minutes ago             rails-docker_app_run_f673e231c132
112b93d20017   2a934ac9ec94       "bundle exec rails d…"   23 minutes ago   Exited (1) 22 minutes ago             rails-docker_app_run_bad8793d4058
03c880f5e40c   arm64v8/mysql      "docker-entrypoint.s…"   23 minutes ago   Exited (1) 18 minutes ago             rails-docker_db_1
ubuntu@ip-172-31-94-15:~/Rails-Docker$ sudo docker start 83c8067cb9db


sudo docker ps
sudo docker ps -a

sudo docker start 83c8067cb9db

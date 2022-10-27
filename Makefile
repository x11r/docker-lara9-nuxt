include .env

app:
	docker-compose exec app /bin/bash
build:
	docker-compose stop
	docker-compose up --build -d
ps:
	docker ps
stop:
	docker-compose stop
up:
	docker-compose up -d
web:
	docker-compose exec web /bin/sh

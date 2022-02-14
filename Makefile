start:
	docker compose up -d
build:
	docker-compose up --build -d
stop:
	docker compose stop
down:
	docker compose down
exec:
	docker compose exec opencv bash

up:
	open -a Xquartz
	xhost +$(hostname)
	docker-compose up -d

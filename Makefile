server:
	npx nodos server

test:
	npm -s test

build:
	docker build -t antivt/nodos .

docker-run:
	docker run -d -p 8080:8080 --name nodos antivt/nodos

docker-stop:
	docker stop nodos

docker-exec:
	docker exec -it nodos bash

compose:
	docker-compose up -d

compose-production:
	docker-compose --file docker-compose.yml run production

compose-build:
	docker-compose build

compose-logs:
	docker-compose logs -f

compose-down:
	docker-compose down || true

compose-stop:
	docker-compose stop || true

compose-restart:
	docker-compose restart

compose-setup: compose-down compose-build app-setup

compose-ci-build:
	docker-compose -f docker-compose.yml build

compose-ci:
	docker-compose --file docker-compose.yml build
	docker-compose --file docker-compose.yml up --abort-on-container-exit

env-prepare:
	cp -n .env.populate .env || true

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

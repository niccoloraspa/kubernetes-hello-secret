build:
	docker build -t hello-secret .

run:
	docker run -p 8080:8080 -ti hello-secret

test:
	curl localhost:8080/
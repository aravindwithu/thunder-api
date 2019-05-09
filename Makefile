all:	build	run

clean:	stop	rmi

stop:
	docker stop thunder-api	&& docker rm thunder-api

rmi:
	docker rmi thunder-api

build:
	docker build -t thunder-api .

run:
	docker run -d -p 5050:5050 --name thunder-api thunder-api
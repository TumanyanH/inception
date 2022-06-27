all:
	docker-compose up --build

clean:
	docker-compose 

push:
	git add . && git commit -m "message" && git push
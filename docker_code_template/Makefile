## all: install-devenv
# install-devenv: build

# Build the docker container
build:
	docker-compose pull
	docker-compose build

stack-up:
	docker-compose up -d

# Clean up docker container
stack-purge:
	docker-compose stop
	docker-compose kill
	docker-compose rm

# Refresh dependencies (Docker images) and rebuild
stack-full-refresh:
	docker-compose build --no-cache --pull

# Enter 'dev' container with bash
dev-bash:
	docker-compose run --rm --entrypoint "/bin/bash -c" <$CODE_FOLDER_NAME> bash

# make hello name=Worlid
hello:
	docker-compose run --rm <$DOCKER_NAME> python3 app/commands/test.py

# make run-main
run-main:
	docker-compose run --rm <$DOCKER_NAME> python3 <$CODE_FOLDER_NAME>/main.py

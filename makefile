.PHONY: up down

up:
	@docker-compose -p redis-cluster up -d --build
	# @docker-compose -p redis-cluster scale slave=4
	@docker-compose -p redis-cluster scale sentinel=3

down:
	@docker-compose -p redis-cluster down
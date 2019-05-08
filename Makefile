dev:
	@sudo service nginx stop && docker-compose down && \
		docker-compose \
			-f docker-compose.yml \
		up -d --remove-orphans nginx mysql adminer workspace

down:
	@docker-compose down

bash:
	@./sync.sh bash

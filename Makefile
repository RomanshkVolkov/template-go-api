build-dev:
	sudo rm -rf ./infra/containers/development/db/data/*
	docker compose up -d --build
run:
logs-api:
	docker compose logs -f api
restart-api:
	docker compose restart api
	make logs-api
create-docs:
	~/go/bin/swag init -g ./cmd/main.go -o cmd/docs

sync:
	docker-compose -f docker-compose.sync.yml up -d
up:
	docker-compose -f docker-compose.yml up -d
run:
	docker-compose up -d
dev:
	docker-compose -f docker-compose.dev.yml up -d $1
dev-down:
	docker-compose -f docker-compose.dev.yml down $1

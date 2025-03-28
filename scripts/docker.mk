# docker shortcuts
.PHONY: lazy-docker
lazy-docker:
	$(call lazy_log, "Docker shortcuts:")
	@echo "  make lazy-docker-up    - Start containers"
	@echo "  make lazy-docker-down  - Stop containers"

.PHONY: lazy-docker-up
lazy-docker-up:
	docker compose up -d

.PHONY: lazy-docker-down
lazy-docker-down:
	docker compose down
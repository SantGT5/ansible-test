#----
# Compose
#----

define RUN_COMPOSE
    @docker compose up --build
endef

start: urls ## Start Ansible Lab
	@docker compose up --build
.PHONY: start

#----
# Config
#----

.DEFAULT_GOAL := help

help: ## Show command list (default)
	@awk -F ':|##' '/^[^\t].+:.*##/ { printf "\033[36mmake %-28s\033[0m -%s\n", $$1, $$NF }' $(MAKEFILE_LIST) | sort
.PHONY: help

#----
# Info
#----

urls: ## Show the urls to the running applications
	@echo "*------"
	@echo "* Ansible Lab"
	@echo "*"
	@echo "* Frontend: http://localhost:1000"
	@echo "*"
	@echo "*------\n"
.PHONY: urls

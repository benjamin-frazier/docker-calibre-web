# Makefile for Calibre-Web Docker Compose

.PHONY: up down restart logs build shell

# Use docker compose (v2 syntax). If you're using older Docker Compose, replace with 'docker-compose'
DC = docker compose

up:
	$(DC) up -d

down:
	$(DC) down

restart:
	$(DC) down && $(DC) up -d

logs:
	$(DC) logs -f

build:
	$(DC) build

shell:
	$(DC) exec calibre-web /bin/bash

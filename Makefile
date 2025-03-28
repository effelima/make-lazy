LAZY_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))/scripts/

include $(LAZY_DIR)core.mk
include $(LAZY_DIR)task.mk
include $(LAZY_DIR)setup.mk
include $(LAZY_DIR)docker.mk

.PHONY: lazy-help
help: lazy-help
lazy-help:
	@printf "$(COLOR_LAZY)🦥 Make Lazy - Commands for efficiently lazy developers:$(COLOR_RESET)\n\n"
	
	@printf "$(COLOR_SUCCESS)🚀 Initial Setup:$(COLOR_RESET)\n"
	@echo "  make lazy-setup            - Set up everything automatically (docker + env)"
	@echo "  make lazy-setup-docker     - Set up Docker templates only"
	@echo "  make lazy-setup-env        - Set up environment files only"
	@echo ""
	
	@printf "$(COLOR_SUCCESS)🌿 Branch Management:$(COLOR_RESET)\n"
	@echo "  make lazy-task <type> ID-123 \"desc\" - Create branch automatically"
	@echo "    Valid types: feature | bug | hotfix"
	@echo "    Example: make lazy-task feature ID-456 \"add login\""
	@echo ""
	
	@printf "$(COLOR_SUCCESS)🐳 Container Control:$(COLOR_RESET)\n"
	@echo "  make lazy-docker-up        - Start containers (detached mode)"
	@echo "  make lazy-docker-down      - Stop and remove containers"
	@echo "  make lazy-docker           - Show all available Docker commands"
	@echo ""
	
	@printf "$(COLOR_SUCCESS)⚙️ Environment Management:$(COLOR_RESET)\n"
	@echo "  make lazy-setup-env        - Create/update .env files"
	@echo "    Asks before overwriting existing configs"
	@echo ""
	
	@printf "$(COLOR_SUCCESS)📦 Utilities:$(COLOR_RESET)\n"
	@echo "  make lazy-help             - Show this help (you're here!)"
	@echo ""
	
	@printf "$(COLOR_LAZY)💡 Lazy Pro Tip:$(COLOR_RESET)\n"
	@echo "  Start with 'make lazy-setup' to configure everything"
	@echo "  Use 'make lazy-task' for new features/bugs"
	@echo "  All commands start with 'lazy-' to conserve energy\n"
	@printf "$(COLOR_WARNING)⚠️  Laziness is a virtue when properly applied!$(COLOR_RESET)\n"
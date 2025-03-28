# scripts/core.mk - Versão corrigida

COLOR_RESET   := \033[0m
COLOR_LAZY    := \033[38;5;208m
COLOR_SUCCESS := \033[32m
COLOR_WARNING := \033[33m
COLOR_ERROR   := \033[31m

PROJECT_ROOT := $(shell pwd)
INFRA_DIR    := $(PROJECT_ROOT)/infra
ENVS_DIR     := $(INFRA_DIR)/envs
DOCKER_DIR   := $(INFRA_DIR)/docker

# Funções corrigidas (removido o @ inicial)
define lazy_log
	printf "$(COLOR_LAZY)🛌 %s$(COLOR_RESET)\n" $(1)
endef

define lazy_success
	printf "$(COLOR_SUCCESS)😪 %s$(COLOR_RESET)\n" $(1)
endef

define lazy_warning
	printf "$(COLOR_WARNING)💤 %s (meh...)$(COLOR_RESET)\n" $(1)
endef

define lazy_error
	printf "$(COLOR_ERROR)🙅♂️ %s (too tired to fix)$(COLOR_RESET)\n" $(1); exit 1
endef
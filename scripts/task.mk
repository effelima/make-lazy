.PHONY: lazy-task
lazy-task:
	@echo "$(COLOR_LAZY)🛌 Creating task branch...$(COLOR_RESET)"
	
	$(eval TASK_TYPE := $(word 2,$(MAKECMDGOALS)))
	$(eval TASK_ID := $(word 3,$(MAKECMDGOALS)))
	$(eval TASK_DESC := $(shell echo "$(wordlist 4,$(words $(MAKECMDGOALS)),$(MAKECMDGOALS))" | tr ' ' '-'))
	
	@if [ -z "$(TASK_ID)" ]; then \
		echo "$(COLOR_ERROR)✗ Usage: make lazy-task feature ID-123 \"description\"$(COLOR_RESET)"; \
		exit 1; \
	fi
	
	$(eval BRANCH_NAME := $(TASK_TYPE)/$(shell echo "$(TASK_ID)" | sed 's/^ID-//')/$(TASK_DESC))
	@git checkout -b "$(BRANCH_NAME)"
	
	@echo "$(COLOR_SUCCESS)✅ Branch $(BRANCH_NAME) created$(COLOR_RESET)"

%:
	@:
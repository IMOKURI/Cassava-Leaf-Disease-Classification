.DEFAULT_GOAL := help

KERNEL_INFERENCE := cassava-inference
KERNEL_TRAINING := cassava-training

define pull
	rm -f kernel-metadata.json
	kaggle kernels pull -w -m imokuri/$1
	cp kernel-metadata.json $1-kernel-metadata.json
endef

define push
	rm -f kernel-metadata.json
	cp $1-kernel-metadata.json kernel-metadata.json
	kaggle kernels push
endef

pull-inf: ## Pull kernel $(KERNEL_INFERENCE)
	$(call pull,$(KERNEL_INFERENCE))

push-inf: ## Push kernel $(KERNEL_INFERENCE)
	$(call push,$(KERNEL_INFERENCE))

pull-train: ## Pull kernel $(KERNEL_TRAINING)
	$(call pull,$(KERNEL_TRAINING))

push-train: ## Push kernel $(KERNEL_TRAINING)
	$(call push,$(KERNEL_TRAINING))

help: ## Show this help
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / \
		{printf "\033[38;2;98;209;150m%-20s\033[0m %s\n", $$1, $$2}' \
		$(MAKEFILE_LIST)

default: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s %s\n\033[0m", $$1, $$2}'

.PHONY: hello-wordpress
hello-wordpress: ## build hello-wordpress plugin
	zip -r hello-wordpress.zip hello-wordpress/

.PHONY: kf-presenters
kf-presenters: ## build kf-presenters plugin
	zip -r kf-presenters.zip kf-presenters/

.PHONY: kf-vendors
kf-vendors: ## build kf-vendors plugin
	zip -r kf-vendors.zip kf-vendors/

.PHONY: kf-workshops
kf-workshops: ## build kf-workshops plugin
	zip -r kf-workshops.zip kf-workshops/

.PHONY: start
start: ## start KF Wordpress site
	docker-compose up -d

.PHONY: stop
stop: ## stop KF WordPress site
	docker-compose down

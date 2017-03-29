APP_NAME = identidock
PROJECT_NAME = cipython
UNIT_TESTING_NAME = cipythonunit
CONTRACT_TESTING_NAME = cipythoncontract
INTEGRATION_TESTING_NAME = cipythonintegration
COMPONENT_TESTING_NAME = cipythoncomponent
END_TO_END_TESTING_NAME = cipythone2e
UNIT_TEST_DIR = $(PWD)/tests/unit
CONTRACT_TEST_DIR = $(PWD)/tests/contract
INTEGRATION_TEST_DIR = $(PWD)/tests/integration
COMPONENT_TEST_DIR = $(PWD)/tests/component
END_TO_END_TEST_DIR = $(PWD)/tests/e2e


build: build-dev

build-dev: 
	docker-compose -p $(PROJECT_NAME) build

build-prod:
	docker-compose -p $(PROJECT_NAME) -f docker-compose.prod.yml build


start: start-dev

start-dev: build-dev
	docker-compose -p $(PROJECT_NAME) up -d

start-prod: build-prod
	docker-compose -p $(PROJECT_NAME) -f docker-compose.prod.yml up -d

start-all: start-dev start-prod


stop: stop-dev

stop-dev:
	docker-compose -p $(PROJECT_NAME) stop

stop-prod:
	docker-compose -p $(PROJECT_NAME) -f docker-compose.prod.yml stop

stop-all: stop-dev stop-prod


remove: remove-dev

remove-dev: stop-dev
	docker-compose -p $(PROJECT_NAME) rm --force -v

remove-prod: stop-prod
	docker-compose -p $(PROJECT_NAME) -f docker-compose.prod.yml rm --force -v

remove-all: remove-dev remove-prod



check-logs: check-logs-dev

check-logs-app: check-logs-dev-app

check-logs-dev:
	docker-compose -p $(PROJECT_NAME) logs --follow --tail=10 $(APP_NAME)

check-logs-dev-app:
	docker-compose -p $(PROJECT_NAME) logs --follow --tail=10

check-logs-prod:
	docker-compose -p $(PROJECT_NAME) -f docker-compose.prod.yml logs --follow --tail=10 $(APP_NAME)

check-logs-prod-app:
	docker-compose -p $(PROJECT_NAME) -f docker-compose.prod.yml logs --follow --tail=10




system-prune:
	echo "y" | docker system prune

clean: clean-dev

clean-dev: remove-dev system-prune 

clean-prod: remove-prod system-prune

clean-all: clean-dev clean-prod


# testing:
# 	./tests/test.sh $(APP_NAME) unit $(UNIT_TESTING_NAME) $(UNIT_TEST_DIR) 

test-unit:
	bash -c "tests/test.sh $(APP_NAME) unit $(UNIT_TESTING_NAME) $(UNIT_TEST_DIR)" 

test-component:
	bash -c "tests/test.sh $(APP_NAME) component $(COMPONENT_TESTING_NAME) $(COMPONENT_TEST_DIR)" 

test-contract:
	bash -c "tests/test.sh $(APP_NAME) contract $(CONTRACT_TESTING_NAME) $(CONTRACT_TEST_DIR)" 

test-integration:
	bash -c "tests/test.sh $(APP_NAME) integration $(INTEGRATION_TESTING_NAME) $(INTEGRATION_TEST_DIR)" 

test-e2e:
	bash -c "tests/test.sh $(APP_NAME) e2e $(END_TO_END_TESTING_NAME) $(END_TO_END_TEST_DIR)" 

test-system: test-e2e

test-ui-acceptance: test-e2e

test-functional: test-e2e


test: system-prune test-unit test-integration test-component test-ui-acceptance



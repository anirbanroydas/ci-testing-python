#!/bin/sh
set -e

if [ "$ENV" = "DEV" ]; then
	echo "Running Development Application"
	pip install --no-deps -e .
	exec python ci_testing_python/app/identidock.py

elif [ "$ENV" = "UNIT_TEST" ]; then
	echo "Running Unit Tests"
	pip install --no-deps -e .
	pytest -v -s --cov=ci_testing_python tests/unit 
	ls -a
	# exec tox -e unit

elif [ "$ENV" = "CONTRACT_TEST" ]; then
	echo "Running Contract Tests"
	pip install --no-deps -e .
	exec pytest -v -s --cov=ci_testing_python tests/contract
	# exec tox -e contract

elif [ "$ENV" = "INTEGRATION_TEST" ]; then
	echo "Running Integration Tests"
	pip install --no-deps -e .
	exec pytest -v -s --cov=ci_testing_python tests/integration
	# exec tox -e integration

elif [ "$ENV" = "COMPONENT_TEST" ]; then
	echo "Running Component Tests"
	pip install --no-deps .
	exec python ci_testing_python/app/identidock.py

elif [ "$ENV" = "END_TO_END_TEST" ]; then
	echo "Running End_To_End Tests"
	pip install --no-deps .
	exec uwsgi --http 0.0.0.0:9090 --wsgi-file ci_testing_python/app/identidock.py --callable app --stats 0.0.0.0:9191  --py-autoreload 1

elif [ "$ENV" = "PROD" ]; then 
	echo "Running Production Application"
	pip install --no-deps .
	exec uwsgi --http 0.0.0.0:9090 --wsgi-file ci_testing_python/app/identidock.py --callable app --stats 0.0.0.0:9191  --py-autoreload 1

else
	echo "Please provide an environment"
	echo "Stopping"
fi

FROM python:3.6-alpine

WORKDIR /component_test

COPY requirements/requirements-dev.txt /component_test/
RUN pip install -r requirements-dev.txt
RUN pip install requests==2.13.0

COPY tests/component/test_component_identidock.py /component_test/
COPY wait-for-it.sh /usr/local/bin/

CMD ["wait-for-it.sh", "identidock:5000", "--strict", "--timeout=10", "--", "pytest", "-v", "-s", "test_component_identidock.py"]

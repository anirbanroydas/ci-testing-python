FROM python:3.4-alpine

WORKDIR /component_testing

COPY ../../requirements/requirements-dev.txt /component_testing/
RUN pip install -r requirements-dev.txt

COPY test_component_identidock.py /component_testing/
COPY component_test.sh /component_testing/

CMD ["pytest", "test_component_identidock.py"]

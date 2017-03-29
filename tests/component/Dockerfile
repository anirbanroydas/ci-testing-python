FROM python:3.6-alpine

WORKDIR /component_test

COPY requirements/requirements-dev.txt /component_test/
RUN pip install -r requirements-dev.txt
RUN pip install requests==2.13.0

COPY tests/component/test_component_identidock.py /component_test/

CMD ["pytest", "-v", "-s", "test_component_identidock.py"]

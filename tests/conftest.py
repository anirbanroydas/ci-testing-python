import pytest
from ci_testing_python.app.identidock import app as flask_app


@pytest.fixture(scope='session')
def app():
    return flask_app
    
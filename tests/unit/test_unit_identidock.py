from doubles import allow
import pytest
from ci_testing_python.app import identidock

@pytest.fixture()
def cache(request):



def test_get_mainpage(client):
	page = client.get("/")
	assert page.status_code == 200
	assert 'Joe Bloggs' in str(page.data)


def test_post_mainpage(client):
	page = client.post("/", data=dict(name="Moby Dock"))
	assert page.status_code == 200
	assert 'Moby Dock' in str(page.data)


def test_html_escaping(client):
	page = client.post("/", data=dict(name='"><b>TEST</b><!--'))
	assert page.status_code == 200
	assert '<b>' not in str(page.data)


def test_get_identicon(client):
	


if __name__ == '__main__':
	# unittest.main()
	pytest.main()

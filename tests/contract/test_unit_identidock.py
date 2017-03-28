# import unittest
import pytest
# from ci_testing_python.app.identidock import app


def test_get_mainpage(client):
	page = client.post("/", data=dict(name="Moby Dock"))
	assert page.status_code == 200
	assert 'Moby Dock' in str(page.data)


def test_html_escaping(client):
	page = client.post("/", data=dict(name='"><b>TEST</b><!--'))
	assert '<b>' not in str(page.data)




if __name__ == '__main__':
	# unittest.main()
	pytest.main()

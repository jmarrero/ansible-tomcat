import requests
#Return the status code of an url
def check_status(url):
    try:
        r = requests.head(url, allow_redirects=True)
        return r.status_code
    except requests.ConnectionError:
        print("failed to connect")
        return 0

def sample_body(url):
    try:
        r = requests.get(url, allow_redirects=True)
        return r.content
    except requests.ConnectionError:
        print("failed to connect")
        return ""

#Check if the status code of the url is 200 OK
def test_status():
    assert check_status("http://localhost:8080/sample") == 200

def test_body():
    assert b"This is the home page for a sample application" in sample_body("http://localhost:8080/sample")
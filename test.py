import requests

test = {}

while True:
    result = requests.get("http://chart-example.local").json()
    test[result['version']] = test.get(result['version'], 0) + 1
    print(test)
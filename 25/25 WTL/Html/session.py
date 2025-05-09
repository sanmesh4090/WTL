import requests

# Create a session object
session = requests.Session()

# Send a request to a site (e.g., simulate login or access a page that sets cookies)
response = session.get('https://httpbin.org/cookies/set/sessioncookie/123456789')

# Now the session has stored the cookie
print("Cookies after setting:")
print(session.cookies.get_dict())

# Make another request with the same session to demonstrate persistence
response = session.get('https://httpbin.org/cookies')

# The server returns the current cookies sent in the request
print("\nCookies received in second request:")
print(response.json())

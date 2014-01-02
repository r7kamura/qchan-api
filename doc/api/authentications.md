## GET /auth/authorize
Redirects to GitHub's authorization URL following the OAuth 2.0 Authorization Code Grant.
We include client_id, scope, redirect_uri, and state as a URI query.
The redirect_uri points to /auth/callback and this point will take authorization code to get access token.
We also include params[:redirect_to] into the state query to let /auth/callback to redirect there


### Parameters
* `redirect_to` string (required)

### Example
```
GET /auth/authorize?redirect_to=http://example.com/callback HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

```
HTTP/1.1 302
Cache-Control: no-cache
Content-Length: 290
Content-Type: text/html; charset=utf-8
Location: https://github.com/login/authorize?client_id=test_client_id&redirect_uri=http%3A%2F%2Fwww.example.com%2Fauth%2Fcallback&scope=public%2Cuser&state=sJClYvmxhYI1kI1__WoKiw%3A%3A%3Ahttp%3A%2F%2Fexample.com%2Fcallback
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: b7fcb36a-f3d8-4121-8232-244d9c93faa8
X-Runtime: 0.006745
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

<html><body>You are being <a href="https://github.com/login/authorize?client_id=test_client_id&amp;redirect_uri=http%3A%2F%2Fwww.example.com%2Fauth%2Fcallback&amp;scope=public%2Cuser&amp;state=sJClYvmxhYI1kI1__WoKiw%3A%3A%3Ahttp%3A%2F%2Fexample.com%2Fcallback">redirected</a>.</body></html>
```

## GET /auth/callback
This API is a callback point from GitHub's OAuth 2.0 flow of the Authorization Code Grant.
We try to exchange params[:code] to GitHub's access token, then finds if corresponding user exists.
If not, we create a new user by requesting the user's information using the access token.
Finally, we send user attributes and a newly-created Qchan's access token
to the URL specified by params[:state].
The params[:state] format must be like `<nonce>:::<redirect_uri>`


### Parameters
* `code` string (required)
* `state` string (required)

### Example
```
GET /auth/callback?code=test_code&state=test_prefix:::http://example.com/callback HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 635
Content-Type: text/html; charset=utf-8
ETag: "e742aac283a65bac487e9e8dfc67b071"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 2bd8c041-3db9-4f0a-ab36-e02d748b258c
X-Runtime: 0.018447
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

<!DOCTYPE html><html><head><title>Qchan</title></head><body><form accept-charset="UTF-8" action="http://example.com/callback" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div><input id="token" name="token" type="hidden" value="5499175ca467135c513b9d4467f4ad9039cc20174e29cdf12a497405da3b36d0" /><input id="email" name="email" type="hidden" value="test@example.com" /><input id="name" name="name" type="hidden" value="test" /><input id="uid" name="uid" type="hidden" value="1" /></form><script type="text/javascript">document.forms[0].submit()</script></body></html>
```

## POST /auth/exchange
Given github access token, then returns qchan api's access token.

### Parameters
* `access_token` string (required)

### Example
```
POST /auth/exchange HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 77
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

access_token=ff764cc2ec81d982414ca081c6cd9f0dd54e3c91f63f73fa69ec81f823258d25
```

```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 125
Content-Type: application/json; charset=utf-8
ETag: "075fd5d39bf54134f1b029e4e8f59cb8"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 445362a3-c4f9-4d67-9d4c-66b5cf59b3dd
X-Runtime: 0.014086
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

{
  "token": "60d3af899e81b57ce25a5549c361d40b758d0b9b62c307bbffb0dac941c47057",
  "email": "test@example.com",
  "name": "test",
  "uid": 1
}
```

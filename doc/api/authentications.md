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
Location: https://github.com/login/authorize?client_id=test_client_id&redirect_uri=http%3A%2F%2Fwww.example.com%2Fauth%2Fcallback&scope=public%2Cuser&state=Wf89GhKEc14F_jNGOM57qw%3A%3A%3Ahttp%3A%2F%2Fexample.com%2Fcallback
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 7754804a-1c9f-4e9b-97c8-2d455ddc043b
X-Runtime: 0.007147
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

<html><body>You are being <a href="https://github.com/login/authorize?client_id=test_client_id&amp;redirect_uri=http%3A%2F%2Fwww.example.com%2Fauth%2Fcallback&amp;scope=public%2Cuser&amp;state=Wf89GhKEc14F_jNGOM57qw%3A%3A%3Ahttp%3A%2F%2Fexample.com%2Fcallback">redirected</a>.</body></html>
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
ETag: "127560fbbfb4c1fdf1e6ccd68970941e"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: ecc5f49e-13a0-412b-9f0c-acebad785a8c
X-Runtime: 0.019317
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

<!DOCTYPE html><html><head><title>Qchan</title></head><body><form accept-charset="UTF-8" action="http://example.com/callback" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div><input id="token" name="token" type="hidden" value="4ce594aa9ad9ad23dc9afd1bfc849cce20a66ffdec91ee66941e7d14f089b217" /><input id="email" name="email" type="hidden" value="test@example.com" /><input id="name" name="name" type="hidden" value="test" /><input id="uid" name="uid" type="hidden" value="1" /></form><script type="text/javascript">document.forms[0].submit()</script></body></html>
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

access_token=41b8db0bd3c4fd29e52fb1776db344443d26c4099fbb8c63f243c383c8edcbe8
```

```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 125
Content-Type: application/json; charset=utf-8
ETag: "2fa6f951e949b705e1160eebfb384fed"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 8e560123-e391-4bc1-a140-349f7ab67a84
X-Runtime: 0.015516
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

{
  "token": "f5371330945510f175c230fdbfa7386683ce3e3b48edc4887b18d3b7502faebb",
  "email": "test@example.com",
  "name": "test",
  "uid": 1
}
```

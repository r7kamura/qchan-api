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
Location: https://github.com/login/authorize?client_id=test_client_id&redirect_uri=http%3A%2F%2Fwww.example.com%2Fauth%2Fcallback&scope=public%2Cuser&state=fS2gn-W0aTDVsEPfbcCZuQ%3A%3A%3Ahttp%3A%2F%2Fexample.com%2Fcallback
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 8461923a-7bfc-44ca-8396-6604d49e3f54
X-Runtime: 0.006934
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

<html><body>You are being <a href="https://github.com/login/authorize?client_id=test_client_id&amp;redirect_uri=http%3A%2F%2Fwww.example.com%2Fauth%2Fcallback&amp;scope=public%2Cuser&amp;state=fS2gn-W0aTDVsEPfbcCZuQ%3A%3A%3Ahttp%3A%2F%2Fexample.com%2Fcallback">redirected</a>.</body></html>
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
ETag: "3eaff2ed07f7d10173453bbc48173676"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 85128e62-4b03-460a-85b3-611898f9c20f
X-Runtime: 0.020994
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

<!DOCTYPE html><html><head><title>Qchan</title></head><body><form accept-charset="UTF-8" action="http://example.com/callback" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div><input id="token" name="token" type="hidden" value="f405353ada9a3d112b4dba302456778ffc7da3aa64ac12a2960a228ff0cd1da4" /><input id="email" name="email" type="hidden" value="test@example.com" /><input id="name" name="name" type="hidden" value="test" /><input id="uid" name="uid" type="hidden" value="1" /></form><script type="text/javascript">document.forms[0].submit()</script></body></html>
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

access_token=81bae4603f95a46326ac18cb7ffddbda1cc92374f8a7213aab59592d1a9e9e50
```

```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 125
Content-Type: application/json; charset=utf-8
ETag: "da6e78d53900b0a68a2cf0a0228657e6"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 15840ebc-0d78-432a-a58d-385017df23e5
X-Runtime: 0.012709
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

{
  "token": "c16fffe3947cc1473bea90d752c4793a03736a0eafda5436eb40249e4f0b8a18",
  "email": "test@example.com",
  "name": "test",
  "uid": 1
}
```

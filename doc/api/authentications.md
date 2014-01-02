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
Location: https://github.com/login/authorize?client_id=test_client_id&redirect_uri=http%3A%2F%2Fwww.example.com%2Fauth%2Fcallback&scope=public%2Cuser&state=-VJHvdAC2S6R24lW3DkLuA%3A%3A%3Ahttp%3A%2F%2Fexample.com%2Fcallback
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: b5705d8f-8111-4437-bc53-87fd663c7c63
X-Runtime: 0.006602
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

<html><body>You are being <a href="https://github.com/login/authorize?client_id=test_client_id&amp;redirect_uri=http%3A%2F%2Fwww.example.com%2Fauth%2Fcallback&amp;scope=public%2Cuser&amp;state=-VJHvdAC2S6R24lW3DkLuA%3A%3A%3Ahttp%3A%2F%2Fexample.com%2Fcallback">redirected</a>.</body></html>
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
ETag: "a0209928174ee3bb1de13022a4922e24"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: ecf4878d-4997-46b1-a99c-26947b8e7488
X-Runtime: 0.020789
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

<!DOCTYPE html><html><head><title>Qchan</title></head><body><form accept-charset="UTF-8" action="http://example.com/callback" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div><input id="token" name="token" type="hidden" value="366fd0170c367a21b619b636db669fbcc06658a2a3e9003af542a8176b0ea896" /><input id="email" name="email" type="hidden" value="test@example.com" /><input id="name" name="name" type="hidden" value="test" /><input id="uid" name="uid" type="hidden" value="1" /></form><script type="text/javascript">document.forms[0].submit()</script></body></html>
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

access_token=4c91a3bf7429166bafbb20b5ad58a906a9de28c9b5e0c4aca2a9b8fa41f6584c
```

```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 83
Content-Type: application/json; charset=utf-8
ETag: "7ea29d56a8dccb3fb81c7c66dd27a1da"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: c1545d2e-1b26-4db3-9ef6-b4358243c83b
X-Runtime: 0.012748
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

{
  "access_token": "b2ba08ea6b0faf4e736af0e2b72fb01288e5c85168641ee96e7861b812d1e835"
}
```

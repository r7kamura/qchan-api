## GET /auth/callback
This API is a callback point from GitHub's OAuth 2.0 flow of the Authorization Code Grant.
We try to exchange params[:code] to GitHub's access token, then finds if corresponding user exists.
If not, we create a new user by requesting the user's information using the access token.
Finally, we redirect to the URL specified by params[:state].
The params[:state] format must be like `<nonce>:::<redirect_uri>`.


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
Content-Length: 712
Content-Type: text/html; charset=utf-8
ETag: "e4cf4e0be1efc071c27f129bc98865b0"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: cda21584-f9f2-414a-b72d-0846467aac39
X-Runtime: 0.067348
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

<!DOCTYPE html><html><head><title>Qchan</title><link href="/stylesheets/application.css" media="all" rel="stylesheet" /><script src="/javascripts/application.js"></script></head><body><form accept-charset="UTF-8" action="http://example.com/callback" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div><input id="email" name="email" type="hidden" value="test@example.com" /><input id="name" name="name" type="hidden" value="test" /><input id="token" name="token" type="hidden" value="test_access_token" /><input id="uid" name="uid" type="hidden" value="1" /></form><script type="text/javascript">document.forms[0].submit()</script></body></html>
```

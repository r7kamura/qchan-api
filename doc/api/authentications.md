## GET /auth/callback
Finds or creates user from params[:state], then redirects by javascript.

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
X-Request-Id: 38eaf4f4-106d-4dcd-9a91-36b76fe5bab6
X-Runtime: 0.067778
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

<!DOCTYPE html><html><head><title>Qchan</title><link href="/stylesheets/application.css" media="all" rel="stylesheet" /><script src="/javascripts/application.js"></script></head><body><form accept-charset="UTF-8" action="http://example.com/callback" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div><input id="email" name="email" type="hidden" value="test@example.com" /><input id="name" name="name" type="hidden" value="test" /><input id="token" name="token" type="hidden" value="test_access_token" /><input id="uid" name="uid" type="hidden" value="1" /></form><script type="text/javascript">document.forms[0].submit()</script></body></html>
```

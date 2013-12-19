## GET /jobs
Returns all jobs in the database.

### Example
```
GET /jobs HTTP/1.1
Accept: */*
Authorization: Bearer: 6527e701fcdf3da1d47db94f479e6aba10e656061608a4c77b548b1e0d98d381
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 211
Content-Type: application/json; charset=utf-8
ETag: "482f0a683b5e88b307c79316ddeb1871"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 5c84efc4-d8e2-4900-92f6-85a3e28a05b0
X-Runtime: 0.017569
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

[
  {
    "id": 27,
    "user_id": 1,
    "name": "name1",
    "command": "command1",
    "builds_count": 0,
    "successes_count": 0,
    "failures_count": 0,
    "schedule": null,
    "created_at": "2013-12-19T16:54:03.000Z",
    "updated_at": "2013-12-19T16:54:03.000Z"
  }
]
```

## GET /jobs/:id
Returns the job specified by the id.

### Example
```
GET /jobs/28 HTTP/1.1
Accept: */*
Authorization: Bearer: 014323bc7ffb0a1bb5b64c6527ba1cce12941faff2bc38e28afe626edcf8099b
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 209
Content-Type: application/json; charset=utf-8
ETag: "090dc12442970fd7c064ad32b8ce852b"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 1ec1b781-436c-4ef9-91be-a95cca9209ad
X-Runtime: 0.007188
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

{
  "id": 28,
  "user_id": 2,
  "name": "name2",
  "command": "command2",
  "builds_count": 0,
  "successes_count": 0,
  "failures_count": 0,
  "schedule": null,
  "created_at": "2013-12-19T16:54:03.000Z",
  "updated_at": "2013-12-19T16:54:03.000Z"
}
```

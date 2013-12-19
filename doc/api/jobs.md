## GET /jobs
Returns all jobs in the database.

### Example
```
GET /jobs HTTP/1.1
Accept: */*
Authorization: Bearer: 25af4f089a827da7f9475448582c80decc2b3ea2946b5bec97fb12f17d54c826
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 211
Content-Type: application/json; charset=utf-8
ETag: "78934d07a4292fb0f2ec57fc0356263f"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 251bca1f-6b52-4796-b531-4566865fee5b
X-Runtime: 0.012866
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

[
  {
    "id": 91,
    "user_id": 1,
    "name": "name1",
    "command": "command1",
    "builds_count": 0,
    "successes_count": 0,
    "failures_count": 0,
    "schedule": null,
    "created_at": "2013-12-19T17:03:51.000Z",
    "updated_at": "2013-12-19T17:03:51.000Z"
  }
]
```

## GET /jobs/:id
Returns the job specified by :id.

### Example
```
GET /jobs/92 HTTP/1.1
Accept: */*
Authorization: Bearer: 14dc4b54dafdaacb6e2ee48d77c1e5a3f2627f1bac622e77f7ba6df10797a6c6
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 209
Content-Type: application/json; charset=utf-8
ETag: "c31541ba2538e888356b9ad429448766"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 39f1f753-844c-489c-93ca-62b4c073cba7
X-Runtime: 0.007962
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

{
  "id": 92,
  "user_id": 2,
  "name": "name2",
  "command": "command2",
  "builds_count": 0,
  "successes_count": 0,
  "failures_count": 0,
  "schedule": null,
  "created_at": "2013-12-19T17:03:51.000Z",
  "updated_at": "2013-12-19T17:03:51.000Z"
}
```

## DELETE /jobs/:id
Deletes the job & associated records specified by :id.

### Example
```
DELETE /jobs/94 HTTP/1.1
Accept: */*
Authorization: Bearer: 20c3852a228801e9c08a1a6c36afc40454a45762a7a82b460e1a8e720dc99a64
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

```
HTTP/1.1 204
Cache-Control: no-cache
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 6cd14af7-7411-465d-be64-9280f9940be3
X-Runtime: 0.051137
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block
```

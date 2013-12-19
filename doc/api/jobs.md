## GET /jobs
Returns all jobs in the database.

### Example
```
GET /jobs HTTP/1.1
Accept: */*
Authorization: Bearer: 2122a52d22817b87f2eb3a5fae086aa636d3dccd50782934c0eddb1bf96eb9a0
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 211
Content-Type: application/json; charset=utf-8
ETag: "ce5c59e43fc90dc544579135abd26b95"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: e8a31aef-258b-476e-adfe-9f124ca1e1d9
X-Runtime: 0.016992
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

[
  {
    "id": 83,
    "user_id": 1,
    "name": "name1",
    "command": "command1",
    "builds_count": 0,
    "successes_count": 0,
    "failures_count": 0,
    "schedule": null,
    "created_at": "2013-12-19T17:31:53.000Z",
    "updated_at": "2013-12-19T17:31:53.000Z"
  }
]
```

## GET /jobs/:id
Returns the job specified by :id.

### Example
```
GET /jobs/84 HTTP/1.1
Accept: */*
Authorization: Bearer: b29ddf6c809222b4340763e55c7e47f34521572bf1fc3aa61cbbc49e2be5e919
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 209
Content-Type: application/json; charset=utf-8
ETag: "1bef3c21d72904fbb9440454fc06d54e"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 05c22fae-2d3d-4799-b7e5-9854eba90780
X-Runtime: 0.007054
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

{
  "id": 84,
  "user_id": 2,
  "name": "name2",
  "command": "command2",
  "builds_count": 0,
  "successes_count": 0,
  "failures_count": 0,
  "schedule": null,
  "created_at": "2013-12-19T17:31:53.000Z",
  "updated_at": "2013-12-19T17:31:53.000Z"
}
```

## PUT /jobs/:id
Merges given attributes into the job.

### Example
```
PUT /jobs/85 HTTP/1.1
Accept: */*
Authorization: Bearer: 5f797952165729021cb0dee339269087bc45623d4a0d264b8dd5172ac04268cc
Content-Length: 12
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

name=updated
```

```
HTTP/1.1 204
Cache-Control: no-cache
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: b15016b9-ee8e-4bd4-bd31-c58dece0ba7c
X-Runtime: 0.011155
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block
```

## DELETE /jobs/:id
Deletes the job & associated records specified by :id.

### Example
```
DELETE /jobs/87 HTTP/1.1
Accept: */*
Authorization: Bearer: b2ac5d667480ce237b16f8c8c3822f773cb493fcc17aea197a45d66743631198
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

```
HTTP/1.1 204
Cache-Control: no-cache
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 64640a49-ca34-463a-89a7-72e3a6849e94
X-Runtime: 0.054549
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block
```

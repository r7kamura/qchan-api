## GET /jobs
Returns all jobs in the database.

### Example
```
GET /jobs HTTP/1.1
Accept: */*
Authorization: Bearer: 9d783d3e79130daa31350d6ea582c623ff2e6f2131b157a3c12086de09356f15
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 212
Content-Type: application/json; charset=utf-8
ETag: "b5f98f113f7e8a0af05767cc7c9ffb56"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 358a360f-4dcc-4c73-97a8-4cd2c3abe293
X-Runtime: 0.014572
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

[
  {
    "id": 206,
    "user_id": 1,
    "name": "name1",
    "command": "command1",
    "builds_count": 0,
    "successes_count": 0,
    "failures_count": 0,
    "schedule": null,
    "created_at": "2013-12-19T17:56:56.000Z",
    "updated_at": "2013-12-19T17:56:56.000Z"
  }
]
```

## GET /jobs/:id
Returns the job specified by :id.

### Example
```
GET /jobs/207 HTTP/1.1
Accept: */*
Authorization: Bearer: fd33c8d3f8dbbb5624f061a81808ba1eeb22d29c1f23770d259f9cc549b268ea
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 210
Content-Type: application/json; charset=utf-8
ETag: "4951e89b15447e38c8d5c52594eed089"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 82954a8a-f29c-47e4-ac0e-d21fbaad8d8b
X-Runtime: 0.007078
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

{
  "id": 207,
  "user_id": 2,
  "name": "name2",
  "command": "command2",
  "builds_count": 0,
  "successes_count": 0,
  "failures_count": 0,
  "schedule": null,
  "created_at": "2013-12-19T17:56:56.000Z",
  "updated_at": "2013-12-19T17:56:56.000Z"
}
```

## POST /jobs
Creates a new job and returns it.

### Parameters
* `command` string (required)
* `name` string (required)
* `schedule` string

### Example
```
POST /jobs HTTP/1.1
Accept: */*
Authorization: Bearer: 0c276fab2a99e5efd472a84fae00f6ef13de9e47e9294a19a9d322413ebcab83
Content-Length: 20
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

name=name&command=ls
```

```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 203
Content-Type: application/json; charset=utf-8
ETag: "2858082000df69784698067a769da3e0"
Location: http://www.example.com/jobs/208
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 30283f67-296f-4a56-9a6e-632b35c18d88
X-Runtime: 0.010166
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

{
  "id": 208,
  "user_id": 1,
  "name": "name",
  "command": "ls",
  "builds_count": 0,
  "successes_count": 0,
  "failures_count": 0,
  "schedule": null,
  "created_at": "2013-12-19T17:56:56.631Z",
  "updated_at": "2013-12-19T17:56:56.631Z"
}
```

## PUT /jobs/:id
Merges given attributes into the job.

### Parameters
* `command` string
* `name` string
* `schedule` string

### Example
```
PUT /jobs/210 HTTP/1.1
Accept: */*
Authorization: Bearer: 4cf7b2aa6c232cfdcd0b604cf20036533fe9c2aa893f91303d392e914a4a651f
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
X-Request-Id: 7de90a91-4562-4518-88b8-eb320aad692d
X-Runtime: 0.010202
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block
```

## DELETE /jobs/:id
Deletes the job & associated records specified by :id.

### Example
```
DELETE /jobs/211 HTTP/1.1
Accept: */*
Authorization: Bearer: e8777a219a3281bbf802567f19049208de7fa01e2fd91d457a011fda74305398
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

```
HTTP/1.1 204
Cache-Control: no-cache
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 4ddca9b6-a66a-4799-9266-3f48471f132b
X-Runtime: 0.055471
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block
```

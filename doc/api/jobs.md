## GET /jobs
Returns all jobs in the database.

### Example
```
GET /jobs HTTP/1.1
Accept: */*
Authorization: Bearer: 49c681ad9ff8ec7db641f640371e847cf526248add4836703d0842a43877cb6e
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 212
Content-Type: application/json; charset=utf-8
ETag: "a58675875c40b13c9b756f39eabdb24c"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 3db09256-3c91-4375-a158-ac8066c6efe9
X-Runtime: 0.010303
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

[
  {
    "id": 358,
    "user_id": 2,
    "name": "name2",
    "command": "command2",
    "builds_count": 0,
    "successes_count": 0,
    "failures_count": 0,
    "schedule": null,
    "created_at": "2013-12-20T13:05:18.000Z",
    "updated_at": "2013-12-20T13:05:18.000Z"
  }
]
```

## GET /jobs/:id
Returns the job specified by :id.

### Example
```
GET /jobs/359 HTTP/1.1
Accept: */*
Authorization: Bearer: 297f8032e46dda9c57684f81aea36950f5a5a35cc68b14c12ede36a90b62bae2
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 210
Content-Type: application/json; charset=utf-8
ETag: "eeb1a8a5c1bd1d3c62345eaf709f0e83"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 2cde7d51-7eb7-41c0-80d7-a34a43e666e9
X-Runtime: 0.009173
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

{
  "id": 359,
  "user_id": 3,
  "name": "name3",
  "command": "command3",
  "builds_count": 0,
  "successes_count": 0,
  "failures_count": 0,
  "schedule": null,
  "created_at": "2013-12-20T13:05:18.000Z",
  "updated_at": "2013-12-20T13:05:18.000Z"
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
Authorization: Bearer: 069cfa3147d047a5f8b80a4cd151571d7b830e01bd9c0057d8121338e197eef1
Content-Length: 30
Content-Type: application/json
Host: www.example.com

{
  "name": "name",
  "command": "ls"
}
```

```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 203
Content-Type: application/json; charset=utf-8
ETag: "0616987aeb48b94b7928a5d6c2103d5b"
Location: http://www.example.com/jobs/360
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 2efd2957-ec1c-4856-929a-9655af95a92f
X-Runtime: 0.010978
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

{
  "id": 360,
  "user_id": 1,
  "name": "name",
  "command": "ls",
  "builds_count": 0,
  "successes_count": 0,
  "failures_count": 0,
  "schedule": null,
  "created_at": "2013-12-20T13:05:18.727Z",
  "updated_at": "2013-12-20T13:05:18.727Z"
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
PUT /jobs/362 HTTP/1.1
Accept: */*
Authorization: Bearer: 6b140082c8bde4366aaa290a4efacbf642d8c42d65feceda0c3a497af983d53a
Content-Length: 18
Content-Type: application/json
Host: www.example.com

{
  "name": "updated"
}
```

```
HTTP/1.1 204
Cache-Control: no-cache
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: f1c781ed-1771-4afb-8fba-a6312ad83a4b
X-Runtime: 0.045676
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block
```

## DELETE /jobs/:id
Deletes the job & associated records specified by :id.

### Example
```
DELETE /jobs/363 HTTP/1.1
Accept: */*
Authorization: Bearer: cdcf9a42ae8706509c07791551bf18871799a9065a2e8eeb4dba272240e13031
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 204
Cache-Control: no-cache
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: e9866c43-12d1-48a5-8691-94f917a0717a
X-Runtime: 0.040867
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block
```

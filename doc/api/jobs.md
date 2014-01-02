## GET /jobs
Returns all jobs in the database.

### Example
```
GET /jobs HTTP/1.1
Accept: */*
Authorization: Bearer ee788b241fbb8519d3f53b877e4c1c3947cd965ef162032431de20467ff4e88e
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 194
Content-Type: application/json; charset=utf-8
ETag: "ef7ea05b5bf549a3f63cab1c254fef9c"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: cc15f3af-9f9a-47dc-8eee-912c811c8fab
X-Runtime: 0.010044
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

[
  {
    "id": 33,
    "user_id": 8,
    "name": "name8",
    "command": "command8",
    "successes_count": 0,
    "failures_count": 0,
    "schedule": null,
    "created_at": "2014-01-02T08:56:19.000Z",
    "updated_at": "2014-01-02T08:56:19.000Z"
  }
]
```

## GET /jobs/:id
Returns the job specified by :id.

### Example
```
GET /jobs/34 HTTP/1.1
Accept: */*
Authorization: Bearer 2274af7f5004c56c6e74b63adeb34958ab6bd741054d72d7c45e91500b1ff423
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 192
Content-Type: application/json; charset=utf-8
ETag: "194510c38589755bb662c058e39e2308"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 092c167b-6938-455d-8c94-749156253fbe
X-Runtime: 0.009274
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

{
  "id": 34,
  "user_id": 9,
  "name": "name9",
  "command": "command9",
  "successes_count": 0,
  "failures_count": 0,
  "schedule": null,
  "created_at": "2014-01-02T08:56:19.000Z",
  "updated_at": "2014-01-02T08:56:19.000Z"
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
Authorization: Bearer fd0e2e60e0a90cbe867f74934517c4f5ec7dfa76b4fd7b8e2006b16d03e18bbd
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
Content-Length: 185
Content-Type: application/json; charset=utf-8
ETag: "7e579b9a478796d070161f48279da8bd"
Location: http://www.example.com/jobs/35
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: a0bea96b-3b07-4bc5-84a3-9464c4630912
X-Runtime: 0.008924
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

{
  "id": 35,
  "user_id": 1,
  "name": "name",
  "command": "ls",
  "successes_count": 0,
  "failures_count": 0,
  "schedule": null,
  "created_at": "2014-01-02T08:56:19.900Z",
  "updated_at": "2014-01-02T08:56:19.900Z"
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
PUT /jobs/37 HTTP/1.1
Accept: */*
Authorization: Bearer eda2a8946cf48ee6c1b2b8a36d08f2f52fec44c0d4a9af3ce78b8056ed9bfaf2
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
X-Request-Id: ece6294f-4401-49f4-9af2-c5f5a8fd9622
X-Runtime: 0.008700
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block
```

## DELETE /jobs/:id
Deletes the job & associated records specified by :id.

### Example
```
DELETE /jobs/38 HTTP/1.1
Accept: */*
Authorization: Bearer 6f0c5e8d491206c35522ae044b233a97844e2bbfd5e812bddcf1b29a9f9cf965
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 204
Cache-Control: no-cache
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: e2e2446d-316a-479e-b906-e78621e8cee6
X-Runtime: 0.057102
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block
```

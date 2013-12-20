## GET /jobs
Returns all jobs in the database.

### Example
```
GET /jobs HTTP/1.1
Accept: */*
Authorization: Bearer: 8765ef62ec5680d5cf2aedcbd308deefa1635c50205c2cd556e6fd37580b5baa
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 211
Content-Type: application/json; charset=utf-8
ETag: "32869fa45d0006082bf76c6d924cc2ef"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 1ffa8298-f760-48fd-9b89-b7db2968837b
X-Runtime: 0.047007
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

[
  {
    "id": 57,
    "user_id": 5,
    "name": "name5",
    "command": "command5",
    "builds_count": 0,
    "successes_count": 0,
    "failures_count": 0,
    "schedule": null,
    "created_at": "2013-12-20T14:14:52.000Z",
    "updated_at": "2013-12-20T14:14:52.000Z"
  }
]
```

## GET /jobs/:id
Returns the job specified by :id.

### Example
```
GET /jobs/58 HTTP/1.1
Accept: */*
Authorization: Bearer: d5b938b12c9718c3f765b6481c54cf118210d435136e161a988688e4973dc13e
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 209
Content-Type: application/json; charset=utf-8
ETag: "9673d62d81b2856eba2447c2850196ed"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: bfb256d3-c15a-4bdc-8e4b-4923852e0f35
X-Runtime: 0.006022
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

{
  "id": 58,
  "user_id": 6,
  "name": "name6",
  "command": "command6",
  "builds_count": 0,
  "successes_count": 0,
  "failures_count": 0,
  "schedule": null,
  "created_at": "2013-12-20T14:14:52.000Z",
  "updated_at": "2013-12-20T14:14:52.000Z"
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
Authorization: Bearer: f74ce0676f473d12f059363b1d194ee52891d7be5bab1a4c108b85718e2c7e86
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
Content-Length: 202
Content-Type: application/json; charset=utf-8
ETag: "9ad9d56a2185f8fb9080acb7e1a013d3"
Location: http://www.example.com/jobs/59
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 3092e34f-49db-4df5-ba1c-cd458eb124d2
X-Runtime: 0.009512
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

{
  "id": 59,
  "user_id": 1,
  "name": "name",
  "command": "ls",
  "builds_count": 0,
  "successes_count": 0,
  "failures_count": 0,
  "schedule": null,
  "created_at": "2013-12-20T14:14:52.146Z",
  "updated_at": "2013-12-20T14:14:52.146Z"
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
PUT /jobs/61 HTTP/1.1
Accept: */*
Authorization: Bearer: c00c63257364561360e55f345af02142422c487e4b54f563bb0f0f3901017b65
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
X-Request-Id: 00870c11-3a28-409b-ba17-ff3673b4132c
X-Runtime: 0.009878
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block
```

## DELETE /jobs/:id
Deletes the job & associated records specified by :id.

### Example
```
DELETE /jobs/62 HTTP/1.1
Accept: */*
Authorization: Bearer: 5ba98d416fb404c875a894c002e196b75ad37865d4a81cae0646b312fd90541b
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 204
Cache-Control: no-cache
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 3072bb01-8e25-4ded-a7a1-f5085c7be125
X-Runtime: 0.045235
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block
```

## GET /jobs/:job_id/builds
Returns all builds of the job specified by :job_id.

### Example
```
GET /jobs/58/builds HTTP/1.1
Accept: */*
Authorization: Bearer a8dc32b4d7221861f81eca6df5d4eebf9d35182e34026fb5b0e6b63f1a479064
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 181
Content-Type: application/json; charset=utf-8
ETag: "67ed0698b5bea4735acb0f5db4f7c09f"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 9205ffe8-081d-4d08-af8e-3237bc32bd4d
X-Runtime: 0.016000
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

[
  {
    "id": 43,
    "job_id": 58,
    "exit_status": 0,
    "number": 1,
    "output": null,
    "started_at": null,
    "finished_at": null,
    "created_at": "2014-01-02T09:37:11.000Z",
    "updated_at": "2014-01-02T09:37:11.000Z"
  }
]
```

## GET /builds/:id
Returns the build.

### Example
```
GET /builds/44 HTTP/1.1
Accept: */*
Authorization: Bearer 3d2b022dac9b05df3ba175deaac43844fa6920f885cd1b5bbd6684b0c605fce6
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 179
Content-Type: application/json; charset=utf-8
ETag: "7b4b7547f0d86fc02cdd90a6489ed656"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: cceaa329-ec23-46eb-8498-208c294c7fba
X-Runtime: 0.009264
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

{
  "id": 44,
  "job_id": 59,
  "exit_status": 0,
  "number": 1,
  "output": null,
  "started_at": null,
  "finished_at": null,
  "created_at": "2014-01-02T09:37:11.000Z",
  "updated_at": "2014-01-02T09:37:11.000Z"
}
```

## POST /jobs/:job_id/builds
Creates a new builds and enqueues it with its id & related job's command.

### Example
```
POST /jobs/60/builds HTTP/1.1
Accept: */*
Authorization: Bearer 92543b82dfce8b7f2bf39dfffceb5e25c51fe05ac42193aa60115bda32495e35
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 182
Content-Type: application/json; charset=utf-8
ETag: "b1322a57f6fdd44fea478edea1019ac0"
Location: http://www.example.com/builds/46
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 1edfadbd-38db-4411-bd28-6ca049788010
X-Runtime: 0.023576
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

{
  "id": 46,
  "job_id": 60,
  "exit_status": null,
  "number": 2,
  "output": null,
  "started_at": null,
  "finished_at": null,
  "created_at": "2014-01-02T09:37:11.336Z",
  "updated_at": "2014-01-02T09:37:11.336Z"
}
```

## PUT /builds/:id
Updates the build.

### Parameters
* `exit_status` integer - exit status code of the build
* `output` string - stdout & stderr printed from the build
* `started_at` string - time when the build started in ISO8601 format
* `finished_at` string - time when the build finished in ISO8601 format

### Example
```
PUT /builds/48 HTTP/1.1
Accept: */*
Authorization: Bearer 6940aec785668c965a2dcdd0cf139f73bee7cb78fbc6379671b376cef7fe5dc9
Content-Length: 123
Content-Type: application/json
Host: www.example.com

{
  "exit_status": 0,
  "output": "Hello world",
  "started_at": "2000-01-01T00:00:00+09:00",
  "finished_at": "2000-01-02T00:00:00+09:00"
}
```

```
HTTP/1.1 204
Cache-Control: no-cache
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 00bd7966-be2c-4a84-b3ca-9a1a32ce9b77
X-Runtime: 0.012052
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block
```

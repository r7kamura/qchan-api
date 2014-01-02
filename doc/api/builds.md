## GET /jobs/:job_id/builds
Returns all builds of the job specified by :job_id.

### Example
```
GET /jobs/210/builds HTTP/1.1
Accept: */*
Authorization: Bearer: 4d10d61b42f6650bad49cbb37b61ecc12563220385c56769b94c06fe64bd6868
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 183
Content-Type: application/json; charset=utf-8
ETag: "7c182d520cb715446233eae05b909105"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: e11448c9-e332-456c-a8b8-05d0ba74358d
X-Runtime: 0.014246
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

[
  {
    "id": 114,
    "job_id": 210,
    "exit_status": 0,
    "number": 1,
    "output": null,
    "started_at": null,
    "finished_at": null,
    "created_at": "2014-01-02T08:40:24.000Z",
    "updated_at": "2014-01-02T08:40:24.000Z"
  }
]
```

## GET /builds/:id
Returns the build.

### Example
```
GET /builds/115 HTTP/1.1
Accept: */*
Authorization: Bearer: f52d600383d7c757a690d19607539ded73fa12bfb539ac727f1cc89d8c14a3af
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 181
Content-Type: application/json; charset=utf-8
ETag: "9d787d5d4a11b65799b486413e963b2a"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 07f9cbd2-31a1-4506-a806-2bc7fdfc18e4
X-Runtime: 0.006703
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

{
  "id": 115,
  "job_id": 211,
  "exit_status": 0,
  "number": 1,
  "output": null,
  "started_at": null,
  "finished_at": null,
  "created_at": "2014-01-02T08:40:24.000Z",
  "updated_at": "2014-01-02T08:40:24.000Z"
}
```

## POST /jobs/:job_id/builds
Creates a new builds and enqueues it.

### Example
```
POST /jobs/212/builds HTTP/1.1
Accept: */*
Authorization: Bearer: 3d7149815da899db2e2020c919805e1da6af21560b2d1af38c0591443851f9a8
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 184
Content-Type: application/json; charset=utf-8
ETag: "82950cb0a9e80c7071a528484285c545"
Location: http://www.example.com/builds/117
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 975ee6c0-961f-4751-b2be-1ab3ea8bdd9c
X-Runtime: 0.016742
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

{
  "id": 117,
  "job_id": 212,
  "exit_status": null,
  "number": 2,
  "output": null,
  "started_at": null,
  "finished_at": null,
  "created_at": "2014-01-02T08:40:24.952Z",
  "updated_at": "2014-01-02T08:40:24.952Z"
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
PUT /builds/119 HTTP/1.1
Accept: */*
Authorization: Bearer: 5c7900c91014fb3da90421a8559fe2bda5797741fc37faead54469ca0796f270
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
X-Request-Id: 78e62429-d8c2-4d87-802b-6470ddc9a21c
X-Runtime: 0.012653
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block
```

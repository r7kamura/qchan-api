## GET /jobs/:job_id/builds
Returns all builds of the job specified by :job_id.

### Example
```
GET /jobs/27/builds HTTP/1.1
Accept: */*
Authorization: Bearer f52dd20a37a80e06e701bd049da033895415670b39d2024b009e408f7a148588
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 181
Content-Type: application/json; charset=utf-8
ETag: "9947969eb3acc3a84481748b1467e6a7"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 7306ca29-c554-404b-9e5c-16cea341a131
X-Runtime: 0.017596
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

[
  {
    "id": 15,
    "job_id": 27,
    "exit_status": 0,
    "number": 1,
    "output": null,
    "started_at": null,
    "finished_at": null,
    "created_at": "2014-01-02T08:56:19.000Z",
    "updated_at": "2014-01-02T08:56:19.000Z"
  }
]
```

## GET /builds/:id
Returns the build.

### Example
```
GET /builds/16 HTTP/1.1
Accept: */*
Authorization: Bearer c48230aad940cb6d6d83aa7d910927167b0f0d9901556792ebdd0e1658de9a9d
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 179
Content-Type: application/json; charset=utf-8
ETag: "3502e918195a5a0a82a1e09508020b27"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: ab8bd5d2-4f47-44e4-a1fc-90c6d9a48933
X-Runtime: 0.009505
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

{
  "id": 16,
  "job_id": 28,
  "exit_status": 0,
  "number": 1,
  "output": null,
  "started_at": null,
  "finished_at": null,
  "created_at": "2014-01-02T08:56:19.000Z",
  "updated_at": "2014-01-02T08:56:19.000Z"
}
```

## POST /jobs/:job_id/builds
Creates a new builds and enqueues it.

### Example
```
POST /jobs/29/builds HTTP/1.1
Accept: */*
Authorization: Bearer c321e1b0c8e8b83338f9db05eb03e75fd076c966242f7fbbd5719ec4577bd3c9
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 182
Content-Type: application/json; charset=utf-8
ETag: "85df479dcd16a1ae8742d863a07aab25"
Location: http://www.example.com/builds/18
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 5083ed72-0766-47f1-915a-cb0d4670a0ad
X-Runtime: 0.018360
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

{
  "id": 18,
  "job_id": 29,
  "exit_status": null,
  "number": 2,
  "output": null,
  "started_at": null,
  "finished_at": null,
  "created_at": "2014-01-02T08:56:19.674Z",
  "updated_at": "2014-01-02T08:56:19.674Z"
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
PUT /builds/20 HTTP/1.1
Accept: */*
Authorization: Bearer 6b0a524b7f582b4f13893b801c46b87acfd62a0953078334157591ab5f71b2c2
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
X-Request-Id: d1a8b740-f466-4bb9-b15c-8113692e9f74
X-Runtime: 0.012528
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block
```

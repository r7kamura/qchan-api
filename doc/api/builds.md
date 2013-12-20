## GET /jobs/:job_id/builds
Returns all builds of the job specified by :job_id.

### Example
```
GET /jobs/453/builds HTTP/1.1
Accept: */*
Authorization: Bearer: ee8c6ddd742d23d0b55fe7276c3f179a1eeb5300ff8a83c555bbe942f7fbfb53
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 182
Content-Type: application/json; charset=utf-8
ETag: "dfffcfa92cb03e33eb27022044bfdef8"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 2292d22f-6071-4891-bdf6-42fc5fe4f04c
X-Runtime: 0.018251
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

[
  {
    "id": 51,
    "job_id": 453,
    "exit_status": 0,
    "number": 1,
    "output": null,
    "started_at": null,
    "finished_at": null,
    "created_at": "2013-12-20T13:29:43.000Z",
    "updated_at": "2013-12-20T13:29:43.000Z"
  }
]
```

## GET /builds/:id
Returns the build.

### Example
```
GET /builds/52 HTTP/1.1
Accept: */*
Authorization: Bearer: 8f8a1e4668a1d8d1880aefd4fb0f79317e5f01e25bd6fec29ea7bb34830d8f41
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 180
Content-Type: application/json; charset=utf-8
ETag: "75db40da68c62636cf9b921299115624"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 3afe23ec-71ba-4a61-94a1-e9fc2980927d
X-Runtime: 0.010305
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

{
  "id": 52,
  "job_id": 454,
  "exit_status": 0,
  "number": 1,
  "output": null,
  "started_at": null,
  "finished_at": null,
  "created_at": "2013-12-20T13:29:43.000Z",
  "updated_at": "2013-12-20T13:29:43.000Z"
}
```

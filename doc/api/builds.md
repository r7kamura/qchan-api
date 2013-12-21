## GET /jobs/:job_id/builds
Returns all builds of the job specified by :job_id.

### Example
```
GET /jobs/290/builds HTTP/1.1
Accept: */*
Authorization: Bearer: ddcc2986f9c768c869ab4a090f6bb25988c49b31f59984db3315ed998a09fda2
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 183
Content-Type: application/json; charset=utf-8
ETag: "b22ad493c6f1e329b09721bd9cbbc51a"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 340d411b-5978-45c5-8e5f-de01f98274bb
X-Runtime: 0.011029
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

[
  {
    "id": 169,
    "job_id": 290,
    "exit_status": 0,
    "number": 1,
    "output": null,
    "started_at": null,
    "finished_at": null,
    "created_at": "2013-12-21T04:06:27.000Z",
    "updated_at": "2013-12-21T04:06:27.000Z"
  }
]
```

## GET /builds/:id
Returns the build.

### Example
```
GET /builds/170 HTTP/1.1
Accept: */*
Authorization: Bearer: 72eb429d5b8fb327ca8b03968fc7ce866fb33a67d94bc82dd9763a92901e1706
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 181
Content-Type: application/json; charset=utf-8
ETag: "9cd832d861e5b0ca9032f4294d1adeae"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: fbf85623-231e-4948-b49e-fda3a8b0b518
X-Runtime: 0.006969
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

{
  "id": 170,
  "job_id": 291,
  "exit_status": 0,
  "number": 1,
  "output": null,
  "started_at": null,
  "finished_at": null,
  "created_at": "2013-12-21T04:06:27.000Z",
  "updated_at": "2013-12-21T04:06:27.000Z"
}
```

## POST /jobs/:job_id/builds
Creates a new builds and enqueues it.

### Example
```
POST /jobs/292/builds HTTP/1.1
Accept: */*
Authorization: Bearer: 26716346a65f798f3e27636fd02104c49cf36cf1883f7ac8b714987e9057ccd1
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 184
Content-Type: application/json; charset=utf-8
ETag: "9aeb999e157b80451dffb2fe6eef0fe6"
Location: http://www.example.com/builds/172
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 491f569e-31b6-40fe-b6d2-b2487fe470d8
X-Runtime: 0.013880
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

{
  "id": 172,
  "job_id": 292,
  "exit_status": null,
  "number": 2,
  "output": null,
  "started_at": null,
  "finished_at": null,
  "created_at": "2013-12-21T04:06:27.879Z",
  "updated_at": "2013-12-21T04:06:27.879Z"
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
PUT /builds/174 HTTP/1.1
Accept: */*
Authorization: Bearer: 55acc69c3b0ff21675527297079c9bd24f35f62a28de175dcb721da2a07c3e2b
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
X-Request-Id: cd06c7aa-0808-4afc-b51e-0bc1db3b7f6f
X-Runtime: 0.011449
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block
```

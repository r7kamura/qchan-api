## GET /jobs/:job_id/builds
Returns all builds of the job specified by :job_id.

### Example
```
GET /jobs/67/builds HTTP/1.1
Accept: */*
Authorization: Bearer: f3b013feef236b7f612b3850dc1f365575a5b6fb4cd969305b6ea55af3de6a58
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 181
Content-Type: application/json; charset=utf-8
ETag: "bd148af25901237b825a4b4166963114"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 1f974116-1367-4872-8ba4-219b78b06930
X-Runtime: 0.014532
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

[
  {
    "id": 37,
    "job_id": 67,
    "exit_status": 0,
    "number": 1,
    "output": null,
    "started_at": null,
    "finished_at": null,
    "created_at": "2014-01-02T08:33:55.000Z",
    "updated_at": "2014-01-02T08:33:55.000Z"
  }
]
```

## GET /builds/:id
Returns the build.

### Example
```
GET /builds/38 HTTP/1.1
Accept: */*
Authorization: Bearer: 5cfdc6de7c5777c7ff52951e7a3230e27cbe0adf614525a5fa976bec9add184f
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 179
Content-Type: application/json; charset=utf-8
ETag: "18fbca80b29fe860b1b0f4d7dd98d797"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: fe7853fc-402f-42cf-8807-42317ea744f0
X-Runtime: 0.007758
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

{
  "id": 38,
  "job_id": 68,
  "exit_status": 0,
  "number": 1,
  "output": null,
  "started_at": null,
  "finished_at": null,
  "created_at": "2014-01-02T08:33:55.000Z",
  "updated_at": "2014-01-02T08:33:55.000Z"
}
```

## POST /jobs/:job_id/builds
Creates a new builds and enqueues it.

### Example
```
POST /jobs/69/builds HTTP/1.1
Accept: */*
Authorization: Bearer: a8d5afcbfeed55032810cb8d1a10e09103823756472cdea2e9bc89be09b82490
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 182
Content-Type: application/json; charset=utf-8
ETag: "54f752d6da6f02bc70dfb987f35cd084"
Location: http://www.example.com/builds/40
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: ce06794b-3149-4431-91d9-09545178b8e1
X-Runtime: 0.019979
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

{
  "id": 40,
  "job_id": 69,
  "exit_status": null,
  "number": 2,
  "output": null,
  "started_at": null,
  "finished_at": null,
  "created_at": "2014-01-02T08:33:55.860Z",
  "updated_at": "2014-01-02T08:33:55.860Z"
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
PUT /builds/42 HTTP/1.1
Accept: */*
Authorization: Bearer: a91dac8619eae20d87ad6ebb7d725dffc72114b2817d0b552c80fb50f51f7c12
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
X-Request-Id: 696adfb3-afc7-4b61-98cd-f09babfd56fb
X-Runtime: 0.015212
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block
```

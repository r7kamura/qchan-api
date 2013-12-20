## GET /jobs/:job_id/builds
Returns all builds of the job specified by :job_id.

### Example
```
GET /jobs/263/builds HTTP/1.1
Accept: */*
Authorization: Bearer: 85882d9505849aa920ad088a95dec87ddf3c9ee6f77f517eec164fae00fc3def
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 183
Content-Type: application/json; charset=utf-8
ETag: "67f9aca80fa3ac4d082fa4f17ad68f92"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 1632e3e1-e7f6-4769-85fa-0cf43ccd9b95
X-Runtime: 0.012663
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

[
  {
    "id": 142,
    "job_id": 263,
    "exit_status": 0,
    "number": 1,
    "output": null,
    "started_at": null,
    "finished_at": null,
    "created_at": "2013-12-20T14:49:06.000Z",
    "updated_at": "2013-12-20T14:49:06.000Z"
  }
]
```

## GET /builds/:id
Returns the build.

### Example
```
GET /builds/143 HTTP/1.1
Accept: */*
Authorization: Bearer: 46325702cc2ad6afe3380a00ec96ae9ac437268418e7e54b14adb41265fb8edb
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 181
Content-Type: application/json; charset=utf-8
ETag: "fabc7cf19196c6e39d80d8f318b81d94"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 48e7df2c-7e9d-40fd-9eed-a6926d8f41c6
X-Runtime: 0.006688
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

{
  "id": 143,
  "job_id": 264,
  "exit_status": 0,
  "number": 1,
  "output": null,
  "started_at": null,
  "finished_at": null,
  "created_at": "2013-12-20T14:49:06.000Z",
  "updated_at": "2013-12-20T14:49:06.000Z"
}
```

## POST /jobs/:job_id/builds
Creates and enqueues a new build.

### Example
```
POST /jobs/265/builds HTTP/1.1
Accept: */*
Authorization: Bearer: 24113978e20bde15be67becd27cda8228a6397cb6e234a19f4599a7c96957caf
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 184
Content-Type: application/json; charset=utf-8
ETag: "f1e6b936e9e2269ebd9fe0e35005b243"
Location: http://www.example.com/builds/145
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: c4248721-ca0e-42c6-9326-e363ddab5c3b
X-Runtime: 0.019143
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

{
  "id": 145,
  "job_id": 265,
  "exit_status": null,
  "number": 2,
  "output": null,
  "started_at": null,
  "finished_at": null,
  "created_at": "2013-12-20T14:49:06.390Z",
  "updated_at": "2013-12-20T14:49:06.390Z"
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
PUT /builds/147 HTTP/1.1
Accept: */*
Authorization: Bearer: 69cc55b035c78f76f52a4fda6684f87d754421922b0151e01bde930fbf098adc
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
X-Request-Id: 2bbaa85d-4c77-4c22-b8f4-2f7d6671f490
X-Runtime: 0.018084
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block
```

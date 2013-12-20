## GET /jobs/:job_id/builds
Returns all builds of the job specified by :job_id.

### Example
```
GET /jobs/357/builds HTTP/1.1
Accept: */*
Authorization: Bearer: d6448e3701a16725c17142343f3785811fe282e265b08a62a9c0540edc8b21a3
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 181
Content-Type: application/json; charset=utf-8
ETag: "229e4ddfe0eb774b75bd2340d4b527a5"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 39bc921e-c1d1-4475-b304-b902f356cd3d
X-Runtime: 0.018374
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

[
  {
    "id": 3,
    "job_id": 357,
    "exit_status": 0,
    "number": 1,
    "output": null,
    "started_at": null,
    "finished_at": null,
    "created_at": "2013-12-20T13:05:18.000Z",
    "updated_at": "2013-12-20T13:05:18.000Z"
  }
]
```

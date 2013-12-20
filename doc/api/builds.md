## GET /jobs/:job_id/builds
Returns all builds of the job specified by :job_id.

### Example
```
GET /jobs/54/builds HTTP/1.1
Accept: */*
Authorization: Bearer: e348b4b4c92bc9ca5646b388354fcb2c25b4e4624227d9053de53c6a9c737c2f
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 181
Content-Type: application/json; charset=utf-8
ETag: "5648b30e526a984a8afc6381a03e4782"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 21d3e2f0-67bb-42b5-a208-71fa3dd51c6b
X-Runtime: 0.015599
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

[
  {
    "id": 28,
    "job_id": 54,
    "exit_status": 0,
    "number": 1,
    "output": null,
    "started_at": null,
    "finished_at": null,
    "created_at": "2013-12-20T14:14:51.000Z",
    "updated_at": "2013-12-20T14:14:51.000Z"
  }
]
```

## GET /builds/:id
Returns the build.

### Example
```
GET /builds/29 HTTP/1.1
Accept: */*
Authorization: Bearer: ef6b712cc54d11489c94f984fdd352ae35d21fe5d3662c478eefe8a06c3c1e1f
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 179
Content-Type: application/json; charset=utf-8
ETag: "ddcaf68cf77dd0bdd15b3550007051b3"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 9380da4d-57e2-48a1-b53e-1a2be89520a6
X-Runtime: 0.006636
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

{
  "id": 29,
  "job_id": 55,
  "exit_status": 0,
  "number": 1,
  "output": null,
  "started_at": null,
  "finished_at": null,
  "created_at": "2013-12-20T14:14:51.000Z",
  "updated_at": "2013-12-20T14:14:51.000Z"
}
```

## POST /jobs/:job_id/builds
Creates and enqueues a new build.

### Example
```
POST /jobs/56/builds HTTP/1.1
Accept: */*
Authorization: Bearer: a3e1f8cb603281463ced31cb998a6c9db50419a5079a361095a123bf1a9f5929
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 182
Content-Type: application/json; charset=utf-8
ETag: "e214140e43895cbde910dff52ff5ac44"
Location: http://www.example.com/builds/31
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 1f2253fd-ea10-48d1-818a-3203b3610a44
X-Runtime: 0.014899
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

{
  "id": 31,
  "job_id": 56,
  "exit_status": null,
  "number": 2,
  "output": null,
  "started_at": null,
  "finished_at": null,
  "created_at": "2013-12-20T14:14:52.021Z",
  "updated_at": "2013-12-20T14:14:52.021Z"
}
```

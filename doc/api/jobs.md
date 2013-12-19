## GET /jobs
Returns all jobs in the database.

### Example
```
GET /jobs HTTP/1.1
Accept: */*
Authorization: Bearer: f224c37abae2f575e267008c12d9ceaac2a48a8dfce322a2c7aa1ed2ea8e81ca
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 212
Content-Type: application/json; charset=utf-8
ETag: "ba02421f471eade9824d92c1b119d9b3"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 6f928a6e-50f0-4c3b-a6b8-1993fd411983
X-Runtime: 0.014616
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

[
  {
    "id": 115,
    "user_id": 1,
    "name": "name1",
    "command": "command1",
    "builds_count": 0,
    "successes_count": 0,
    "failures_count": 0,
    "schedule": null,
    "created_at": "2013-12-19T17:36:56.000Z",
    "updated_at": "2013-12-19T17:36:56.000Z"
  }
]
```

## GET /jobs/:id
Returns the job specified by :id.

### Example
```
GET /jobs/116 HTTP/1.1
Accept: */*
Authorization: Bearer: 6b51ac82e35256e0504528d86f1f10110ded4f07629fc16b2e727dc648fb16a7
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 210
Content-Type: application/json; charset=utf-8
ETag: "4b751a3cb5aea2863b04dfee8a6d3936"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 372772f5-310c-4eba-a7df-f92d9a24e35c
X-Runtime: 0.008033
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

{
  "id": 116,
  "user_id": 2,
  "name": "name2",
  "command": "command2",
  "builds_count": 0,
  "successes_count": 0,
  "failures_count": 0,
  "schedule": null,
  "created_at": "2013-12-19T17:36:56.000Z",
  "updated_at": "2013-12-19T17:36:56.000Z"
}
```

## POST /jobs
Creates a new job and returns it.

### Example
```
POST /jobs HTTP/1.1
Accept: */*
Authorization: Bearer: c039f0b86ea0362efbfb40d9313a3cf77772f8f477af4ec08d1c366ab093746d
Content-Length: 20
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

name=name&command=ls
```

```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 203
Content-Type: application/json; charset=utf-8
ETag: "5e4d7f19773e4169b9189a44df30035f"
Location: http://www.example.com/jobs/117
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 568d320c-89c4-457d-96d8-8dd08e49e834
X-Runtime: 0.010240
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

{
  "id": 117,
  "user_id": 1,
  "name": "name",
  "command": "ls",
  "builds_count": 0,
  "successes_count": 0,
  "failures_count": 0,
  "schedule": null,
  "created_at": "2013-12-19T17:36:56.957Z",
  "updated_at": "2013-12-19T17:36:56.957Z"
}
```

## PUT /jobs/:id
Merges given attributes into the job.

### Example
```
PUT /jobs/118 HTTP/1.1
Accept: */*
Authorization: Bearer: c22d18e23d587a6988a0cceb3251e3bbf72aceae7dc5528d2ef49176e8c22698
Content-Length: 12
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

name=updated
```

```
HTTP/1.1 204
Cache-Control: no-cache
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 6e729dbb-f929-4fc6-abec-462de44a4199
X-Runtime: 0.009444
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block
```

## DELETE /jobs/:id
Deletes the job & associated records specified by :id.

### Example
```
DELETE /jobs/120 HTTP/1.1
Accept: */*
Authorization: Bearer: 92c9a829d6255d261dfa1b298bb89d19f0a9faed0162f9bb9d32d31e438804f6
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

```
HTTP/1.1 204
Cache-Control: no-cache
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 5c728498-d664-4f23-a630-8ef8cd99c88e
X-Runtime: 0.054385
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block
```

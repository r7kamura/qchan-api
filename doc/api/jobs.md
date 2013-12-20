## GET /jobs
Returns all jobs in the database.

### Example
```
GET /jobs HTTP/1.1
Accept: */*
Authorization: Bearer: 628a2e2a6be886dde510ce18acfe4290b07eb8859e3e88662279d94fbf00bd71
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 212
Content-Type: application/json; charset=utf-8
ETag: "7274937a30ce991ac70f9555f431fd76"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 6d5b1082-b70b-47d2-8526-fbc11b78f26f
X-Runtime: 0.015963
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

[
  {
    "id": 455,
    "user_id": 4,
    "name": "name4",
    "command": "command4",
    "builds_count": 0,
    "successes_count": 0,
    "failures_count": 0,
    "schedule": null,
    "created_at": "2013-12-20T13:29:43.000Z",
    "updated_at": "2013-12-20T13:29:43.000Z"
  }
]
```

## GET /jobs/:id
Returns the job specified by :id.

### Example
```
GET /jobs/456 HTTP/1.1
Accept: */*
Authorization: Bearer: 92375681807c7b7f609080763ee585d44de69be7991764e3276dcf12e927e030
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 210
Content-Type: application/json; charset=utf-8
ETag: "dfcbc7596d19c6693a3f310ed608424e"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 2faa0ff9-86bc-4cf3-aa19-f728766b902f
X-Runtime: 0.009949
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

{
  "id": 456,
  "user_id": 5,
  "name": "name5",
  "command": "command5",
  "builds_count": 0,
  "successes_count": 0,
  "failures_count": 0,
  "schedule": null,
  "created_at": "2013-12-20T13:29:43.000Z",
  "updated_at": "2013-12-20T13:29:43.000Z"
}
```

## POST /jobs
Creates a new job and returns it.

### Parameters
* `command` string (required)
* `name` string (required)
* `schedule` string

### Example
```
POST /jobs HTTP/1.1
Accept: */*
Authorization: Bearer: dab919a4033bf94a267bc032bfb9409be3539c7387b6b8406246ff35470441fe
Content-Length: 30
Content-Type: application/json
Host: www.example.com

{
  "name": "name",
  "command": "ls"
}
```

```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 203
Content-Type: application/json; charset=utf-8
ETag: "c88050854e4ecd2b8f82fbfdddd6535b"
Location: http://www.example.com/jobs/457
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: bdd58086-bb85-4727-a95e-85948e34daf4
X-Runtime: 0.012833
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

{
  "id": 457,
  "user_id": 1,
  "name": "name",
  "command": "ls",
  "builds_count": 0,
  "successes_count": 0,
  "failures_count": 0,
  "schedule": null,
  "created_at": "2013-12-20T13:29:43.771Z",
  "updated_at": "2013-12-20T13:29:43.771Z"
}
```

## PUT /jobs/:id
Merges given attributes into the job.

### Parameters
* `command` string
* `name` string
* `schedule` string

### Example
```
PUT /jobs/459 HTTP/1.1
Accept: */*
Authorization: Bearer: db14650cc38f906a636fa42b0c299e803a5e5acfc58f92daf775ed25230a049f
Content-Length: 18
Content-Type: application/json
Host: www.example.com

{
  "name": "updated"
}
```

```
HTTP/1.1 204
Cache-Control: no-cache
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 259d0549-6fbf-4110-b5e5-298357eee5ed
X-Runtime: 0.008890
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block
```

## DELETE /jobs/:id
Deletes the job & associated records specified by :id.

### Example
```
DELETE /jobs/460 HTTP/1.1
Accept: */*
Authorization: Bearer: 5457856c11d49b9a8c6fb3a2baf2c3d1bc887d38a2fe87998c7b1350bb2bcbd3
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 204
Cache-Control: no-cache
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 06827164-04bf-416a-99ec-e7be0876a0f6
X-Runtime: 0.042600
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block
```

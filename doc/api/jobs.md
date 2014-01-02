## GET /jobs
Returns all jobs in the database.

### Example
```
GET /jobs HTTP/1.1
Accept: */*
Authorization: Bearer: 6dedac80d1bf8e70e89d964aed3823fbf492db00b100212cb1f41b03843561c7
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 195
Content-Type: application/json; charset=utf-8
ETag: "5ec46142aec1aefb520a63c3d72a8205"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: aee795fc-06b6-4a77-b5dc-afa086218ffe
X-Runtime: 0.007259
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

[
  {
    "id": 216,
    "user_id": 8,
    "name": "name8",
    "command": "command8",
    "successes_count": 0,
    "failures_count": 0,
    "schedule": null,
    "created_at": "2014-01-02T08:40:25.000Z",
    "updated_at": "2014-01-02T08:40:25.000Z"
  }
]
```

## GET /jobs/:id
Returns the job specified by :id.

### Example
```
GET /jobs/217 HTTP/1.1
Accept: */*
Authorization: Bearer: 0754883ca7954171c2df9559a52a9618e89ad1b18f24ecbc954e291506db8b62
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 193
Content-Type: application/json; charset=utf-8
ETag: "43e6f1a05ff9aef749acedeec18f3f0f"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: aa015a42-cd29-4c4b-99dc-12030731e654
X-Runtime: 0.005814
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

{
  "id": 217,
  "user_id": 9,
  "name": "name9",
  "command": "command9",
  "successes_count": 0,
  "failures_count": 0,
  "schedule": null,
  "created_at": "2014-01-02T08:40:25.000Z",
  "updated_at": "2014-01-02T08:40:25.000Z"
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
Authorization: Bearer: 6cce95ade34073ac6a540d9bb1419a09fff1cd6e222a3fd67f8cd238577d5d62
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
Content-Length: 186
Content-Type: application/json; charset=utf-8
ETag: "f4cc08575574fc971182de0d2bcba85a"
Location: http://www.example.com/jobs/218
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 3d316325-7e20-4725-a555-6a6c0abee22f
X-Runtime: 0.008752
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

{
  "id": 218,
  "user_id": 1,
  "name": "name",
  "command": "ls",
  "successes_count": 0,
  "failures_count": 0,
  "schedule": null,
  "created_at": "2014-01-02T08:40:25.158Z",
  "updated_at": "2014-01-02T08:40:25.158Z"
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
PUT /jobs/220 HTTP/1.1
Accept: */*
Authorization: Bearer: 3744e2e6467c309acbdd6f26859779e1baaf9e5d912e21ef3f603841dd2b2c5e
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
X-Request-Id: 6337e749-ad88-4c86-9324-0d63f7e7f2d0
X-Runtime: 0.009358
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block
```

## DELETE /jobs/:id
Deletes the job & associated records specified by :id.

### Example
```
DELETE /jobs/221 HTTP/1.1
Accept: */*
Authorization: Bearer: 19ad14aee02fd9c9e93cf6b6c7b774053e9c3394ba076cb2b971cb270d7243be
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 204
Cache-Control: no-cache
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: d3649003-cfa6-4225-b007-9bcd2cf82dc7
X-Runtime: 0.042291
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block
```

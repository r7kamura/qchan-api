## GET /jobs
Returns all jobs in the database.

### Example
```
GET /jobs HTTP/1.1
Accept: */*
Authorization: Bearer: 237dba80447f13ba981fe743a4763665257e5215ad683d97a2d1e2ad252f8337
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 194
Content-Type: application/json; charset=utf-8
ETag: "81b982ae229a67f8378ef7a786eb2a4c"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 1376db5e-ed3d-48d2-add9-0780f132c97e
X-Runtime: 0.044880
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

[
  {
    "id": 73,
    "user_id": 8,
    "name": "name8",
    "command": "command8",
    "successes_count": 0,
    "failures_count": 0,
    "schedule": null,
    "created_at": "2014-01-02T08:33:55.000Z",
    "updated_at": "2014-01-02T08:33:55.000Z"
  }
]
```

## GET /jobs/:id
Returns the job specified by :id.

### Example
```
GET /jobs/74 HTTP/1.1
Accept: */*
Authorization: Bearer: dfba3d7085e7a7fa210fd20cfa2bf394f2d89f4fd7377e76e7035f0354bb494f
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 192
Content-Type: application/json; charset=utf-8
ETag: "99243b38a271ec924812acd1990873c8"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 0a0bbd5d-e7eb-40da-bf8d-b886f22926d9
X-Runtime: 0.006402
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

{
  "id": 74,
  "user_id": 9,
  "name": "name9",
  "command": "command9",
  "successes_count": 0,
  "failures_count": 0,
  "schedule": null,
  "created_at": "2014-01-02T08:33:56.000Z",
  "updated_at": "2014-01-02T08:33:56.000Z"
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
Authorization: Bearer: 48e6357943ab1306dd534ceb8f48c364251195fe817ce3503a103e891583b420
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
Content-Length: 185
Content-Type: application/json; charset=utf-8
ETag: "c391437a6e1afa2ad58511a15b77b76d"
Location: http://www.example.com/jobs/75
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 8f300e0b-a840-4385-84ed-85ad5128137c
X-Runtime: 0.009831
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

{
  "id": 75,
  "user_id": 1,
  "name": "name",
  "command": "ls",
  "successes_count": 0,
  "failures_count": 0,
  "schedule": null,
  "created_at": "2014-01-02T08:33:56.084Z",
  "updated_at": "2014-01-02T08:33:56.084Z"
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
PUT /jobs/77 HTTP/1.1
Accept: */*
Authorization: Bearer: 6c444fbdde4a51a0c8611ff4cfa115913d215b0822b28b334c731ba89d876799
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
X-Request-Id: 71ef4735-9f6e-44ae-8693-66e156718d36
X-Runtime: 0.010213
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block
```

## DELETE /jobs/:id
Deletes the job & associated records specified by :id.

### Example
```
DELETE /jobs/78 HTTP/1.1
Accept: */*
Authorization: Bearer: 79367b14bb5e45309d36e72be62b903021e5b5b9ce6bfd0dd3abf325f0c106a8
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 204
Cache-Control: no-cache
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 59d468f5-ce74-42cf-8556-d193fb5aebd6
X-Runtime: 0.042475
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block
```

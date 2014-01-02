## GET /jobs
Returns all jobs in the database.

### Example
```
GET /jobs HTTP/1.1
Accept: */*
Authorization: Bearer 2cc4e1b026a8b3dc73eeb7b861834086374efcd6338ef8135b78139f9ba9d3ab
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 194
Content-Type: application/json; charset=utf-8
ETag: "d7041dba464d86d910d1a58a96ab94cc"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 510389b8-b052-43c8-8a9f-7ea096df2507
X-Runtime: 0.007582
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

[
  {
    "id": 64,
    "user_id": 8,
    "name": "name8",
    "command": "command8",
    "successes_count": 0,
    "failures_count": 0,
    "schedule": null,
    "created_at": "2014-01-02T09:37:11.000Z",
    "updated_at": "2014-01-02T09:37:11.000Z"
  }
]
```

## GET /jobs/:id
Returns the job specified by :id.

### Example
```
GET /jobs/65 HTTP/1.1
Accept: */*
Authorization: Bearer 14089468e1b2041b0ad83eec72220c342043893e14c7ef29615ff34e30e4d8a8
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 192
Content-Type: application/json; charset=utf-8
ETag: "54bb02afd1c2cfa27df5adc6ee376890"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 6b6f91f8-6ebe-4b6f-b6cd-af5452a92653
X-Runtime: 0.006415
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

{
  "id": 65,
  "user_id": 9,
  "name": "name9",
  "command": "command9",
  "successes_count": 0,
  "failures_count": 0,
  "schedule": null,
  "created_at": "2014-01-02T09:37:11.000Z",
  "updated_at": "2014-01-02T09:37:11.000Z"
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
Authorization: Bearer 77be7c34aac1f0488f053414980bc3f041c0b41d5ea3c83d7151313eb146a3d9
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
ETag: "02e45c1098977a0a45b6cf71da2e5136"
Location: http://www.example.com/jobs/66
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 4939b6ac-908c-45bb-9e7b-8d39b823b16e
X-Runtime: 0.008332
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

{
  "id": 66,
  "user_id": 1,
  "name": "name",
  "command": "ls",
  "successes_count": 0,
  "failures_count": 0,
  "schedule": null,
  "created_at": "2014-01-02T09:37:11.503Z",
  "updated_at": "2014-01-02T09:37:11.503Z"
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
PUT /jobs/68 HTTP/1.1
Accept: */*
Authorization: Bearer 14913e9f87ea47eefde1ed17d17bfc6cf459ffb2c5f695044ee2d9aacb34313d
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
X-Request-Id: 13fca12b-27ef-46e0-af40-e5debf27e851
X-Runtime: 0.010020
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block
```

## DELETE /jobs/:id
Deletes the job & associated records specified by :id.

### Example
```
DELETE /jobs/69 HTTP/1.1
Accept: */*
Authorization: Bearer 7ae90026a749b043dfae9719ca3b69ffd6a7fb91db6b402fdfb4f09776206bba
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 204
Cache-Control: no-cache
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: ba15d6b3-26cd-4adc-a8ea-8445eb3ae7b4
X-Runtime: 0.046277
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block
```

## GET /jobs
Returns all jobs in the database.

### Example
```
GET /jobs HTTP/1.1
Accept: */*
Authorization: Bearer: cb42879e507e4097bd7223a211fbb5375c578170a3849d3c55f02c8e2afe692a
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 212
Content-Type: application/json; charset=utf-8
ETag: "f5f237a1c95c2aa98068897c499c6220"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: b80a9778-d98e-452f-b2db-af20ecde02b9
X-Runtime: 0.015251
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

[
  {
    "id": 268,
    "user_id": 7,
    "name": "name7",
    "command": "command7",
    "builds_count": 0,
    "successes_count": 0,
    "failures_count": 0,
    "schedule": null,
    "created_at": "2013-12-20T14:49:06.000Z",
    "updated_at": "2013-12-20T14:49:06.000Z"
  }
]
```

## GET /jobs/:id
Returns the job specified by :id.

### Example
```
GET /jobs/269 HTTP/1.1
Accept: */*
Authorization: Bearer: 31ef1606b447722a6ad1960bc9e9f7eda680b2295231301595c24c2f55f8f4d5
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 210
Content-Type: application/json; charset=utf-8
ETag: "6c47004bc4d3896e27c9c727b9045af1"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 02002a6b-763f-4c43-88ee-6bfa379e4e2d
X-Runtime: 0.008722
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

{
  "id": 269,
  "user_id": 8,
  "name": "name8",
  "command": "command8",
  "builds_count": 0,
  "successes_count": 0,
  "failures_count": 0,
  "schedule": null,
  "created_at": "2013-12-20T14:49:06.000Z",
  "updated_at": "2013-12-20T14:49:06.000Z"
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
Authorization: Bearer: add5aadcca9464cb7200fd126a8ddbd5977f9500b00f5e15d0b3ee2af2d3e056
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
ETag: "303cc68c55fbe8369e7e310d7ec1a095"
Location: http://www.example.com/jobs/270
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 43a5213a-ed54-4612-a519-5ac964b50aa4
X-Runtime: 0.012803
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

{
  "id": 270,
  "user_id": 1,
  "name": "name",
  "command": "ls",
  "builds_count": 0,
  "successes_count": 0,
  "failures_count": 0,
  "schedule": null,
  "created_at": "2013-12-20T14:49:06.648Z",
  "updated_at": "2013-12-20T14:49:06.648Z"
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
PUT /jobs/272 HTTP/1.1
Accept: */*
Authorization: Bearer: 175fee7c78eb816e0f379ac8c818466ca517572c208c1e943ee4c3abbee445d3
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
X-Request-Id: cfe2a2ba-fdf1-42d2-8536-318ddcb4fac9
X-Runtime: 0.011969
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block
```

## DELETE /jobs/:id
Deletes the job & associated records specified by :id.

### Example
```
DELETE /jobs/273 HTTP/1.1
Accept: */*
Authorization: Bearer: 95f5afc32a2ac79fb983b98537d876ce2397aff81861b7a76747788127512456
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 204
Cache-Control: no-cache
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 076b68f4-7c3a-4f40-bedb-4d6834b45d26
X-Runtime: 0.055982
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block
```

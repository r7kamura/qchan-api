## GET /jobs
Returns all jobs in the database.

### Example
```
GET /jobs HTTP/1.1
Accept: */*
Authorization: Bearer: 3891d51bd129da91da80f2736c74f29acbc78ff9171ab1c0783a3606fba7ba8f
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 212
Content-Type: application/json; charset=utf-8
ETag: "a368ef8f1bfe6ce12843c68e4c4affb2"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 4c051769-18eb-4ab6-8781-5d552f22e6a1
X-Runtime: 0.013038
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

[
  {
    "id": 253,
    "user_id": 1,
    "name": "name1",
    "command": "command1",
    "builds_count": 0,
    "successes_count": 0,
    "failures_count": 0,
    "schedule": null,
    "created_at": "2013-12-19T18:03:56.000Z",
    "updated_at": "2013-12-19T18:03:56.000Z"
  }
]
```

## GET /jobs/:id
Returns the job specified by :id.

### Example
```
GET /jobs/254 HTTP/1.1
Accept: */*
Authorization: Bearer: a632876558f34a6b4b194fa85945242e8defa0e5676013e5448b5575f19e3d5d
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 210
Content-Type: application/json; charset=utf-8
ETag: "839b12484460b7f415fc86417b8114b2"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: f72ccaae-0530-4cb4-9a7f-a0200c6e1631
X-Runtime: 0.009120
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

{
  "id": 254,
  "user_id": 2,
  "name": "name2",
  "command": "command2",
  "builds_count": 0,
  "successes_count": 0,
  "failures_count": 0,
  "schedule": null,
  "created_at": "2013-12-19T18:03:56.000Z",
  "updated_at": "2013-12-19T18:03:56.000Z"
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
Authorization: Bearer: fee0f906489f57f628dc7eea778a8a8b66b144f79bd9cebbd602e0c81160f04b
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
ETag: "d99bae7b1b546ecaeb978eb319d38aef"
Location: http://www.example.com/jobs/255
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 13e83992-9a8b-4ed0-86d1-5f86a46c9b97
X-Runtime: 0.012912
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

{
  "id": 255,
  "user_id": 1,
  "name": "name",
  "command": "ls",
  "builds_count": 0,
  "successes_count": 0,
  "failures_count": 0,
  "schedule": null,
  "created_at": "2013-12-19T18:03:56.399Z",
  "updated_at": "2013-12-19T18:03:56.399Z"
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
PUT /jobs/257 HTTP/1.1
Accept: */*
Authorization: Bearer: 6f73d1278e29787069f7d16d630ea728ffdafc388ae3f47d9d9cb4bc8619e031
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
X-Request-Id: d502172b-8605-4678-bad7-e92f91e6341d
X-Runtime: 0.008857
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block
```

## DELETE /jobs/:id
Deletes the job & associated records specified by :id.

### Example
```
DELETE /jobs/258 HTTP/1.1
Accept: */*
Authorization: Bearer: 4f68649fb7f20fa15fdf87497d8cdea5d59c02fc63314e38749c8365d0a464ba
Content-Length: 0
Content-Type: application/json
Host: www.example.com
```

```
HTTP/1.1 204
Cache-Control: no-cache
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 3fd5df19-f885-4dfc-9828-58367673d287
X-Runtime: 0.094749
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block
```

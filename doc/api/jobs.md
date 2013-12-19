## GET /jobs
Returns all jobs in the database.

### Example
```
GET /jobs HTTP/1.1
Accept: */*
Authorization: Bearer: ad40e6efe72620d3ce89bc3f91cbb61255caaa305a9d444ff2958052ef6e477e
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 211
Content-Type: application/json; charset=utf-8
ETag: "0488cdf69ed3e22e2ea657e10ba00950"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 35999aa3-d821-4434-afca-bfd47b65c4f3
X-Runtime: 0.016230
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

[
  {
    "id": 23,
    "user_id": 1,
    "name": "name1",
    "command": "command1",
    "builds_count": 0,
    "successes_count": 0,
    "failures_count": 0,
    "schedule": null,
    "created_at": "2013-12-19T16:52:19.000Z",
    "updated_at": "2013-12-19T16:52:19.000Z"
  }
]
```

## GET /jobs/:id
Returns the job specified by the id.

### Example
```
GET /jobs/:id HTTP/1.1
Accept: */*
Authorization: Bearer: b8b626da28a42b0287989dd28fb6429ec5d0aa9b68fc133ba1b7ab849bad76ee
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 209
Content-Type: application/json; charset=utf-8
ETag: "6d67661d924d8dac6ea8009304ff4282"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 03dccfc0-a43f-4b14-98b6-f005902ec9bd
X-Runtime: 0.006992
X-UA-Compatible: chrome=1
X-XSS-Protection: 1; mode=block

{
  "id": 24,
  "user_id": 2,
  "name": "name2",
  "command": "command2",
  "builds_count": 0,
  "successes_count": 0,
  "failures_count": 0,
  "schedule": null,
  "created_at": "2013-12-19T16:52:19.000Z",
  "updated_at": "2013-12-19T16:52:19.000Z"
}
```

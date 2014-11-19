## README

### ユーザの登録

#### API

```
POST /user
```

#### request sample

```
http://<rails host:port>/user
```

#### response sample

```
{"id":1,"name":"山田","birthday":null,"organization":"org1","image_url":"http://image.url","created_at":"2014-11-19T05:45:55.000Z","updated_at":"2014-11-19T06:06:02.000Z"}
```

### ユーザの更新

#### API

```
PATCH /user/:id
```

#### request sample

```
http://<rails host:port>/user/1
```

#### response sample

```
true
```

### ユーザ一覧の取得

#### API

```
GET /users/:id
```

#### request sample

```
http://<rails host:port>/users/1
```

#### response sample

```
[{"id":1,"name":"山田","birthday":null,"organization":"org1","image_url":"http://image.url","created_at":"2014-11-19T05:45:55.000Z","updated_at":"2014-11-19T06:06:02.000Z"},{"id":3,"name":"フッティ","birthday":null,"organization":"org1","image_url":"http://image.url","created_at":"2014-11-19T06:08:47.000Z","updated_at":"2014-11-19T06:08:47.000Z"}]
```


### ありがとうの登録

#### API

```
POST /thnx/:id/:to_id
```

#### request sample

```
http://<rails host:port>/thnx/1/2
```

#### response sample

```
success
```

### ありがとうの取得

#### API

```
GET /thnx/:id
```

#### request sample

```
http://<rails host:port>/thnx/2
```

#### response sample

```
[{"id":15,"from":3,"to":2,"sent_at":"2014-11-19T07:03:26.000Z","received_at":"2014-11-19T07:03:30.789Z","created_at":"2014-11-19T07:03:26.000Z","updated_at":"2014-11-19T07:03:30.793Z","from_name":"フッティ"},{"id":16,"from":1,"to":2,"sent_at":"2014-11-19T07:03:27.000Z","received_at":"2014-11-19T07:03:30.789Z","created_at":"2014-11-19T07:03:27.000Z","updated_at":"2014-11-19T07:03:30.804Z","from_name":"山田"}]
```

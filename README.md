## README

### ユーザの登録

#### API

```
POST /user
```

#### request sample

```
http://<rails host:port>/users
```

#### response sample

```
{"id":1,"name":"guemon","birthday":null,"organization":"org1","created_at":"2014-11-19T05:45:55.000Z","updated_at":"2014-11-19T06:06:02.000Z"}
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
[{"id":1,"name":"guemon","birthday":null,"organization":"org1","created_at":"2014-11-19T05:45:55.000Z","updated_at":"2014-11-19T06:06:02.000Z"},{"id":3,"name":"フッティ","birthday":null,"organization":"org1","created_at":"2014-11-19T06:08:47.000Z","updated_at":"2014-11-19T06:08:47.000Z"}]
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
[{"id":8,"from":1,"from_name":"guemon","to":2,"sent_at":"2014-11-19T06:36:46.000Z","received_at":"2014-11-19T06:36:54.343Z","created_at":"2014-11-19T06:36:46.000Z","updated_at":"2014-11-19T06:36:54.345Z"},{"id":9,"from":3,"from_name":"フッティ","to":2,"sent_at":"2014-11-19T06:36:50.000Z","received_at":"2014-11-19T06:36:54.343Z","created_at":"2014-11-19T06:36:50.000Z","updated_at":"2014-11-19T06:36:54.351Z"}]
```

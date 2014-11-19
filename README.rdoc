== README

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
[{"id":5,"from":3,"to":2,"sent_at":"2014-11-19T04:53:43.000Z","received_at":"2014-11-19T04:54:07.198Z","created_at":"2014-11-19T04:53:43.000Z","updated_at":"2014-11-19T04:54:07.202Z"},{"id":6,"from":1,"to":2,"sent_at":"2014-11-19T04:53:48.000Z","received_at":"2014-11-19T04:54:07.198Z","created_at":"2014-11-19T04:53:48.000Z","updated_at":"2014-11-19T04:54:07.211Z"},{"id":7,"from":4,"to":2,"sent_at":"2014-11-19T04:53:53.000Z","received_at":"2014-11-19T04:54:07.198Z","created_at":"2014-11-19T04:53:53.000Z","updated_at":"2014-11-19T04:54:07.217Z"}]
```

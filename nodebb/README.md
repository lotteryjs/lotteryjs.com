安装之前，先配置 MongoDB 设置

用具有 createUser 的账户登录到 MongoDB，执行如下命令：

```sh
use nodebb
db.createUser( { user: "nodebb", pwd: "123456", roles: [ { role: "readWrite", db: "nodebb" }, { role: "clusterMonitor", db: "admin" } ] } )
```
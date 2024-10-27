查看 BINLOG 状态

```
SHOW BINARY LOG STATUS;
```


```
kubectl run mysqlslap-job --image=bitnami/mysql:8.4.3-debian-12-r0 --restart=Never --rm -it -- /bin/bash

mysqlslap \
--no-defaults \ # 忽略配置文件中的配置
-hdova-mysql-primary \  # 服务器地址
-uroot -pP@ssw0rd \ # 用户名密码
--auto-generate-sql \ # 自动生成 SQL 语句
--concurrency=100 \ # 并发数
--number-of-queries=1000 \ # 执行次数
--no-drop # 不删除数据库
```
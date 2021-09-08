[sqls](https://github.com/lighttiger2505/sqls) is a sql LSP write in golang.  
So to enable sql autocompletion, you need to install golang SDK first, and install the LSP repo:  
```
go install https://github.com/lighttiger2505/sqls@latest
```
Then configration the database connection, here is the configuration sample:
```
# Set to true to use lowercase keywords instead of uppercase.
lowercaseKeywords: false
connections:
  - alias: dsn_mysql
    driver: mysql
    dataSourceName: root:root@tcp(127.0.0.1:13306)/world
  - alias: individual_mysql
    driver: mysql
    proto: tcp
    user: root
    passwd: root
    host: 127.0.0.1
    port: 13306
    dbName: world
    params:
      autocommit: "true"
      tls: skip-verify
  - alias: mysql_via_ssh
    driver: mysql
    proto: tcp
    user: admin
    passwd: Q+ACgv12ABx/
    host: 192.168.121.163
    port: 3306
    dbName: world
    sshConfig:
      host: 192.168.121.168
      port: 22
      user: sshuser
      passPhrase: ssspass
      privateKey: /home/lighttiger2505/.ssh/id_rsa
```

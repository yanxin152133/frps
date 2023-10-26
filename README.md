# 1. frps
frp服务端

## 1.1. 简单介绍
[frp通过 SSH 访问内网机器](https://gofrp.org/docs/examples/ssh/)

## 1.2. 配置文件
### 1.2.1. frps.ini
```
[common]
bind_port = 7000
token = 9LgPn24TaC2NYZXY

[common]
dashboard_port = 7500
# dashboard's username and password are both optional
dashboard_user = admin
dashboard_pwd = admin
```

## 1.3. 运行
### 1.3.1. 自定义配置文件
```bash
docker run --name frps --restart=always -it -d -v /etc/frp/frps/frps.ini://etc/frp/frps/frps.ini --network host yancccccc/frps:latest
```

## 1.4. 日志
可根据日志来确定问题。

```bash
docker logs frps
```

## 1.5. dashboard
`http://x.x.x.x:7500`通过浏览器进行访问，账号密码：admin/admin


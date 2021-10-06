# 1. frps
frp服务端

## 1.1. 简单介绍
[frp通过 SSH 访问内网机器](https://gofrp.org/docs/examples/ssh/)

## 1.2. 配置文件
### 1.2.1. frps.ini
```
[common]
bind_port = 7000

[common]
dashboard_port = 7500
# dashboard's username and password are both optional
dashboard_user = admin
dashboard_pwd = admin
```

## 1.3. 运行
### 1.3.1. 自定义配置文件
```bash
docker run --name frps --restart=always -it -d -v ~/Github/frps/frps.ini:/usr/local/frp/frp_0.37.1_linux_amd64/frps.ini -p 7000:7000 -p 7500:7500 -p 5000-5100:5000-5100 yancccccc/frps:latest

~/Github/frpc/frps.ini:/usr/local/frp/frp_0.37.1_linux_amd64/frps.ini   本地的frps.ini：容器frps.ini所在的路径

-p 5000-5100:5000-5100 remote_port 在 frp 服务端监听的端口，访问此端口的流量将会被转发到本地服务对应的端口，可以在这个范围进行注册端口
```

### 1.3.2. 已有的配置
```bash
docker run --name frps --restart=always -it -d -p 7000:7000 -p 7500:7500 -p 5000-5100:5000-5100 yancccccc/frps:latest

```

## 1.4. 日志
可根据日志来确定问题。

```bash
docker logs frps
```

## 1.5. dashboard
`http://x.x.x.x:7500`通过浏览器进行访问，账号密码：admin/admin


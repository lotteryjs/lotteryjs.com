## LotteryJS

站点采用 [nodebb](https://nodebb.org/) 的 [v1.12.2](https://github.com/NodeBB/NodeBB/archive/v1.12.2.zip) 搭建。

### Traefik + Docker + Let's Encrypt(https) 搭建你自己的 NodeBB 站点

进入你自己的云主机(如：Ubuntu)

1.安装 Docker, [Get Docker CE for Ubuntu](https://docs.docker.com/install/linux/docker-ce/ubuntu/)

```sh
# 执行 Docker 安装之前执行
# 如果本机与服务器中断，可以稍后在服务器执行命令`screen -R website`重新连接安装窗口
screen -S website 
```

2.安装 Docker Compose, [Install Docker Compose](https://docs.docker.com/compose/install/)

3.使用 Traefik 做反向代理，并且它已经集成了 Let's Encrypt(非常轻松就能构建 https 站点)

  因为我这台机器要挂多个站，所以用它做了一下反向代理。
  * ![Traefik](https://github.com/containous/traefik/raw/master/docs/content/assets/img/traefik-architecture.png)
  * [Let's Encrypt & Docker](https://docs.traefik.io/user-guide/docker-and-lets-encrypt/)




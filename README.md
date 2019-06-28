## 这是一个完全开源的站点 

### 站点运行环境搭建

#### 服务器
  
  这里是一台阿里云ECS(Ubuntu 18.04)

#### Docker 安装

  ```sh
  screen -S website #如果网路出现中断，可以执行命令`screen -R website`重新连接安装窗口
  ```

  [Get Docker CE for Ubuntu](https://docs.docker.com/install/linux/docker-ce/ubuntu/)

  检验一下是否安装成功
  ```sh
  sudo docker run hello-world
  ```

#### Docker Compose 安装

  [Install Docker Compose](https://docs.docker.com/compose/install/)

#### Traefik 安装

  因为我这台机器要挂多个站，所以用它做一下反向代理。

  ![Traefik](https://github.com/containous/traefik/raw/master/docs/content/assets/img/traefik-architecture.png)

  [Let's Encrypt & Docker](https://docs.traefik.io/user-guide/docker-and-lets-encrypt/)

  taefik.toml 里面的域名修改为你自己的


#### 启动站点

  ```sh
  git clone https://github.com/lotteryjs/lotteryjs.com.git
  cd ssr
  # ssr/docker-compose.yml 里面的域名(Host:lotteryjs.com)修改为你自己的
  docker-compose up -d
  ```
# hello-dockerfile

- [CentOS 安装 Docker](https://docs.docker.com/engine/install/centos/)

```
# 支持 devicemapper 储存属性
sudo yum install -y yum-utils device-mapper-persistent-data lvm2

sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

sudo yum install -y docker-ce
sudo systemctl status docker.service
sudo systemctl start docker.service
sudo systemctl enable docker.service
systemctl list-unit-files | grep docker
```

- 创建容器

```
docker run \
--restart=always \
-itd \
--privileged=true \
--name hello-dockerfile_0.0.1 \
-p 1001:1001 \
-v /home/data/hello-dockerfile/:/home \
hello-dockerfile:0.0.1
```

- 进入容器

```
docker exec -it hello-dockerfile_0.0.1 bash
```

- 测试容器

```
curl 127.0.0.1:1001
```

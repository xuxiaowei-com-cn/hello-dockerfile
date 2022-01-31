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

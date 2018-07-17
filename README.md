# 此项目为展示ci/cd流程、以及配合configmap使用


## 打包
mvn clean package -Dmaven.test.skip=true

## 运行（可自定义配置文件路径）
java -jar target/demo-0.0.1.jar --spring.config.location=config/application.yml

## 修改数据库配置
- 部署数据库
```
docker run --name public-mysql -e MYSQL_ROOT_PASSWORD=my_passwd -p 3306:3306 --restart=always -d mysql:5.6
```
- 创建数据库
```
CREATE DATABASE test1 character set = utf8;
```

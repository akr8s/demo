FROM 192.168.180.106:5000/java:8
MAINTAINER ghchen <ghchen@alauda.io>>

# 添加代码jar包
ADD target/demo-0.0.1.jar app.jar
RUN bash -c 'touch /app.jar'

# 修改容器时区
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone

# 暴露访问端口
EXPOSE 8080

# 容器启动参数
ENTRYPOINT ["java","-jar","/app.jar","--server.port=8080","--spring.config.location=/app/config/demo/application.yml"]
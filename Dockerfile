# 使用制定python 运行时作为父镜像
FROM python:3.6.2

# 将工作目录设置为/app
WORKDIR /app

# 将当前目录内容复制到容器at /app
COPY . /app

# 安装requirements.txt中指定的任何需要的包
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# 是端口号80 使这个容器之外的世界可以使用
EXPOSE 80

# 定义环境变量
ENV NAME App

# 运行app.py 当这容器启动时
CMD ["python", "app.py"]

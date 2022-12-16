FROM python:3.10.8
# 更新下apt列表
RUN apt-get update
# 更新pip
RUN pip install --upgrade pip --index-url https://pypi.douban.com/simple
# 设置工作目录
WORKDIR /django_demo
# 把dockerfile所在的文件以及目录复制到工作目录中
COPY . /django_demo/
# pip安装依赖包
RUN pip install -r requirements.txt --index-url https://pypi.douban.com/simple
# 打开容器的8000端口
EXPOSE 8000
# 执行命令行,启动django服务
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
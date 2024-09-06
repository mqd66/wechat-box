# 使用官方 Python 镜像
FROM python:3.9-slim

# 设置工作目录
WORKDIR /home/mengqingda/program/test/chatgpt-on-wechat/chatgpt-on-wechat

# 复制依赖文件
COPY requirements.txt .

# 安装依赖
RUN pip install --no-cache-dir -i https://pypi.tuna.tsinghua.edu.cn/simple -r requirements.txt

# 复制应用代码
COPY . .

# 暴露端口（如果需要）
EXPOSE 5000

# 启动应用，直接运行 app.py
CMD ["python", "app.py"]

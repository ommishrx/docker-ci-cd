From ubuntu:latest
RUN apt update && \
apt install -y python3 python3-pip
WORKDIR /app
COPY requirements.txt .
RUN pip3 install --break-system-packages -r requirements.txt
COPY app.py .
EXPOSE 5000
CMD ["python3","app.py"]


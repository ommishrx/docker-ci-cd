sudo apt update
sudo apt upgrade -y
sudo apt install docker.io -y
sudo systemctl enable docker
sudo systemctl start docker
sudo usermod -aG docker $USER
sudo reboot
docker run hello-world
htop
df
N/W
ping upes.ac.in
sudo shutdown now
sudo apt update
sudo apt install spice-vdagent
sudo systemctl enable spice-vdagent
sudo systemctl start spice-vdagent
sudo reboot
ip a
docker network create -d macvlan   --subnet=192.168.64.0/24   --gateway=192.168.64.1   -o parent=enp0s1   macvlan_net
docker run -dit --name nginx_mac   --network macvlan_net   --ip 192.168.64.100 nginx
docker run -dit --name mysql_mac   --network macvlan_net   --ip 192.168.64.101   -e MYSQL_ROOT_PASSWORD=pass mysql
docker run -dit --name redis_mac   --network macvlan_net   --ip 192.168.64.102 redis
docker inspect nginx_mac | grep IPAddress
docker exec -it nginx_mac ping 192.168.64.101
docker run -it --rm --network macvlan_net --ip 192.168.64.150 ubuntu bash
docker ps
docker inspect nginx_mac | grep IPAddress
docker inspect mysql_mac | grep IPAddress
docker inspect redis_mac | grep IPAddress
curl http://192.168.64.100
docker exec -it redis_mac redis-cli
docker exec -it mysql_mac mysql -uroot -ppass
docker run -it --rm --network macvlan_net --ip 192.168.64.150 ubuntu bash
apt update
apt install curl -y
curl http://192.168.64.100
docker rm -f nginx_mac mysql_mac redis_mac
docker network rm macvlan_net
docker network create -d macvlan --subnet=192.168.20.0/24 --gateway=192.168.20.1 -o parent=enp0s1 macvlan_net2
docker run -dit --name web1 --network macvlan_net1 --ip 192.168.10.10 nginx
docker network create -d macvlan --subnet=192.168.10.0/24 --gateway=192.168.10.1 -o parent=enp0s1 macvlan_net1
docker network ls
docker run -dit --name web1 --network macvlan_net1 --ip 192.168.10.10 nginx
docker run -dit --name web1 --network macvlan_net1 --ip 192.168.10.10 nginx
docker rm -f web1
docker run -dit --name web1 --network macvlan_net1 --ip 192.168.10.10 nginx
docker run -dit --name web1 --network macvlan_net1 --ip 192.168.10.10 nginx
docker run -dit --name db1 --network macvlan_net1 --ip 192.168.10.11 mysql -e MYSQL_ROOT_PASSWORD=pass
docker run -dit --name cache2 --network macvlan_net2 --ip 192.168.20.11 redis
docker inspect web1 | grep IPAddress
docker inspect app2 | grep IPAddress
docker inspect web1 | grep IPAddress
docker inspect app2 | grep IPAddress
docker run -dit --name app2 --network macvlan_net2 --ip 192.168.20.10 nginx
docker ps
docker ps -a
docker rm -f db1
docker run -dit --name db1 --network macvlan_net1 --ip 192.168.10.11 -e MYSQL_ROOT_PASSWORD=pass mysql
docker ps
docker inspect web1 | grep IPAddress
docker inspect db1 | grep IPAddress
docker inspect app2 | grep IPAddress
docker inspect cache2 | grep IPAddress
docker run -it --rm --network macvlan_net1 --ip 192.168.10.50 ubuntu bash
docker exec -it db1 bash
ping -c 3 192.168.10.10
docker rm -f web1 db1 app2 cache2
docker network rm macvlan_net1 macvlan_net2
docker network create -d ipvlan --subnet=192.168.30.0/24 --gateway=192.168.30.1 -o parent=enp0s1 ipvlan_net
docker network ls
docker run -dit --name web_ipv --network ipvlan_net --ip 192.168.30.10 nginx
docker run -dit --name db_ipv --network ipvlan_net --ip 192.168.30.11 -e MYSQL_ROOT_PASSWORD=pass mysql
docker run -dit --name cache_ipv --network ipvlan_net --ip 192.168.30.12 redis
docker inspect web_ipv | grep IPAddress
docker inspect db_ipv | grep IPAddress
docker inspect cache_ipv | grep IPAddress
docker exec -it cache_ipv sh
docker run -it --rm --network ipvlan_net --ip 192.168.30.50 ubuntu bash
curl http://192.168.30.10
--network macvlan_net
docker network inspect ipvlan_net
ssh ommishra@192.168.64.2
sudo apt install docker-compose-plugin -y
docker compose version
sudo apt update
sudo apt install ca-certificates curl gnupg -y
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
$(. /etc/os-release && echo $VERSION_CODENAME) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install docker-compose-plugin -y
docker compose version
mkdir exp7
cd exp7
pwd
nano app.py
nano Dockerfile
mkdir html
nano html/index.html
nano docker-compose.yml
docker compose up -d
docker ps
http://localhost:8080
curl localhost:8080
docker exec -it exp7-web ping backend
docker exec -it exp7-web-1 ping backend
docker exec -it exp7-web-1 curl backend:5000
docker network ls
docker network inspect exp7_default
docker compose up -d --scale backend=5
docker ps
http://localhost:8080
ip a
hostname -I
docker network inspect exp7_default
docker compose down -v
docker ps
docker network ls
docker volume ls
docker compose up -d --scale backend=5
docker network inspect exp7_default
docker run -it --rm --network exp7_default alpine sh
docker network inspect exp7_default
docker compose up -d --scale backend=5
nano docker-compose.yml
docker compose down
docker compose up -d
docker compose up -d --scale backend=5
docker ps
docker network inspect exp7_default
docker exec -it exp7-web-1 ping backend
docker exec -it exp7-backend-1 bash
ping backend
docker exec -it exp7-backend-1 bash
sudo apt update
sudo apt install -y docker.io docker-compose
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker $USER
logout
docker --version
docker ps
mkdir containerized-webapp
cd containerized-webapp
mkdir backend
mkdir database
nano backend/app.js
nano backend/package.json
nano backend/Dockerfile
nano backend/.dockerignore
nano database/init.sql
nano database/Dockerfile
nano database/.dockerignore
ip a
docker network create -d macvlan --subnet=192.168.64.0/24 --gateway=192.168.64.1 -o parent=enp0s1 mynet
docker network ls
docker network inspect mynet
nano docker-compose.yml
docker compose build
docker compose up -d
docker ps
docker compose down
docker compose up -d --build
nano docker-compose.yml
docker compose down
docker compose up -d --build
docker ps
curl http://192.168.64.10:3000/health
sudo ip link add macvlan-shim link enp0s1 type macvlan mode bridge
sudo ip addr add 192.168.64.50/24 dev macvlan-shim
sudo ip link set macvlan-shim up
curl http://192.168.64.10:3000/health
curl -X POST http://192.168.64.10:3000/users -H "Content-Type: application/json" -d '{"name":"Omi"}'
curl http://192.168.64.10:3000/users
docker compose down
docker compose up -d
curl http://192.168.64.10:3000/users
docker network inspect mynet
docker inspect backend_api | grep IPAddress
docker inspect postgres_db | grep IPAddress
git init
git add .
git commit -m "Final Docker project"
mkdir screenshots
exit
cd ~/containerized-webapp/screenshots
ls
mv Screenshot1.png docker_ps.png
mv Screenshot2.png network.png
mv Screenshot3.png api.png
mv Screenshot4.png persistence.png
exit
scp ~/Desktop/your-correct-screenshots/*.png ommishra@192.168.64.2:~/containerized-webapp/screenshots/
ls
scp ~/Desktop/your-correct-screenshots/*.png ommishra@192.168.64.2:~/containerized-webapp/screenshots/
ls
mv "Screenshot 2026-03-19 at 21.56.01.png" docker_ps.png
mv "Screenshot 2026-03-19 at 21.56.22.png" network.png
mv "Screenshot 2026-03-19 at 21.56.51.png" api.png
mv "Screenshot 2026-03-19 at 21.57.13.png" persistence.png
mv Scr
ls
cd ~/containerized-webapp
git add .
git commit -m "Clean screenshots added"
git push
cd ~/containerized-webapp
git init
git add .
git commit -m "Initial commit - Docker project"
git config --global user.name "Om Mishra"
git config --global user.email "your-email@example.com"
git config --global user.name "Om Mishra"
git config --global user.email "mishra04om@gmail.com"
git config --global --list
git commit -m "Initial commit - Docker project"
git push -u origin main
git log
git add .
git commit -m "Initial commit - Docker project"
git branch -M main
git push -u origin main
git branch
git remote -v
git remote add origin https://github.com/ommishrx/containerized-webapp.git
git remote -v
git push -u origin main
cd ~/containerized-webapp
nano README.md
curl http://192.168.64.10:3000/health
curl -X POST http://192.168.64.10:3000/users -H "Content-Type: application/json" -d '{"name":"Omi"}'
curl http://192.168.64.10:3000/users
docker compose down
docker compose up -d
ls
git add README.md
git commit -m "Added README"
git push
nano README.md
git add README.md
git commit -m "Updated README with steps"
git push
nano Report.html
git add Report.html
git commit -m "Added HTML report"
git push
nano Report.html
git add Report.html
git commit -m "Updated HTML report"
git push
https://github.com/ommishrx/containerized-webapp
nano README.md
cd ~/containerized-webapp
rm Report.html
ls
git add .
git commit -m "Removed HTML file"
git push
Containerized Web Application with PostgreSQL (Docker + Macvlan)
Project Overview
This project demonstrates a containerized web application using:
Node.js + Express (Backend API)
PostgreSQL (Database)
Docker & Docker Compose
Macvlan networking with static IPs
Architecture
Client (Postman / Curl) ↓ Backend Container (192.168.64.10) ↓ PostgreSQL Container (192.168.64.11)
Technologies Used
Docker
Docker Compose
Node.js
PostgreSQL
Macvlan Networking
Ubuntu (UTM VM)
Features
REST API (GET, POST, Health Check)
Database integration
Auto table creation
Multi-stage Docker build
Non-root user
Persistent storage (volume)
Static IP networking
Run Project
docker compose up -d --build
---
##  Step 1: Install Docker
```bash
sudo apt update
sudo apt install -y docker.io docker-compose
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker $USER
## create project structure
mkdir containerized-webapp
cd containerized-webapp
mkdir backend database screenshots
## backend setup
nano backend/app.js
nano backend/package.json
nano backend/Dockerfile
nano backend/.dockerignore
## database setup
nano database/init.sql
nano database/Dockerfile
nano database/.dockerignore
ip a
## create network
docker network create -d macvlan \
--subnet=192.168.64.0/24 \
--gateway=192.168.64.1 \
-o parent=enp0s1 \
mynet
## docker-compose.yml
nano docker-compose.yml
## fix and run
docker compose build
docker compose up -d
## macvlan isolation host
sudo ip link add macvlan-shim link enp0s1 type macvlan mode bridge
sudo ip addr add 192.168.64.50/24 dev macvlan-shim
sudo ip link set macvlan-shim up
## test api
curl http://192.168.64.10:3000/health
## insert data
curl -X POST http://192.168.64.10:3000/users \
-H "Content-Type: application/json" \
-d '{"name":"Omi"}'
## fetch data
curl http://192.168.64.10:3000/users
## test persistance 
docker compose down
docker compose up -d
## push to git
git init
git add .
git commit -m "Docker 
nano README.md
git add README.md
git commit -m "Final README"
git push
nano README.md
git add README.md
git commit -m "Added student details"
git push
docker swarm init
docker swarm join-token worker
docker node ls
docker service create --name nginx-service --replicas 4 -p 8080:80 nginx
docker service ps nginx-service
docker node update --label-add type=frontend ubuntu-server
docker node inspect ubuntu-server
docker service create --name labeled-nginx --constraint 'node.labels.type==frontend' nginx
docker node update --availability drain ubuntu-server
docker node ls
docker service ps nginx-service
docker node update --availability active ubuntu-server
docker node ls
docker service ps nginx-service
docker network ls
docker network inspect ingress
curl localhost:8080
docker node promote ubuntu-server
docker node demote ubuntu-server
docker network inspect ingress
docker node update --availability active ubuntu-server
docker service ps nginx-service
curl localhost:8080
docker service rm nginx-service
docker service create --name nginx-service --replicas 4 -p 8080:80 nginx
docker service ps nginx-service
curl localhost:8080
curl 192.168.64.2:8080

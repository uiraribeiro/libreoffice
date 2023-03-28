useradd -s /bin/bash -m -d /home/aluno -c"Aluno" aluno
sed -i "s/PasswordAuthentication no/PasswordAuthentication yes/" /etc/ssh/sshd_config 
cat /etc/ssh/sshd_config grep PasswordAuthentication
cat /etc/ssh/sshd_config | grep PasswordAuthentication
clear
sed -i "s/ssh_pwauth: false/ssh_pwauth: true/" /etc/cloud/cloud.cfg.d/00_defaults.cfg
cd /etc/cloud/
ls
vi cloud.cfg
grep ssh_pwauth *
sed -i "s/ssh_pwauth: false/ssh_pwauth: true/" /etc/cloud/cloud.cfg
grep ssh_pwauth *
sed -i "s/ssh_pwauth:  false/ssh_pwauth: true/" /etc/cloud/cloud.cfg
grep ssh_pwauth *
sed -i "s/ssh_pwauth: .false/ssh_pwauth: true/" /etc/cloud/cloud.cfg
grep ssh_pwauth *
sed -i "s/ssh_pwauth: \+false/ssh_pwauth: true/" /etc/cloud/cloud.cfg
grep ssh_pwauth *
sed -i "s/ssh_pwauth:   0/ssh_pwauth: 1/" /etc/cloud/cloud.cfg
grep ssh_pwauth *
echo "PasswordAuthentication yes" >> /etc/ssh/ssh_config.d/05-redhat.conf
cd /etc/ssh
grep PasswordA *
systemctl restart sshd 
echo -e "linux1234\nlinux1234" | (passwd aluno)
echo $temp[0]
chage -d 0 aluno
echo "aluno ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/aluno
exit
useradd -s /bin/bash -m -d /home/terminal -c"Terminal Web" terminal
echo -e "linux1234\nlinux1234" | (passwd aluno)
echo -e "alshg7654YFGuFYVf\nalshg7654YFGuFYVf" | (passwd terminal)
chage -d 0 aluno
echo "terminal ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/terminal
systemctl start docker
docker run -it debian bash
docker run -it debian:7.3 bash
docker run -it debian:9.13 bash
mkdir libreoffice
cd libreoffice/
vi Dockerfile
docker build -t libre1 .
vi Dockerfile
docker build -t libre1 .
docker run --rm -it libre1 bash
wget https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&ved=2ahUKEwi49-W87P79AhWKqpUCHWYbBF0QFnoECBAQAQ&url=https%3A%2F%2Fwww.itapeva.unesp.br%2FHome%2FBiblioteca%2Fmodelo-tcc-unesp-itapeva.docx&usg=AOvVaw01-etgNUbXKYu1AxS7Khlx
ls
vi url\?sa\=t 
rm url*
wget www.itapeva.unesp.br/Home/Biblioteca/modelo-tcc-unesp-itapeva.docx
ls
docker run --rm  -it libre1 bash
docker run --rm -v ~/libreoffice/:/tmp libre1 /usr/bin/soffice --headless --convert-to pdf --outdir /tmp/ /tmp/modelo-tcc-unesp-itapeva.docx
ls
cd ..
mkdir web
cd web
vi docker-compose.yml
cd
curl -L "https://github.com/docker/compose/releases/download/v2.16.0/dockercompose-$(uname -s)-$(uname -m)" -o /usr/bin/docker-compose
chmod +x /bin/docker-compose
cd web
vi docker-compose.yml 
docker-compose up -d
cd
ls
https://github.com/docker/compose/releases/download/v2.16.0/dockercompose-$(uname -s)-$(uname -m)
wget https://github.com/docker/compose/releases/download/v2.16.0/dockercompose-$(uname -s)-$(uname -m)
rm /bin/docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/v2.16.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/v2.16.0/docker-compose-$(uname -s)-$(uname -m)" -o /bin/docker-compose
chmod +x /bin/docker-compose
cd web/
docker-compose up -d
mkdir html nginx-conf
ls
cd nginx-conf/
vi default.conf
docker-compose restart -d
docker-compose restart 
cd ..
cd html/
ls
vi info.php
ls
cd ..
cat docker-compose.yml 
cd pdf
ls
cp ../../libreoffice/modelo-tcc-unesp-itapeva.docx .
cd ..
cd html/
vi gera.php
ss -ltup
ss -ltupn
vi gera.php 
q
wq
cd ..
vi docker-compose.yml 
docker-compose restart 
docker exec -it nginx bash
docker-compose stop
docker-compose 
docker-compose down
vi docker-compose.yml 
docker-compose up -d
docker exec -it nginx bash
cd html/
vi gera.php 
docker exec -it nginx bash
cd ..
mkdir socket
cd socker
cd socket
vi Dockerfile
vi entrypoint.sh
docker build -t websocket .
cd ..
cd web/
vi docker-compose.yml 
docker-compose down
docker-compose up -d
cd html/
vi get
vi gera.php 
docker exec -it nginx bash
curl --unix-socket /var/run/docker.sock -X POST http://localhost/info
curl --unix-socket /var/run/docker.sock -X POST http://localhost/v1.42info
docker --version
docker info
curl --unix-socket /var/run/docker.sock -X POST http://localhost/info
curl --unix-socket /var/run/docker.sock "http://localhost/v1.42/containers/
curl --unix-socket /var/run/docker.sock "http://localhost/v1.42/containers/"
curl --unix-socket /var/run/docker.sock "http://localhost/v1.42/containers/json"
curl --unix-socket /var/run/docker.sock "http://localhost/v1.41/containers/json"
docker exec -it nginx bash
vi gera.php 
cutl 
curl http://localhost/info.php
clear
curl http://localhost/gera.php
vi gera.php 
docker exec -it php bash
docker exec -it nginx bash
docker exec -it php bash
curl --silent -XGET --unix-socket /run/docker.sock http://localhost/version | jq .
vi teste.php
curl localhost/teste.php
vi teste.php
docker exec -it php bash
vi teste.php
curl localhost/teste.php
cd ..
ls
docker image ls
docker run -d --name dockersock -p 8888:2735 -v /var/run/docker.sock:/var/run/docker.sock --restart always websocket:latest
docker ps
docker exec -it php bash
docker stop fb1400b49bdf
docker ps
cat web/docker-compose.yml 
docker run -d --name dockersock -p 8888:2735 -v /var/run/docker.sock:/var/run/docker.sock --restart always --network app-network websocket:latest
docker rm dockersock
docker run -d --name dockersock -p 8888:2735 -v /var/run/docker.sock:/var/run/docker.sock --restart always --network app-network websocket:latest
docker network
docker network ls
docker run -d --name dockersock -p 8888:2735 -v /var/run/docker.sock:/var/run/docker.sock --restart always --network web_app-network websocket:latest
docker rm dockersock
docker run -d --name dockersock -p 8888:2735 -v /var/run/docker.sock:/var/run/docker.sock --restart always --network web_app-network websocket:latest
docker exec -it php bash
cd web/html/
rm teste.php 
vi gera.php 
mv gera.php lista_conteiner.php
cat lista_conteiner.php 
vi cria_conteiner.php
cat lista_conteiner.php 
vi cria_conteiner.php
docker image
docker image ls
vi cria_conteiner.php 
history | grep libre1
vi cria_conteiner.php 
cd ..
cat docker-compose.yml 
cd ..
ls
cd libreoffice/
cat Dockerfile 
history | grep libre1
cd ..
ls
cd socket/
cat Dockerfile 
cat entrypoint.sh 
history |grep sock
cd ..
cd web/html/
vi cria_conteiner.php 
pwd
ls
mkdir pdf
ls ../
cd pdf
ls
cd ..
ls
cd pdf
cp /root/libreoffice/modelo-tcc-unesp-itapeva.docx .
pwd
cd ..
vi cria_conteiner.php 
curl localhost/cria_conteiner.php
vi cria_conteiner.php 
curl localhost/cria_conteiner.php
vi cria_conteiner.php 
curl localhost/cria_conteiner.php
vi cria_conteiner.php 
curl localhost/cria_conteiner.php
vi cria_conteiner.php 
curl localhost/cria_conteiner.php
vi cria_conteiner.php 
curl localhost/cria_conteiner.php
vi cria_conteiner.php 
curl localhost/cria_conteiner.php
vi cria_conteiner.php 
curl localhost/cria_conteiner.php
docker ps
vi cria_conteiner.php 
ls ../docker-compose.yml 
cat ../docker-compose.yml 
rm -rf pdf
ls
vi cria_conteiner.php 
docker exec -it nginx
docker exec -it nginx bash
cd ..
docker-compose down
docker-compose up
docker-compose up -d
docker exec -it nginx bash
vi cria_conteiner.php 
ls
vi docker-compose.yml 
docker-compose down
docker-compose up -d
docker exec -it nginx bash
cd html/
ls
vi cria_conteiner.php 
clear
curl localhost/cria_conteiner.php
cd pdf
ls
cd ..
cd pdf
ls
docker ps
cd ..
cd html/
cd ..
ls
vi docker-compose.yml 
cd html/
ls
cd pdf
ls
rmdir pdf
cd ..
rmdir pdf
ls
vi lista_conteiner.php 
curl localhost/cria_conteiner.php
ls
ls ../pdf/
vi cria_conteiner.php 
docker ps -a
vi cria_conteiner.php 
curl localhost/cria_conteiner.php
vi cria_conteiner.php 
curl localhost/cria_conteiner.php
vi cria_conteiner.php 
curl localhost/cria_conteiner.php
vi cria_conteiner.php 
curl localhost/cria_conteiner.php
vi cria_conteiner.php 
curl localhost/cria_conteiner.php
vi cria_conteiner.php 
curl localhost/cria_conteiner.php
vi cria_conteiner.php 
curl localhost/cria_conteiner.php
vi cria_conteiner.php 
curl localhost/cria_conteiner.php
vi cria_conteiner.php 
curl localhost/cria_conteiner.php
vi cria_conteiner.php 
curl localhost/cria_conteiner.php
vi cria_conteiner.php 
curl localhost/cria_conteiner.php
vi cria_conteiner.php 
curl localhost/cria_conteiner.php
vi cria_conteiner.php 
curl localhost/cria_conteiner.php
vi cria_conteiner.php 
curl localhost/cria_conteiner.php
vi cria_conteiner.php 
curl localhost/cria_conteiner.php
vi cria_conteiner.php 
curl localhost/cria_conteiner.php
vi cria_conteiner.php 
curl localhost/cria_conteiner.php
vi cria_conteiner.php 
curl localhost/cria_conteiner.php
vi cria_conteiner.php 
curl localhost/cria_conteiner.php
vi cria_conteiner.php 
curl localhost/cria_conteiner.php
vi cria_conteiner.php 
curl localhost/cria_conteiner.php
vi cria_conteiner.php 
curl localhost/cria_conteiner.php
vi cria_conteiner.php 
curl localhost/cria_conteiner.php
vi cria_conteiner.php 
curl localhost/cria_conteiner.php
vi cria_conteiner.php 
ls
ls ../pdf/
vi cria_conteiner.php 
cat cria_conteiner.php 
curl localhost/cria_conteiner.php
docker ps -a
cat cria_conteiner.php 
vi cria_conteiner.php 
docker ps
docker ps -a
ls ../pdf/
docker rm $(docker ps --filter status=exited -q)
docker ps
docker rm $(docker ps --filter status=created -q)
docker ps
docker ps -a
vi cria_conteiner.php 
curl localhost/cria_conteiner.php
vi cria_conteiner.php 
curl localhost/cria_conteiner.php
vi cria_conteiner.php 
curl localhost/cria_conteiner.php
vi cria_conteiner.php 
curl localhost/cria_conteiner.php
vi cria_conteiner.php 
curl localhost/cria_conteiner.php
docker ps -a
docker rm $(docker ps --filter status=exited -q)
curl localhost/cria_conteiner.php
docker ps -a
cat cria_conteiner.php 
cd ..
vi docker-compose.yml 
docker ps 
docker-compose down
docker stop dockersock
docker rm dockersock
docker-compose up -d
docker ps
ls
cd pdf
ls
rm modelo-tcc-unesp-itapeva.pdf 
ls
cd ..
ls
cd ..
ls
git init
yum install init
yum install git
git init
git add .
git commit
exit

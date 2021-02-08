// VERIF// sudo killall nginx
sudo docker build -t webserver .
sudo docker run -it -p 80:80 -p 443:443 webserver
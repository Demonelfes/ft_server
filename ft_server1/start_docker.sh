sudo docker build -t webserver --build-arg INDEX=off .
sudo docker run -it -p 80:80 -p 443:443 webserver
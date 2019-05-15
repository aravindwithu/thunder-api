FROM ubuntu:latest
MAINTAINER aravind-venkit "avenkit2@binghamton.edu"
#ENV http_proxy http://bcproxy.hq.netspend.com:8080
#ENV https_proxy http://172.21.0.47:80
RUN apt-get update -y
RUN apt-get install -y -q apt-transport-https ca-certificates
RUN apt-get install -y python3 python3-pip
RUN pip3 install flask-bcrypt flask-restplus Flask-Migrate pyjwt Flask-Script flask_testing flask-cors
COPY . /thunder-api
WORKDIR /thunder-api
RUN pip3 install -r requirements.txt
RUN python3 manage.py db upgrade
RUN python3 manage.py test
ENTRYPOINT ["python3"]
CMD ["manage.py", "run"]
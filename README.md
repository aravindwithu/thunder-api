# Thunder-api

By [aravind venkit](http://aravindvenkit.com/) (avenkituswamy)
used python, flask, restplus, docker, api

we use python 3 along with following packages
pip3, flask-bcrypt, flask-restplus, Flask-Migrate, pyjwt, Flask-Script, flask_testing

for all the requirment information please refer `requirements.txt`

docker image/container name is `thunder-api`

----------------------------------------------------------------------------
Note: Always run make clean before make.

## Commands:

`make` -> builds docker image and runs the docker image as container.

`make clean` -> stops & removes the docker container, and removes docker image as well.

`make build` -> builds docker image.

`make run` -> runs the docker image as container.

`make stop` -> stops & removes the docker container.

`make rmi` -> removes docker image.

-----------------------------------------------------------------------------

host: localhost/respective IP
port: 5050
url: `http://localhost:5050/`
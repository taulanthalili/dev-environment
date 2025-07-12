
To run the code you need to clone the repository on your computer:
* Needed software:
  * git
  * docker
  * docker-compose

After you clone the current repo:<br />
``git clone git@github.com:taulanthalili/dev-environment.git``

### cd dev-environment/

Notice port 5679 should not be used, if so you need to change it on the file: docker-compose.yml and use whatever port you like.

to start: 
docker compose up -d

Cccess the container:
docker exec -it mydev bash

run the script:
/usr/local/bin/docker-environment

After the container is ready , you can login via ssh on port 5679:
ssh -p 5679 dev@127.0.0.1

to rm: 
docker compose rm -s -f
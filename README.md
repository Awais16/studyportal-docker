## Study Portal Docker Container

#### Quick Run
1. Build: `docker-compose build`
1. run: `docker-compose up`
1. goto http://localhost:8080 and login with: 
    * username: admin
    * pass: admin

##### Access
1. Studyportal http://localhost:8080
1. Mysql http://localhost:3307
1. Adminer http://localhost:8090 

##### Pre configured
If you have db at `./db/data/`
username: admin 
password: admin

admin can create new users at endpoint:
`POST /admin/user/`
with parameter: username,password,role

roles can be: ROLE_ADMIN,ROLE_MANAGER,ROLE_USER

#### New configurations
Mysql dump is **required**
###### Steps
1. Run containers (or studyportaldb container)
1. Import mysql dump in db container.
1. Restart containers

###### Info
* Dockerfile contains configuration for studyportal
* docker-compose.yml file contains configurations for mysql
* Mysql workbench can be used to import mysql data for running portal



IMPORTANT:
Replace:
YOUR_USERNAME
YOUR_REPOSITORY
YOUR_EMAIL
YOUR_NAME
YOUR_DOCKERHUB_USERNAME
IMAGE_NAME
CONTAINER_NAME
COMMIT_ID

============================================================
1. CHECK INSTALLATIONS
============================================================

git --version
java --version
javac --version
mvn --version
docker --version


============================================================
2. IMPORT MAVEN PROJECT FROM GITHUB INTO ECLIPSE
============================================================

Eclipse:

File
→ Import
→ Git
→ Projects from Git (with smart import)
→ Next
→ Clone URI
→ Next

GitHub URL:

https://github.com/YOUR_USERNAME/YOUR_REPOSITORY.git

→ Next
→ Select branch: main
→ Next
→ Choose local directory
→ Finish

Project appears in Project Explorer.


============================================================
3. MAVEN PROJECT STRUCTURE
============================================================

PROJECT
├── src
│   ├── main
│   │   ├── java
│   │   └── webapp
│   └── test
│       └── java
├── pom.xml
└── ...


============================================================
4. UPDATE MAVEN PROJECT
============================================================

Right-click Project
→ Maven
→ Update Project...
→ Select Project
→ OK


============================================================
5. CHECK pom.xml
============================================================

Open pom.xml

Check:

<groupId>com.example</groupId>
<artifactId>myapp</artifactId>
<version>1.0</version>

Normal Java:

<packaging>jar</packaging>

Web application:

<packaging>war</packaging>


============================================================
6. ADD MAVEN DEPENDENCY
============================================================

Browser
→ mvnrepository.com
→ Search dependency
→ Select required version
→ Copy dependency XML
→ Paste inside:

<dependencies>
    ...
</dependencies>


Example:

<dependency>
    <groupId>javax.servlet</groupId>
    <artifactId>javax.servlet-api</artifactId>
    <version>4.0.1</version>
    <scope>provided</scope>
</dependency>


============================================================
7. MAVEN COMMANDS
============================================================

mvn clean

mvn test

mvn package

mvn install

mvn clean package

mvn clean install


============================================================
8. MAVEN FROM ECLIPSE
============================================================

Right-click Project
→ Run As
→ Maven clean

Right-click Project
→ Run As
→ Maven install

Right-click Project
→ Run As
→ Maven test

Right-click Project
→ Run As
→ Maven build

Maven Build dialog:

Goals:
clean install test

→ Apply
→ Run

Check Console:

BUILD SUCCESS


============================================================
9. CHECK target/
============================================================

After:

mvn clean package

JAR project:

target/myapp.jar

WAR project:

target/mywebapp.war


============================================================
10. NORMAL JAVA MAVEN APPLICATION
============================================================

Right-click App.java
→ Run As
→ Java Application

Output appears in Console.


============================================================
11. EXECUTABLE JAR
============================================================

mvn package

java -jar target/myapp.jar

Inspect JAR:

jar tf target/myapp.jar


============================================================
12. JUNIT
============================================================

Tests go in:

src/test/java

Run:

mvn test

Check:

target/test-classes/

target/surefire-reports/


============================================================
13. JAVA VERSION IN pom.xml
============================================================

<plugin>
    <groupId>org.apache.maven.plugins</groupId>
    <artifactId>maven-compiler-plugin</artifactId>
    <version>3.11.0</version>
    <configuration>
        <source>17</source>
        <target>17</target>
    </configuration>
</plugin>

Then:

mvn package


============================================================
14. MAVEN WEB APPLICATION
============================================================

Typical:

PROJECT
├── src
│   └── main
│       └── webapp
│           ├── index.jsp
│           └── WEB-INF
│               └── web.xml
└── pom.xml

pom.xml:

<packaging>war</packaging>

Build:

mvn clean package

WAR:

target/mywebapp.war


============================================================
15. CONFIGURE TOMCAT IN ECLIPSE
============================================================

Window
→ Show View
→ Servers

Add/Create Server

→ Apache
→ Tomcat v9.0
→ Next

Configure Tomcat installation directory

→ Finish


============================================================
16. RUN WEB APPLICATION ON TOMCAT
============================================================

Right-click index.jsp
→ Run As
→ Run on Server
→ Select Tomcat v9.0
→ Finish

Browser:

http://localhost:8080/


============================================================
17. GIT — OPEN GIT BASH IN ECLIPSE
============================================================

Right-click Maven Project
→ Show in Local Terminal
→ Git Bash


============================================================
18. GIT BASIC SETUP
============================================================

git status

git init

git config --global user.name "YOUR_NAME"

git config --global user.email "YOUR_EMAIL"

git config --global user.name

git config --global user.email

git add .

git commit -m "first commit"


============================================================
19. .gitignore FOR MAVEN
============================================================

Create:

.gitignore

Put:

target/


============================================================
20. CONNECT LOCAL REPOSITORY TO GITHUB
============================================================

git branch -M main

git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPOSITORY.git

git remote -v

git push -u origin main


============================================================
21. IF REMOTE ALREADY EXISTS
============================================================

git remote -v

git remote set-url origin https://github.com/YOUR_USERNAME/YOUR_REPOSITORY.git

git push -u origin main


============================================================
22. CLONE USING GIT BASH
============================================================

git clone https://github.com/YOUR_USERNAME/YOUR_REPOSITORY.git

cd YOUR_REPOSITORY

git status


============================================================
23. GIT BRANCHES
============================================================

See branches:

git branch

Create + switch:

git checkout -b feature

Switch:

git checkout feature

Newer command:

git switch -c feature

Switch:

git switch feature


============================================================
24. FEATURE BRANCH WORKFLOW
============================================================

git checkout -b feature

MAKE YOUR CODE CHANGES

git status

git add .

git commit -m "Added feature"

git push -u origin feature


============================================================
25. MERGE FEATURE INTO MAIN
============================================================

IMPORTANT:
The branch you are currently ON receives the changes.

FEATURE → MAIN:

git checkout main

git pull origin main

git merge feature

git push origin main


============================================================
26. MERGE MAIN INTO FEATURE
============================================================

git checkout feature

git merge main


============================================================
27. REBASE FEATURE ONTO LATEST MAIN
============================================================

git checkout feature

git fetch origin

git rebase origin/main


If conflict:

git status

FIX THE CONFLICTING FILES

git add .

git rebase --continue


Cancel rebase:

git rebase --abort


After rebase:

git push --force-with-lease origin feature


============================================================
28. MERGE VS REBASE
============================================================

MERGE:

git checkout main
git merge feature

Preserves branch history.

REBASE:

git checkout feature
git fetch origin
git rebase origin/main

Creates linear history.

============================================================
29. GIT LOG
============================================================

git log

git log --oneline

git log --oneline --graph --all


============================================================
30. GIT REVERT
============================================================

git log --oneline

git revert COMMIT_ID

git push


============================================================
31. GIT STASH
============================================================

Save unfinished changes:

git stash

See stashes:

git stash list

Apply stash:

git stash apply

Apply + remove stash:

git stash pop


============================================================
32. GIT RESTORE
============================================================

Discard changes in file:

git restore filename

Unstage file:

git restore --staged filename


============================================================
33. GIT TAG
============================================================

Create tag:

git tag v1.0

See tags:

git tag

Push tag:

git push origin v1.0


============================================================
34. RENAME BRANCH
============================================================

Rename current branch:

git branch -M main

Rename branch:

git branch -m oldname newname


============================================================
35. DOCKER BASIC CHECK
============================================================

docker --version

docker images

docker ps

docker ps -a


============================================================
36. REDIS — DIRECT IMAGE
============================================================

Pull Redis:

docker pull redis

Run Redis:

docker run --name my-redis -d redis

Check:

docker ps

Enter Redis:

docker exec -it my-redis redis-cli

Redis:

SET name "Alice"

GET name

Exit:

exit


============================================================
37. REDIS DOCKERFILE
============================================================

Create a file named EXACTLY:

Dockerfile

NO .txt

Contents:

FROM redis:latest
CMD ["redis-server"]


============================================================
38. REDIS DOCKERFILE FOLDER
============================================================

Windows example:

C:\DockerProjects\Redis

Git Bash:

cd /c/DockerProjects/Redis

Folder:

Redis/
└── Dockerfile


============================================================
39. BUILD REDIS IMAGE
============================================================

docker build -t redisnew .

Check:

docker images


============================================================
40. RUN CUSTOM REDIS IMAGE
============================================================

docker run --name myredisnew -d redisnew

docker ps

docker exec -it myredisnew redis-cli

SET name "Alice"

GET name

exit


============================================================
41. REDIS STOP / START / REMOVE
============================================================

Stop:

docker stop myredisnew

Start:

docker start myredisnew

Remove container:

docker rm myredisnew

Remove image:

docker rmi redisnew


============================================================
42. TOMCAT DOCKERFILE FOR MAVEN WEB APP
============================================================

FIRST BUILD MAVEN:

mvn clean package

Check:

target/YOUR_APP.war

Create:

Dockerfile

Contents:

FROM tomcat:9.0

COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]


============================================================
43. WHAT ROOT.war DOES
============================================================

Maven:

target/mywebapp.war

Docker:

COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

Inside container:

/usr/local/tomcat/webapps/ROOT.war

ROOT.war means application is deployed at:

/

So:

http://localhost:7089/


============================================================
44. BUILD TOMCAT DOCKER IMAGE
============================================================

mvn clean package

docker build -t lmsimage .

docker images


============================================================
45. RUN TOMCAT DOCKER CONTAINER
============================================================

docker run -d -p 7089:8080 --name lmcontainer lmsimage


Meaning:

-d = detached/background

-p = port mapping

7089 = host port

8080 = container/Tomcat port

--name lmcontainer = container name

lmsimage = image


============================================================
46. OPEN WEB APPLICATION
============================================================

http://localhost:7089/


============================================================
47. DOCKER CHECK
============================================================

docker ps

docker ps -a

docker images

docker logs lmcontainer


============================================================
48. ENTER TOMCAT CONTAINER
============================================================

docker exec -it lmcontainer bash

If bash doesn't work:

docker exec -it lmcontainer sh

Inside container:

ls -l /usr/local/tomcat/webapps/

Expected:

ROOT
ROOT.war

Exit:

exit


============================================================
49. WINDOWS PATH VS CONTAINER PATH
============================================================

WRONG INSIDE CONTAINER:

C:/Program Files/...

RIGHT:

/usr/local/tomcat/webapps/

Command:

docker exec -it lmcontainer ls -l /usr/local/tomcat/webapps/


============================================================
50. DOCKER HUB LOGIN
============================================================

docker login


============================================================
51. TAG IMAGE
============================================================

docker tag lmsimage YOUR_DOCKERHUB_USERNAME/lmsimage:latest

Check:

docker images


============================================================
52. PUSH IMAGE
============================================================

docker push YOUR_DOCKERHUB_USERNAME/lmsimage:latest


============================================================
53. PULL IMAGE
============================================================

docker pull YOUR_DOCKERHUB_USERNAME/lmsimage:latest


============================================================
54. RUN PULLED IMAGE
============================================================

docker run -d -p 7089:8080 --name lmcontainer YOUR_DOCKERHUB_USERNAME/lmsimage:latest


============================================================
55. DOCKER STOP / START / REMOVE
============================================================

Stop:

docker stop lmcontainer

Start:

docker start lmcontainer

Remove container:

docker rm lmcontainer

Remove image:

docker rmi lmsimage

Logout:

docker logout


============================================================
56. DOCKER COMMIT
============================================================

Check containers:

docker ps

Get CONTAINER_ID

Then:

docker commit CONTAINER_ID YOUR_DOCKERHUB_USERNAME/redis1

Check:

docker images

Push:

docker push YOUR_DOCKERHUB_USERNAME/redis1


============================================================
57. DOCKER SCENARIO QUESTIONS
============================================================

Check running containers:

docker ps

Check ALL containers:

docker ps -a

Stop container:

docker stop CONTAINER_NAME

Start container:

docker start CONTAINER_NAME

Remove container:

docker rm CONTAINER_NAME

Remove image:

docker rmi IMAGE_NAME

Build image:

docker build -t IMAGE_NAME .

Run container:

docker run -d IMAGE_NAME

Run named container:

docker run --name CONTAINER_NAME -d IMAGE_NAME

Run with port:

docker run -d -p HOST_PORT:CONTAINER_PORT IMAGE_NAME

Example:

docker run -d -p 7089:8080 lmsimage

Enter shell:

docker exec -it CONTAINER_NAME bash

Alternative:

docker exec -it CONTAINER_NAME sh

Check logs:

docker logs CONTAINER_NAME

Login:

docker login

Logout:

docker logout

Tag:

docker tag IMAGE_NAME USERNAME/IMAGE_NAME:latest

Push:

docker push USERNAME/IMAGE_NAME:latest

Pull:

docker pull USERNAME/IMAGE_NAME:latest

See images:

docker images


============================================================
58. COMPLETE GITHUB → ECLIPSE → MAVEN → TOMCAT → DOCKER
============================================================

1. OPEN ECLIPSE

2. File
   → Import
   → Git
   → Projects from Git (with smart import)
   → Next
   → Clone URI
   → Next

3. Enter:

https://github.com/YOUR_USERNAME/YOUR_REPOSITORY.git

4. Next

5. Select main

6. Next

7. Choose directory

8. Finish

9. Project appears in Project Explorer

10. Right-click Project
    → Maven
    → Update Project...
    → OK

11. Open pom.xml

12. Check:

<packaging>war</packaging>

13. Maven clean

14. Maven install

15. Maven test

16. Maven build

17. Maven Build Goals:

clean install test

18. Apply → Run

19. Check:

BUILD SUCCESS

20. OR use Git Bash:

mvn clean package

21. Check:

target/YOUR_APP.war

22. Configure Tomcat:

Window
→ Show View
→ Servers
→ Add Server
→ Apache
→ Tomcat v9.0
→ Next
→ Configure
→ Finish

23. Right-click index.jsp

24. Run As
    → Run on Server

25. Select Tomcat v9.0

26. Finish

27. Open:

http://localhost:8080/

28. Open Git Bash

29. Check:

git status

30. If new repository:

git init

31. Configure:

git config --global user.name "YOUR_NAME"

git config --global user.email "YOUR_EMAIL"

32. Create .gitignore:

target/

33. Add:

git add .

34. Commit:

git commit -m "first commit"

35. Rename branch:

git branch -M main

36. Add GitHub remote:

git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPOSITORY.git

37. Check:

git remote -v

38. Push:

git push -u origin main

39. Create feature branch:

git checkout -b feature

40. Make changes

41. Add:

git add .

42. Commit:

git commit -m "Added feature"

43. Push:

git push -u origin feature

44. Merge feature into main:

git checkout main

git pull origin main

git merge feature

git push origin main

45. If rebase is asked:

git checkout feature

git fetch origin

git rebase origin/main

46. If conflict:

git status

FIX FILE

git add .

git rebase --continue

47. Cancel if required:

git rebase --abort

48. After rebase:

git push --force-with-lease origin feature

49. Build WAR again:

mvn clean package

50. Check:

target/YOUR_APP.war

51. Create Dockerfile:

FROM tomcat:9.0

COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]

52. Build Docker image:

docker build -t lmsimage .

53. Check:

docker images

54. Run:

docker run -d -p 7089:8080 --name lmcontainer lmsimage

55. Check:

docker ps

56. Check all:

docker ps -a

57. Check logs:

docker logs lmcontainer

58. Enter container:

docker exec -it lmcontainer bash

59. Inside:

ls -l /usr/local/tomcat/webapps/

60. Check:

ROOT.war

61. Exit:

exit

62. Browser:

http://localhost:7089/

63. Docker Hub:

docker login

64. Tag:

docker tag lmsimage YOUR_DOCKERHUB_USERNAME/lmsimage:latest

65. Push:

docker push YOUR_DOCKERHUB_USERNAME/lmsimage:latest


============================================================
59. COMPLETE REDIS FLOW
============================================================

Create folder:

C:\DockerProjects\Redis

Git Bash:

cd /c/DockerProjects/Redis

Create file:

Dockerfile

Put:

FROM redis:latest
CMD ["redis-server"]

Build:

docker build -t redisnew .

Check:

docker images

Run:

docker run --name myredisnew -d redisnew

Check:

docker ps

Enter Redis:

docker exec -it myredisnew redis-cli

Test:

SET name "Alice"

GET name

Exit:

exit

Stop:

docker stop myredisnew

Start:

docker start myredisnew

Check:

docker ps

Remove container:

docker rm myredisnew

Remove image:

docker rmi redisnew


============================================================
60. FINAL TWO DOCKERFILES TO MEMORIZE
============================================================

REDIS:

FROM redis:latest
CMD ["redis-server"]


MAVEN WEB APP + TOMCAT:

FROM tomcat:9.0

COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]


============================================================
61. FINAL COMMAND FLOW — MEMORIZE THIS
============================================================

GITHUB:

git clone URL
git status
git add .
git commit -m "message"
git push


MAVEN:

mvn clean
mvn test
mvn package
mvn install
mvn clean package
mvn clean install


JAVA:

java -jar target/myapp.jar


GIT BRANCH:

git checkout -b feature
git checkout main
git merge feature
git fetch origin
git rebase origin/main
git stash
git stash pop
git revert COMMIT_ID
git log --oneline


DOCKER:

docker pull redis
docker build -t IMAGE .
docker run -d IMAGE
docker run --name CONTAINER -d IMAGE
docker ps
docker ps -a
docker images
docker logs CONTAINER
docker exec -it CONTAINER bash
docker exec -it CONTAINER redis-cli
docker stop CONTAINER
docker start CONTAINER
docker rm CONTAINER
docker rmi IMAGE
docker login
docker tag IMAGE USERNAME/IMAGE:latest
docker push USERNAME/IMAGE:latest
docker pull USERNAME/IMAGE:latest
docker logout


============================================================
62. ABSOLUTE LAST-MINUTE MEMORY
============================================================

NORMAL JAVA:

pom.xml
↓
mvn clean package
↓
target/*.jar
↓
Run As → Java Application
OR
java -jar target/myapp.jar


WEB JAVA:

pom.xml
↓
<packaging>war</packaging>
↓
mvn clean package
↓
target/*.war
↓
Tomcat
↓
Run As → Run on Server


WEB JAVA + DOCKER:

mvn clean package
↓
target/*.war
↓
Dockerfile
↓
FROM tomcat:9.0
↓
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war
↓
docker build -t lmsimage .
↓
docker run -d -p 7089:8080 --name lmcontainer lmsimage
↓
docker ps
↓
docker logs lmcontainer
↓
docker exec -it lmcontainer bash
↓
ls -l /usr/local/tomcat/webapps/
↓
http://localhost:7089/


REDIS:

Dockerfile
↓
FROM redis:latest
CMD ["redis-server"]
↓
docker build -t redisnew .
↓
docker run --name myredisnew -d redisnew
↓
docker ps
↓
docker exec -it myredisnew redis-cli
↓
SET name "Alice"
↓
GET name
↓
exit

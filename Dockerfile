FROM eclipse-temurin:17-jdk
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]
#ENTRYPOINT ["java", "-Dspring.profiles.active=${SPRING_PROFILE}", "-jar", "/app.jar"]

# -------------------------------------

# 이미지 빌드 : docker build -t spring-image-local .
# 이미지 확인 : docker images
# 이미지 삭제 : docker rmi spring-image-local

# 컨테이너 생성 및 실행 : docker run -d --name spring-container-local -p 8080:8080 -e MY_SECRET=locallocal -e SPRING_PROFILE=local spring-image-local
# 실행중인 컨테이너 확인 : docker ps
# 모든 컨테이너 확인 : docker ps -a
# 컨테이너 재시작 : docker restart spring-container-local
# 컨테이너 종료 : docker stop spring-container-local
# 컨테이너 재실행 : docker start spring-container-local
# 컨테이너 삭제 : docker rm spring-container-local

# 도커허브 로그인 : docker login -u username -p password
# 도커허브 형식에 맞춰 이미지 빌드 : docker build -t username/repository:tag .
# 도커허브에 이미지 푸시 : docker push username/repository:tag
# 도커허브 이미지 풀 : docker pull username/repository:tag

# hanjo8813/cicd-test:spring-local
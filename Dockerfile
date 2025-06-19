# 베이스 이미지, 우분투로 할 경우 jdk 설치해야됨
FROM openjdk:17
# 작성자 라벨 생성
LABEL maintainer="ino <inho.mun8063@gmail.com>"
# version label
LABEL version="1.0.0"
# 호스트 상에 만들어진 build된 jar 파일의 경로 변수
ARG JAR_FILE_PATH=build/libs/*.jar
# 호스트 상에 만들어진 build된 jar 파일을 이미지 내부에 app.jar 이름의 파일로 복사
COPY ${JAR_FILE_PATH} app.jar
#컨테이너 실행시 바로 수행할 명령어
ENTRYPOINT ["java", "-jar", "app.jar"]
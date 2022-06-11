FROM openjdk:17
#FROM balenalib/armv7hf-alpine-openjdk
ARG PORT=80
COPY FauxServer.class /tmp
WORKDIR /tmp
EXPOSE $PORT
#RUN javac FauxServer.java 
#ENTRYPOINT ["java FauxServer"]
cmd ["java", "FauxServer", $PORT]

FROM balenalib/balenalib/armv7hf-alpine-openjdk
COPY FauxServer.java /tmp
WORKDIR /tmp
EXPOSE 80
RUN javac FauxServer.java 
ENTRYPOINT ["java"]
cmd ["FauxServer"]
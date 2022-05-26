FROM java:8
COPY FauxServer.java /tmp
WORKDIR /tmp
EXPOSE 80
RUN javac FauxServer.java 
ENTRYPOINT ["java"]
cmd ["FauxServer"]
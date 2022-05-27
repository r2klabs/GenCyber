FROM openjdk:11
ARG port
COPY FauxServer.java /tmp
WORKDIR /tmp
EXPOSE $port
RUN javac FauxServer.java 
ENTRYPOINT ["java"]
CMD ["FauxServer", $port]
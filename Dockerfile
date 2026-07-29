FROM jetty:11.0.24-jdk17

ENV JETTY_BASE=/var/lib/jetty

COPY target/simple-servlet-0.1.war /var/lib/jetty/webapps/root.war

EXPOSE 8080

CMD ["java", "-jar", "/usr/local/jetty/start.jar"]

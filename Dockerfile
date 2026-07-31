FROM jetty:11.0.24-jdk17

# Explicitly ensure the destination filename is capitalized AS ROOT.war
COPY target/simple-servlet-0.1.war /var/lib/jetty/webapps/ROOT.war

EXPOSE 8080

# Remove the custom java -jar CMD completely to let the image's default entrypoint run

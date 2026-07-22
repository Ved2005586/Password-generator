FROM tomcat:10.1-jdk17

# Remove default Tomcat apps (optional, keeps the image lean)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your app folder into Tomcat's webapps directory
COPY ./thjune26_p11_pg_app /usr/local/tomcat/webapps/ROOT

EXPOSE 8080

CMD ["catalina.sh", "run"]

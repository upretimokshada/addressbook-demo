FROM tomcat:9.0
WORKDIR /usr/local/tomcat/
COPY ./target/addressbook-2.0.war ./webapps/addressbook.war
RUN cp -r ./webapps.dist/* ./webapps/
EXPOSE 8080
CMD ["catalina.sh","run"]

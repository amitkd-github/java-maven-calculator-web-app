FROM tomcat

WORKDIR "/usr/local/tomcat"

ADD target/calculator-1.1-SNAPSHOT.war ./webapps/

CMD ["sh", "/usr/local/tomcat/bin/startup.sh"]


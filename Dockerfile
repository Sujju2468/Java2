# Use a base image with Tomcat installed
FROM tomcat:9.0

# Copy the .war file to the webapps directory of Tomcat
COPY target/works-with-heroku-1.0.war /usr/local/tomcat/webapps/

# Expose port 8080 for the application
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]

FROM docker.io/library/httpd:latest

# Add a custom message to index.html
RUN echo "<h1>Hello from httpd container this is new job, the new content added THIS IS pratik</h1>" > /usr/local/apache2/htdocs/index.html

FROM alpine:latest
LABEL maintainer="yourname@example.com"

RUN echo "Hello from Docker image!" > /message.txt

CMD ["cat", "/message.txt"]

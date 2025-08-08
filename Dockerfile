FROM alpine:latest
LABEL maintainer="yourname@example.com"

RUN echo "Hello from Docker image!" > /message.txt
RUN echo "Hello from dhiraj" > /message.txt

CMD ["cat", "/message.txt"]

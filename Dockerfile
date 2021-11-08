FROM ubuntu
ARG DEBIAN_FRONTEND=noninteractive
RUN sudo apt update -y
RUN sudo apt install apache2 -y
EXPOSE 80
ENTRYPOINT ["/usr/sbin/apache2ctl"]
CMD ["-D","FOREGROUND"]

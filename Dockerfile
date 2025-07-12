#Clean Debian
FROM debian:latest
ENV HOSTNAME openservice
LABEL maintainer="Magento Docker Maintainers <taulanthalili@gmail.com>"
RUN apt update && apt install -y bash-completion curl make git libnss3-tools openssl gnupg unzip openssh-server net-tools sudo telnet locales vim python3-pip
ADD bin/* /usr/local/bin/
ENV USER_HOME /home/dev
ENV DEBUG false

RUN ["chmod", "+x", "/usr/local/bin/docker-environment"]
#RUN mkdir /run/sshd

# run ssh server
CMD ["/usr/sbin/sshd", "-D"]

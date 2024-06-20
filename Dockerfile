FROM ubuntu:22.04
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y curl
COPY startup.sh /startup.sh
RUN chmod 744 /startup.sh
ENTRYPOINT ["/startup.sh"]

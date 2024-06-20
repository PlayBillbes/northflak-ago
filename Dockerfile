FROM ubuntu:22.04
RUN apt-get update -y
RUN apt-get upgrade -y
RUN echo 'Installing additional packages...' && \
	export DEBIAN_FRONTEND=noninteractive && \
	apt-get update && \
	apt-get install \
	wget \
  unzip \
	-y --show-progress 
COPY startup.sh /startup.sh
RUN chmod 744 /startup.sh
CMD ["/bin/bash","/startup.sh"]

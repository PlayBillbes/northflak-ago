FROM ubuntu:22.04

# Copy the current directory contents into the container at /app
WORKDIR /app
COPY . /app

RUN apt-get update -y
RUN apt-get upgrade -y
RUN echo 'Installing additional packages...' && \
	export DEBIAN_FRONTEND=noninteractive && \
	apt-get update && \
	apt-get install \
	wget \
  	unzip \
	-y --show-progress 
RUN chmod +x startup.sh server &&\


CMD ["/bin/bash","/startup.sh"]

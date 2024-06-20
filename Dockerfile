FROM ubuntu:22.04

# Copy the current directory contents into the container at /app
COPY . .

RUN apt-get update -y
RUN apt-get upgrade -y
RUN echo 'Installing additional packages...' && \
	export DEBIAN_FRONTEND=noninteractive && \
	apt-get update && \
	apt-get install \
	wget \
  	unzip \
	-y --show-progress 
chmod +x startup.sh web server &&\


CMD ["/bin/bash","/startup.sh"]

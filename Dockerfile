FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
	curl
RUN curl https://repo.continuum.io/archive/Anaconda3-4.3.0-Linux-x86_64.sh | /bin/bash
# RUN sudo bash Anaconda3-4.3.0-Linux-x86_64.sh

CMD /bin/bash

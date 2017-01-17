FROM ubuntu:latest
MAINTAINER Ming Yu "ming.k@hotmail.com"

RUN echo "we are initialising the docker script"
RUN apt-get update && apt-get upgrade -y 
RUN apt-get install -y \
	python3 \
	git \ 
	curl
RUN git clone https://github.com/mingsterism/microservice1 /home/s1 
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash - 
RUN apt-get -y install nodejs 
RUN echo "completed ...."

#ENTRYPOINT ["/home"]
EXPOSE 81:3000 9001
CMD ["node", "/home/s1/server1.js"]


FROM ubuntu 
RUN apt update 
RUN apt install -y wget
RUN wget https://fastdl.mongodb.org/tools/mongosync/mongosync-ubuntu2004-x86_64-1.0.0.tgz
RUN tar -zxvf mongosync-*.tgz
RUN cp mongosync-ubuntu2004-x86_64-1.0.0/bin/mongosync /usr/local/bin/
EXPOSE 27182

COPY ./start_mongosync.sh /
RUN chmod +x /start_mongosync.sh
ENTRYPOINT ["/start_mongosync.sh"]
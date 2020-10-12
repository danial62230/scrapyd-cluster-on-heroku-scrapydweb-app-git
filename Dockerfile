FROM python:2.7-slim
ADD . /app
WORKDIR /app

RUN apt-get update && \ 
  apt-get install -y git && \
  pip install -r requirements.txt && \
  apt-get remove -y git
  
EXPOSE 80
RUN chmod 755 ./start.sh
CMD ./start.sh

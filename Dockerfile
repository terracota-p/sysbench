FROM ubuntu

RUN apt-get update && \
  apt-get install -y curl && \
  curl -s https://packagecloud.io/install/repositories/akopytov/sysbench/script.deb.sh | bash && \
  apt -y install sysbench

ENTRYPOINT [ "sysbench"]
CMD [ "cpu", "run" ]
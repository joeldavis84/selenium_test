FROM centos:latest

RUN yum install -y firefox

COPY entrypoint /entrypoint
RUN chmod 0700 /entrypoint
CMD ['/entrypoint']

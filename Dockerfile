FROM centos:7


  ## OS Stuff
RUN yum update -y
RUN yum install -y wget lsof epel-release xorg-x11-server-Xvfb firefox python-urllib3
RUN yum install -y python-pip
COPY machine-id /etc/machine-id

  ## Gecko Driver which connects python's selenium module to a local firefox installation
COPY geckodriver /usr/sbin/geckodriver
RUN chmod 0700 /usr/sbin/geckodriver

  ## Test harness construction
RUN pip install selenium
RUN mkdir -p /opt/selenium_test
COPY sample-test.py /opt/selenium_test/sample-test.py

  ## Set Entrypoint
COPY entrypoint /entrypoint
RUN chmod 0700 /entrypoint
CMD ["/entrypoint"]

  ## Cleanup
RUN yum clean all

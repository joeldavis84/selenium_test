  # CentOS 7 has a weird error where firefox will segfault but other x11 apps work fine. Likely dbus related but I don't care to look into for now.
FROM centos:6

COPY geckodriver /usr/sbin/geckodriver

RUN yum update -y
RUN yum install -y wget lsof epel-release xorg-x11-server-Xvfb firefox python-pip
RUN pip install selenium

RUN mkdir -p /opt/selenium_test
COPY sample-test.py /opt/selenium_test/sample-test.py

COPY entrypoint /entrypoint
RUN chmod 0700 /entrypoint
CMD ["/entrypoint"]

FROM registry.fedoraproject.org/fedora
MAINTAINER Suraj Deshmukh "surajd.service@gmail.com"

RUN echo 'fastestmirror=1' | tee -a /etc/dnf/dnf.conf && \
    dnf install -y --setopt=tsflags=nodocs python-pip && \
    dnf clean all

COPY . /src
RUN cd src && pip install -e .


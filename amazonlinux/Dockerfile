FROM amazonlinux:2017.03.0.20170401

RUN set -x && \
    yum -y update && \
    yum -y install \
        autoconf \
        automake \
        curl \
        gcc \
        git \
        make \
        python \
        rpm-build

RUN set -x && \
    mkdir -p /root/rpmbuild/{SOURCES,SPECS,RPMS}

WORKDIR /root/rpmbuild

CMD ["bash", "-c", "while true; do echo -n .; sleep 1; done"]

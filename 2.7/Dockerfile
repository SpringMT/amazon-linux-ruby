FROM amazonlinux:2.0.20210721.2

ARG ruby_version

RUN yum -y update \
    && yum -y install \
        gcc \
        g++ \
        make \
        openssl-devel \
        zlib-devel \
        readline-devel \
        git \
        mysql-devel \
        bzip2 \
        tar \
    && rm -rf /var/cache/yum/* \
    && yum clean all \
    && git clone https://github.com/rbenv/ruby-build.git

COPY files /root

ENV PATH=/opt/nodejs/bin:/opt/ruby-${ruby_version}/bin:${PATH} \
    MALLOC_ARENA_MAX=2

RUN cd ./ruby-build && \
    ./install.sh && \
    /usr/local/bin/ruby-build ${ruby_version} /opt/ruby-${ruby_version}/

CMD [ "irb" ]

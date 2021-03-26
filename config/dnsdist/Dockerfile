FROM ubuntu:20.04

RUN apt-get update -y
RUN apt-get install curl gnupg -y

RUN echo "deb [arch=amd64] http://repo.powerdns.com/ubuntu focal-dnsdist-15 main" | tee /etc/apt/sources.list.d/pdns.list
RUN curl https://repo.powerdns.com/FD380FBB-pub.asc | apt-key add -
RUN apt-get update -y

RUN apt-get install dnsdist -y

RUN /usr/bin/dnsdist --version

ENTRYPOINT ["/usr/bin/dnsdist"]
CMD ["--help"]
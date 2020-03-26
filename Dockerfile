FROM maven:3.5.0-jdk-8

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - \
  && apt-get update \
  && apt-get install -y nodejs \
  && apt-get install build-essential \
  && npm install -g npm@6.14.1 \
  && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["mvn"]

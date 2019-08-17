FROM maven:3.5.0-jdk-8

RUN curl -sL https://deb.nodesource.com/setup_7.x | bash - \
  && apt-get update \
  && apt-get install -y nodejs \
  && npm install -g npm@3.3.10 \
  && wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb \
  && dpkg -i google-chrome-stable_current_amd64.deb; apt-get -fy install \
  && npm install -g karma-cli \
  && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["mvn"]

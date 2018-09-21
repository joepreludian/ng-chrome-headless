FROM ubuntu

MAINTAINER Jonhnatha Trigueiro <joepreludian@gmail.com>

RUN apt-get update && apt-get install -y wget curl gnupg apt-utils xvfb procps && \
    curl -sL https://deb.nodesource.com/setup_9.x | bash - && \
    echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list && \
    wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
	apt-get update && apt-get install -y nodejs apt-utils google-chrome-stable && npm i -g npm@6 && \
    npm install -g @angular/cli && node -v && npm -v && ng --version && \
    apt-get clean all;

ENV CHROME_BIN /usr/bin/google-chrome

WORKDIR /app

CMD ["ng", "test", "--watch=false", "--browsers=ChromeHeadlessNoSandbox"]

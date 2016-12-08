FROM node:4.6.2
RUN apt-get update
RUN apt-get install -y vim nano rubygems build-essential
RUN npm install -g yarn
RUN gem install sass scss_lint
# RUN yarn global add typescript@2.0.8 tslint@3.9.0 protractor@4.0.11 webdriver-manager@10.2.8 webpack@2.1.0-beta.25 webpack-dev-server@2.1.0-beta.0 karma-cli@1.0.1 karma-chrome-launcher@2.0.0 rimraf@2.5.2 phantomjs-prebuilt@2.1.13 angular-cli@1.0.0-beta.21 --exact

RUN yarn global add typescript@2.0.8 tslint@3.9.0 protractor@4.0.11 webpack@2.1.0-beta.25 webpack-dev-server@2.1.0-beta.0 karma-cli@1.0.1 karma-chrome-launcher@2.0.0 rimraf@2.5.2 phantomjs-prebuilt@2.1.13 angular-cli@1.0.0-beta.21 --exact

RUN npm rebuild node-sass

WORKDIR /workspace

ADD package.json /workspace
ADD yarn.lock /workspace

RUN yarn install

VOLUME ["/workspace/node_modules"]

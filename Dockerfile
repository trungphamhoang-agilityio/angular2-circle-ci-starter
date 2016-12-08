FROM node:6.7.0
RUN apt-get update
RUN apt-get install -y vim nano rubygems build-essential
RUN curl -o- -L https://yarnpkg.com/install.sh | bash
RUN gem install sass scss_lint
# RUN yarn global add typescript@2.0.8 tslint@3.9.0 protractor@4.0.11 webdriver-manager@10.2.8 webpack@2.1.0-beta.25 webpack-dev-server@2.1.0-beta.0 karma-cli@1.0.1 karma-chrome-launcher@2.0.0 rimraf@2.5.2 phantomjs-prebuilt@2.1.13 angular-cli@1.0.0-beta.21 --exact

RUN sudo yarn global add typescript@2.0.8 tslint@3.9.0 webpack@2.1.0-beta.25 webpack-dev-server@2.1.0-beta.0 karma-cli@1.0.1 karma-chrome-launcher@2.0.0 rimraf@2.5.2 phantomjs-prebuilt@2.1.13 angular-cli@1.0.0-beta.21 --exact

RUN npm rebuild node-sass

WORKDIR /workspace

ADD package.json /workspace
ADD yarn.lock /workspace

RUN $HOME/.yarn/bin/yarn install

VOLUME ["/workspace/node_modules"]

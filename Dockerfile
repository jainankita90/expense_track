FROM ruby:2.5.1
ENV OS_USER_NAME=expensetrack
ENV APP_HOME /expensetrack
RUN apt-get update -qq && apt-get install -y build-essential apt-utils expect  nodejs git vim  patch
EXPOSE 11211
RUN git config --global core.editor vim
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME
ADD Gemfile* $APP_HOME/
RUN bundle install
ADD . $APP_HOME
RUN touch ~/.irbrc

EXPOSE 1080
EXPOSE 1025

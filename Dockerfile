FROM ruby:2.5
# Instala nossas dependencias
# RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs imagemagick libmagickwand-dev
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
# Seta nosso path
ENV INSTALL_PATH /petadmin
# Cria nosso diretório
RUN mkdir -p $INSTALL_PATH
# Seta o nosso path como o diretório principal
WORKDIR $INSTALL_PATH
# Copia o nosso Gemfile para dentro do container
COPY Gemfile ./
# Seta o path para as Gems
ENV BUNDLE_PATH /box
# Copia nosso código para dentro do container
COPY . .
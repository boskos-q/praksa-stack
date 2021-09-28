ARG PHP_VERSION=8.0


# PHP APP CONFIG
#____________________________________
FROM sctr/docker-symfony:$PHP_VERSION

ARG LOCAL_VM=true
ARG APP_ENV=dev
ARG DEBUG=0
ARG CONFIG="local"


ENV LOCAL_VM=$LOCAL_VM
ENV APP_ENV=$APP_ENV
ENV CONFIG=$CONFIG
ENV APP_SECRET=$APP_SECRET

ENV REQUIRED_PACKAGES="openssl gmp gmp-dev"
ENV DEVELOPMENT_PACKAGES="git autoconf g++ make openssh-client tar python2 python3 py-pip pcre-dev"

ENV PUBLIC_DIR="/"

WORKDIR /app

ENTRYPOINT ["sh", "/app/docker/entrypoint.sh"]

#Copy Manifest file
COPY ./docker/manifest /
# Install packages
RUN apk add --update --no-cache $REQUIRED_PACKAGES $DEVELOPMENT_PACKAGES

# Copy app
COPY . /app

# Create & chmod var dir
#RUN mkdir -p ./var/cache/$APP_ENV ./var/log && chmod -R 2777 ./var

# Composer
#RUN composer install -n --no-scripts --prefer-dist


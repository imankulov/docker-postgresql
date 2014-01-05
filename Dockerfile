FROM ubuntu:precise
MAINTAINER Roman Imankulov <roman.imankulov@gmail.com>
EXPOSE 22 5432

ADD bootstrap /bootstrap
ADD start /start
ADD authorized_keys /authorized_keys
ADD postgres.asc /postgres.asc
RUN /bootstrap
CMD ["/start"]

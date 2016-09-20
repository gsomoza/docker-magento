FROM php:5.6-apache

MAINTAINER Tomas Gerulaitis <tomas.gerulaitis@meanbee.com>

include(`dockerfile/extensions.m4')
include(`dockerfile/memcached.m4')
include(`dockerfile/xdebug.m4')
include(`dockerfile/php-ini.m4')
include(`dockerfile/apache.m4')

ENV ION_CUBE_PHP_VERSION "5.6"
ENV PHP_EXTENSION_DIR "/usr/local/lib/php/extensions/no-debug-non-zts-20131226"
include(`dockerfile/ioncube-loader.m4')

include(`dockerfile/entrypoint.m4')
include(`dockerfile/cmd-apache.m4')

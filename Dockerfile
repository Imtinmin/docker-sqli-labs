FROM phusion/baseimage

COPY ./sqli-labs /var/www/html/

RUN add-apt-repository -y ppa:ondrej/php && \
  	apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 4F4EA0AAE5267A6C && \
  	apt-get update && \
  	apt-get -y upgrade && \
  	apt-get -y install supervisor wget git apache2 php-xdebug libapache2-mod-php5.6 mysql-server php5.6 php5.6-mysql pwgen php5.6-apc php5.6-mcrypt php5.6-gd php5.6-xml php5.6-mbstring php5.6-gettext zip unzip php5.6-zip curl php5.6-curl && \
  	apt-get -y autoremove && \
  	echo "ServerName localhost" >> /etc/apache2/apache2.conf

EXPOSE 80 3306
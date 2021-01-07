FROM composer:1.10.7

ENV PATH=$COMPOSER_HOME/vendor/bin:$PATH

RUN composer global require \
        mglaman/drupal-check \
        hirak/prestissimo \
        zaporylie/composer-drupal-optimizations

COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT [ "/docker-entrypoint.sh" ]

CMD ["drupal-check"]
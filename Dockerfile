FROM rammstein4o/php-image:7.2

ARG VERSION=0.1.1

LABEL maintainer="rado.salov@gmail.com" \
    version="${VERSION}" \
    description="PHP Tools image"

ENV CI Jenkins

ARG PHP_METRICS_VERSION
ARG PHP_CODEFIXER_VERSION

USER root

RUN apt-get update && apt-get install --allow-unauthenticated -y \
        curl \
        git \
    && curl -L https://github.com/phpmetrics/PhpMetrics/releases/download/v${PHP_METRICS_VERSION}/phpmetrics.phar > /usr/local/bin/phpmetrics \
    && chmod +x /usr/local/bin/phpmetrics \
    && curl -L https://phar.phpunit.de/phpcpd.phar > /usr/local/bin/phpcpd \
    && chmod +x /usr/local/bin/phpcpd \
    && curl -L https://phar.dephpend.com/dephpend.phar > /usr/local/bin/dephpend \
    && chmod +x /usr/local/bin/dephpend \
    && curl -L https://github.com/wapmorgan/PhpCodeFixer/releases/download/${PHP_CODEFIXER_VERSION}/phpcf-${PHP_CODEFIXER_VERSION}.phar > /usr/local/bin/phpcf \
    && chmod +x /usr/local/bin/phpcf \
    && curl -L https://cs.sensiolabs.org/download/php-cs-fixer-v2.phar > /usr/local/bin/php-cs-fixer \
    && chmod +x /usr/local/bin/php-cs-fixer \
    && curl -L https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar > /usr/local/bin/phpcs \
    && chmod +x /usr/local/bin/phpcs \
    && curl -L https://squizlabs.github.io/PHP_CodeSniffer/phpcbf.phar > /usr/local/bin/phpcbf \
    && chmod +x /usr/local/bin/phpcbf \
    && curl -L http://static.phpmd.org/php/latest/phpmd.phar > /usr/local/bin/phpmd \
    && chmod +x /usr/local/bin/phpmd \
    && curl -L https://phar.phpunit.de/phploc.phar > /usr/local/bin/phploc \
    && chmod +x /usr/local/bin/phploc \
    && rm -rf /var/lib/apt/lists/*

VOLUME ["/project"]
WORKDIR /project

USER ${USERNAME}

CMD ["phpmetrics", "--version"]

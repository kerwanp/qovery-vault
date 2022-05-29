FROM vault:1.10.3

RUN apk add bash gettext

COPY get-qovery-env.sh /get-qovery-env.sh
RUN chmod +x /get-qovery-env.sh

COPY config.hcl /vault/config/config.hcl.template

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
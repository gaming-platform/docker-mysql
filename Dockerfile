FROM mysql:8.2

ENV MYSQL_ROOT_PASSWORD=password \
    MYSQL_AUTHENTICATION_POLICY=caching_sha2_password \
    MYSQL_MAX_CONNECTIONS=1024 \
    MYSQL_WAIT_TIMEOUT=28800 \
    MYSQL_INTERACTIVE_TIMEOUT=28800 \
    MYSQL_CHARACTER_SET_SERVER=utf8mb4 \
    MYSQL_COLLATION_SERVER=utf8mb4_unicode_ci \
    MYSQL_INNODB_BUFFER_POOL_SIZE=128M \
    MYSQL_INNODB_BUFFER_POOL_INSTANCES=1 \
    MYSQL_INNODB_FLUSH_LOG_AT_TRX_COMMIT=1 \
    MYSQL_INNODB_FLUSH_LOG_AT_TIMEOUT=1 \
    MYSQL_INNODB_IO_CAPACITY=200

COPY /entrypoint.sh /install-dependencies.sh /00-environment.cnf /
RUN /install-dependencies.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["mysqld"]

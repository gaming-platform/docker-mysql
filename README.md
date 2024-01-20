# docker-mysql

__Attention: This Docker image is specifically designed for the
[gaming platform](https://github.com/gaming-platform)
and shouldn't be used in other projects. Tags may undergo
breaking changes and could be subject to removal.__

This repository provides a `MySQL` image for the
[gaming platform](https://github.com/gaming-platform).

## Usage

__Name__  
`ghcr.io/gaming-platform/docker-mysql:8.2`

__Environment variables__  
Below is a summary of the environment variables available for this image.

| Name                                   | Default               |
|----------------------------------------|-----------------------|
| `MYSQL_ROOT_PASSWORD`                  | password              |
| `MYSQL_AUTHENTICATION_POLICY`          | caching_sha2_password |
| `MYSQL_MAX_CONNECTIONS`                | 1024                  |
| `MYSQL_WAIT_TIMEOUT`                   | 28800                 |
| `MYSQL_INTERACTIVE_TIMEOUT`            | 28800                 |
| `MYSQL_CHARACTER_SET_SERVER`           | utf8mb4               |
| `MYSQL_COLLATION_SERVER`               | utf8mb4_unicode_ci    |
| `MYSQL_INNODB_BUFFER_POOL_SIZE`        | 128M                  |
| `MYSQL_INNODB_BUFFER_POOL_INSTANCES`   | 1                     |
| `MYSQL_INNODB_FLUSH_LOG_AT_TRX_COMMIT` | 1                     |
| `MYSQL_INNODB_FLUSH_LOG_AT_TIMEOUT`    | 1                     |
| `MYSQL_INNODB_IO_CAPACITY`             | 200                   |

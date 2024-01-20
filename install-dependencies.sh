#!/usr/bin/env bash

set -e

microdnf install -y \
    gettext

microdnf clean all
rm -rf /var/cache/yum
rm -rf /var/lib/rpm/__db*

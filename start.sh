#!/bin/sh

SCRIPT_DIR=$(dirname ${0})
SCRIPT_DIR=$(cd ${SCRIPT_DIR} && pwd)

# Setup cron job
stopservice crond
echo "*/5 * * * * root $SCRIPT_DIR/tinystatus > /tmp/mnt/sda1/www/status.html" > /tmp/cron.d/tinystatus_cron
startservice crond
echo "Cron Job Added Successfully TinyStatus is now running in the background."


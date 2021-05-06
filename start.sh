#!/bin/sh

SCRIPT_DIR=$(dirname ${0})
SCRIPT_DIR=$(cd ${SCRIPT_DIR} && pwd)

# Setup cron job
stopservice crond
echo "*/3 2-23 * * * root cd $SCRIPT_DIR; killall iperf3; ./tinystatus > /tmp/www/status.new && mv /tmp/www/status.new /tmp/www/status.html" > /tmp/cron.d/tinystatus_cron
startservice crond
echo "Cron Job Added Successfully TinyStatus is now running in the background."


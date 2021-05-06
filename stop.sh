#!/bin/sh

# Setup cron job
stopservice crond
rm /tmp/cron.d/tinystatus_cron
startservice crond
echo "Cron Job removed Successfully TinyStatus"


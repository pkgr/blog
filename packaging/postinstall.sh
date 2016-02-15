#!/bin/bash
set -e

if blog config:get CONFIGURED ; then
	blog scale web=1
	blog run pumactl -P tmp/pids/server.pid restart
fi

#!/bin/bash
set -e

packager-blog scale web=1
packager-blog run pumactl -P tmp/pids/server.pid restart

if ! packager-blog config:get AUTOUPGRADE ; then
	packager-blog config:set AUTOUPGRADE=true
fi

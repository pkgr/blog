#!/bin/bash
set -e

if pkgr-blog config:get CONFIGURED ; then
	pkgr-blog scale web=1
	pkgr-blog run pumactl restart
fi

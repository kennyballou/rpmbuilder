#!/usr/bin/env bash
# Template Generation Script

TEMPLATE=$1
VARIABLES=$2

env $(cat ${VARIABLES} | xargs) envsubst < ${TEMPLATE}

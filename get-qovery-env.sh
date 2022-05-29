#!/usr/bin/env bash

TYPE=$1
ID=$2
VAR=$3

ID=${ID:0:8}
ID=${ID^^}
ID="Z${ID}"

ENV_NAME="QOVERY_${TYPE}_${ID}_${VAR}"

eval "echo \"\$$ENV_NAME\""

#!/bin/bash

GITHUB_USER=${GITHUB_USER:-mborne}

if [ -z "$1" ];
then
    echo "Usage: bash publish.sh <CHART_NAME>"
    exit 1
fi
CHART_NAME=$1

if [ ! -e "${CHART_NAME}/Chart.yaml" ];
then
    echo "${CHART_NAME}/Chart.yaml not found!"
    exit 1
fi

echo "-- Get version from Chart.yaml ..."
export CHART_VERSION=$(grep 'version:' ${CHART_NAME}/Chart.yaml | tail -n1 | awk '{ print $2 }')
echo "-- Version : ${CHART_VERSION}"

echo "-- helm package $CHART_NAME ..."
helm package $CHART_NAME

helm push ${CHART_NAME}-${CHART_VERSION}.tgz oci://ghcr.io/${GITHUB_USER}/helm-charts


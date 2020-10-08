#!/bin/bash
set -euo pipefail

stackup () {
    docker run --rm -v "`pwd`:/cwd"  -v "$HOME/.aws_${ENV}:/root/.aws" -e AWS_DEFAULT_REGION realestate/stackup:${STACKUP_VERSION} "$@"
}

stackup ${ENV}-ecs-demo-${STACK} delete
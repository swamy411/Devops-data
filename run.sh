#!/bin/bash
WORKSPACE=$( pwd )

# shellcheck source=/dev/null
. "${WORKSPACE}/devops/scripts/.env"


rm -rf artifacts


./devops/scripts/build.sh "${WORKSPACE}"


./devops/scripts/upload.sh "${WORKSPACE}"


./devops/scripts/deploy.sh "${WORKSPACE}"

#!/bin/bash

set -euo pipefail

# Copy git-repo to artefact
tar zcf - -C git-repo | tar zxf - -C artefact

# Bundle install
cd artefact
bundle install --deployment --path=bundle

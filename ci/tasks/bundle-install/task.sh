#!/bin/bash

set -euo pipefail

# Copy git-repo to artefact
cp -rp git-repo/* artefact/

# Bundle install
cd artefact
mkdir .bundle
export BUNDLE_PATH=.bundle
export BUNDLE_APP_CONFIG=.bundle
export BUNDLE_BIN=.bundle/bin

bundle install --deployment
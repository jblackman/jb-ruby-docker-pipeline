#!/bin/bash

set -euo pipefail

# Copy git-repo to artefact
cp -rp git-repo/* artefact/

# Bundle install
cd artefact
bundle install --deployment --path=bundle --binstubs=bundle-bin

#!/bin/sh

set -e
unset BUNDLE_PATH BUNDLE_APP_CONFIG BUNDLE_BIN
cd artefact
bundle exec rspec
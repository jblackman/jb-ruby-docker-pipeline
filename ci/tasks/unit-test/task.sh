#!/bin/sh

set -e

cd artefact
.bundle-bin/bundle exec rspec

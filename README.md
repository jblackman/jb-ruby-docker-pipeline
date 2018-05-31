# jb-ruby-docker-pipeline - Only bundle install once!

OK, so when we deploy ruby apps with Concourse we find ourselves running `bundle install`
multiple times. So, I wanted a pipeline that did this more efficiently. Caches are probably
out, because they are specific to a task, not to a job or pipeline. 

This pipeline goes from git commit to docker deploy. The first step runs the `bundle install`
and the resulting artefact (ruby code plus bundle files) is used for the subsequent steps.
Everything has to be in a single job, as a result, as the artefact can only be shared
between tasks in a job. There was some discussion about the elegance of this, but pragmatism
won out.

# To Install

## Pre-requisites

- A running concourse
- The `fly` CLI
- A docker registry target to deploy over (registry, image name, username, password)

## Installation

1. Fork the repo, so that you can trigger your own changes.
2. Change the pipeline resource targets to point to your repo
3. Deploy `ci/pipeline.yml` to your Concourse install, supplying the appropriate parameters
4. Trigger a build

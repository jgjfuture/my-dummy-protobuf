# Proto Docusaurus Actions

## Overview

When you create PR that includes changes of your Protocol Buffer schema files, then GitHub Actions Workflow will be triggered.

Workflow makes Docusaurus document with [docusaurus-protobuffet](https://protobuffet.com/). When your PR is closed and merged, workflow publishes them into `gh-pages` branch.

The document is deployed into https://jgjfuture.github.io/proto-docusaurus-actions (this is default location of GitHub Pages).

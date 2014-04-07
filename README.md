# ansibleable

## What is it?

A Docker container base image with just enough packages to be targeted by Ansible automation.

## Why?

I want to treat my containers like any other VM.

## How?

Add SSH, some minimal Python packages, and an SSH key.

## How To Use

See the example `Dockerfile` in the root of this repo for an example.

1. Build a Dockerfile that derives from Docker image `angstwad/ansibleable:base`
1. Add a public key to `authorized_keys`
1. Start SSH in the container
1. `docker build .`
1. Ansibleify your containers

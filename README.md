# README

This README would normally document whatever steps are necessary to get the
application up and running.

## Ruby version

See: [.ruby-version](.ruby-version)

## System dependencies

* Helm
* Docker
* npm
* Ruby/Bundler
* Minikube/k3s for local testing

## Configuration

* Override values in helm chart

## Services

* rails-app (Basic rails app)
* (aspiration) teleport-kube-agent
* (aspiration) postgres

## Deployment instructions

* Generate teleport cluster join token
* (aspiration) helm install chart with token/URL

#!/bin/sh

cd backstage-app

yarn install
yarn tsc
yarn build:backend
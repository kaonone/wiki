# Akropolis Polkadot Chain Frontend (active development)

## Introduction

Existing staking mechanism via [https://polkadot.js.org/apps/](https://polkadot.js.org/apps/) has developer-centric UX and is very complicated for ordinary users. To simplify UX we want to build Staking portal for AkropolisOSChain users. 

[Github repo](https://github.com/akropolisio/staking-portal)

[Website](https://staking-portal.akropolis.io/)

## What is Polkadot Staking Portal?

A simple and intuitive interface and Akropolis browser extension will make the staking process accessible to a wide range of users - you only need an account on Polkadot and Polkadot-js for signing transactions. 

What you can do with our staking portal:

- Check your overall balance and amount of all bonded tokens - as well as check each wallet connected

- Check the current validators set, their commission, how much is staked for them, etc. and decide whether you want to nominate for them or not.

- Check and edit stake conditions - add/withdraw funds, edit the list of nominees, stop nominating, redeem funds, etc.

## For frontend (in frontend folder)
### Install all dependencies
- ```npm i``` install frontend and contracts dependencies

### To start locally
- ```npm run dev``` for development environment in watch mode
- ```npm run prod``` for production environment in watch mode

### To build locally (see build folder)
- ```npm run build:dev``` for development environment without watch mode
- ```npm run build:prod``` for production environment without watch mode

### To start bundle analyzer
- ```npm run analyze:dev``` for development environment
- ```npm run analyze:prod``` for production environment

### To start test
- ```npm test``` or ```npm t``` for start test, before that you need start network (```npm run ganache-cli```)

## We use
- [x] polkadot.js/api for interacting with Akropolis Chain
- [x] Typescript
- [x] React
- [x] Redux
- [x] Redux-saga for side-effects
- [x] Material-UI

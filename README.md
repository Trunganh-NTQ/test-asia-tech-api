# ASIA TECH API

## _ASIA TECH API_

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)

ASIA TECH for web client

- ✨Magic ✨

## Tech

Iot uses a number of open source projects to work properly:

- [Ruby on Rails](https://rubyonrails.org) - Ruby 3.0.2!
- [PostgreSQL](https://www.postgresql.org/) - PostgreSQL

## Installation

ASIA TECH requires [Ruby](https://rubyonrails.org) v3.0.2 to run.

Please install bundle gem then create PostgreSQL user before start the server.

```sh
cd test-asia-tech-api
bundle install
```

Migrate database

```sh
bundle exec rake db:create
bundle exec rake db:migrate
```

Seed database

```sh
bundle exec rake db:seed
```

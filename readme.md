# TeachReach
TeachReach was a final year project at University, which I intend to re-write
and release. The puprose of which was to provide an API and educational resource
tool. An Android application is planned to leverage the content created using
TeachReach

## Installation
Designed currently for Heroku

## Development

### Setup
Also make sure to add the following to .git/config

	[merge "ours"]
      name = Keep own VERSION-FILE then update
      driver = ./version.sh

Installing commit hooks

    ln -s ../../pre-commit.sh .git/hooks/pre-commit

### Useful commands
Reset the database

    rake dev:reset
Annotate models

    bundle exec annotate position --before

### Remember
Set .git/config up with heroku.account

    [remote "heroku"]
      url = git@heroku.personal:repo.git
      fetch = +refs/heads/*:refs/remotes/heroku/*
    [heroku]
      account = personal

## Heroku

    heroku config:set SITE_URL="http://yourheroku.herokuapp.com"

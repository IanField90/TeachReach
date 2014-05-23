TeachReach Server


### Remember
Set .git/config up with heroku.account

    [remote "heroku"]
      url = git@heroku.personal:repo.git
      fetch = +refs/heads/*:refs/remotes/heroku/*
    [heroku]
      account = personal

# Heroku

    heroku config:set SITE_URL="http://yourheroku.herokuapp.com"

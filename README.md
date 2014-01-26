== README

# Dependencies
#### Install RVM (https://rvm.io/rvm/install)
* `curl -sSL https://get.rvm.io | bash -s stable --ruby`
* `source ~/.rvm/scripts/rvm`
* Verify installation `type rvm | head -n 1`, should return `rvm is a function`

#### Install Postgres
* `brew install postgres`
* Create a database for the app `createdb wss_development`

Setup Ruby on Rails
===================
The following steps will help you install *Ruby 2.1.3* and Rails *4.1.6*.
These steps are specifically for *Linux*

Installing Ruby
--------------------
The first step is to install some dependencies for Ruby.
```
sudo apt-get update

sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties
```

Now you will have to use rbenv to install ruby.
Installing with rbenv is a simple two step process. First you install rbenv, and then ruby-build:

```
git clone git://github.com/sstephenson/rbenv.git .rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL

git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL

rbenv install 2.1.3
rbenv global 2.1.3
ruby -v
```
The last step is to tell Rubygems not to install the documentation for each package locally

```
echo "gem: --no-ri --no-rdoc" > ~/.gemrc
```

Installing Rails
-----------------

Since Rails ships with so many dependencies these days, we're going to need to install a Javascript runtime like NodeJS. This lets you use Coffeescript and the Asset Pipeline in Rails which combines and minifies your javascript to provide a faster production environment.

To install NodeJS, we're going to add it using a PPA repository:
```
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install nodejs
```
Now install rails
```
gem install rails
```
Run the following command to make the rails executable available:
```
rbenv rehash
```
Now that you've installed Rails, you can run the rails -v command to make sure you have everything installed correctly:
```
rails -v
# Rails 4.1.6
```
Setting up MYSQL
----------------
Run following command to install mysql
```
sudo apt-get install mysql-server mysql-client libmysqlclient-dev
```
Setting Up PostgreSQL
---------------------
```
sudo sh -c "echo 'deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main' > /etc/apt/sources.list.d/pgdg.list"

wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | sudo apt-key add -

sudo apt-get update
sudo apt-get install postgresql-common
sudo apt-get install postgresql-9.3 libpq-dev
```
The postgres installation doesn't setup a user for you, so need to create a user with permission to create databases
```
sudo -u postgres createuser [username] -
```
Create Rails App
----------------
```
rails new myapp
```

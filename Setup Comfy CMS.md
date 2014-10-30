Setup Mexican Sofa CMS
======================

You need to install Ruby 2.1.3 and Rails 4.1.6

Setup Ruby on Rails
--------------------
The first step is to install some dependencies for Ruby.

<code>sudo apt-get update</code>

<code>
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties
</code>

Now you will have to use rbenv to install ruby.
Installing with rbenv is a simple two step process. First you install rbenv, and then ruby-build:
>
>git clone git://github.com/sstephenson/rbenv.git .rbenv

>echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc

>echo 'eval "$(rbenv init -)"' >> ~/.bashrc

>exec $SHELL

>git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

>echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc

>exec $SHELL

>rbenv install 2.1.3

>rbenv global 2.1.3

>ruby -v

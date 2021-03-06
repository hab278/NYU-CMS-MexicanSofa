Setup Mexican Sofa CMS
======================

You need to install Ruby 2.1.3 and Rails 4.1.6
You can follow the steps [here](https://github.com/shaleenjain1990/NYU-CMS-MexicanSofa/blob/master/Setup%20Ruby%20on%20Rails.md)

Installing Mexican Comfy CMS
----------------------------
Add gem to your Gemfile
```
gem 'comfortable_mexican_sofa', '~> 1.12.0'
```
Then from the Rails project's root run:
```
bundle install
rails generate comfy:cms
rake db:migrate
```
After finishing installation run server by following command
```
rails server -p 3000
```

You should be able to navigate to http://localhost:3000/admin

Default username and password is 'username' and 'password'. You probably want to change it right away. Admin credentials (among other things) can be found and changed in the cms initializer: /config/initializers/comfortable_mexican_sofa.rb

Before creating pages and populating them with content we need to create a Site. Site defines a hostname, content path and its language.

After creating a Site, you need to make a Layout. Layout is the template of your pages; it defines some reusable content (like header and footer, for example) and places where the content goes.

Adding NYULibraries-assets gem
------------------------------

Add the following lines in your Gemfile
```
group :assets do
  gem 'compass', "~> 1.0.1"
  gem 'nyulibraries-assets', github: 'NYULibraries/nyulibraries-assets'
end
```
If you come across sass-rails dependency issue when you do <code>bundle install</code> then change the Gemfile.
```
gem 'sass-rails', github: 'rails/sass-rails'
```
If you come across assets precompile error when opening http://localhost:3000/admin/ then in config/environments/development.rb make the following changes-:
```
config.assets.raise_runtime_errors = false
```

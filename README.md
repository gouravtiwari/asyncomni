# Asyncomni
[![Build Status](https://travis-ci.org/gouravtiwari/asyncomni.png)](https://travis-ci.org/gouravtiwari/asyncomni)[![Coverage Status](https://coveralls.io/repos/gouravtiwari/asyncomni/badge.png?branch=master)](https://coveralls.io/r/gouravtiwari/asyncomni?branch=master)

Omniture integration(https://sitecatalyst.omniture.com) could be painful in rails application. This project uses simple concept of using iframe to make asynchronus calls (not ajax!) to omniture to send usage tracking information.

##Pre-requisites:

For Rails 3.2+ and now supports Rails 4 Applications.

##Installling

Install the gem by

    gem install asyncomni

OR

Include the gem in your Gemfile and run bundle install.

    gem 'asyncomni'

Run the generator

    rails g asyncomni:install

This will create some file for you.

    create  config/omniture.yml
    route   resources :omniture, :only => [:index]
    create  app/views/omniture/_omniture.html.erb
    append  app/views/layouts/application.html.erb

Also require `asyncomni.js` is your `application.js`

    = require 'asyncomni'

By default Omniture is enabled in all Environments, if you wish to turn it off in `development` or other staging environments you can disable it in `Omniture.yml`

	development:
  	account: 'devdemoapp'
  	enabled: false
  	<<: *defaults
  	
That's it! :pray:

**Note**

This gem is currenly in early beta version but provides support of tracking user id and page names for user visits.

This project uses MIT-LICENSE.

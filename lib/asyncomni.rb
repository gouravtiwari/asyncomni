module Asyncomni
  class Engine < Rails::Engine

  	initializer "precompile", :group => :all do |app|
       app.config.assets.precompile << Proc.new{|path| path == "s_code.js" }
    end

    config.generators do |g|
      g.test_framework :rspec, :view_specs => false
    end
  end
end
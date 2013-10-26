require 'rails'

module Asyncomni
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      source_root File.expand_path('../../../../../config', __FILE__)

      desc "This generator copies omniture.yml to the application"
      def copy_omniture_config
        copy_file "omniture.yml", "config/omniture.yml"
      end

      desc "This generator adds routes to routes.rb"
      def add_routes
        route "resources :omniture, :only => [:index]"
      end


      desc "This Generator is to create omniture partial"
      def create_omniture_partial
        create_file "app/views/omniture/_omniture.html.erb", <<-FILE
<%= tag(:iframe, id: 'omnitureFrame', name: 'omnitureFrame', width: '0', height: '0', style: 'visibility:hidden', data: {'page-name' =>  page_name, 'omniture-url' =>  omniture_url }) %>
        FILE
      end

      desc "Append the render partial in the application layout"
      def append_omniture_partial_to_application_layout
        if File.exists?('app/views/layouts/application.html.erb')
          append_to_file 'app/views/layouts/application.html.erb' do
            "<%= render 'omniture/omniture' %>"
          end
        else File.exists?('app/views/layouts/application.html.haml')
          append_to_file 'app/views/layouts/application.html.haml' do
            "= render 'omniture/omniture'"
          end
        end
              end
      end
    end
  end
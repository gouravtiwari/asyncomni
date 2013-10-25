require 'rails'

module Asyncomni
	module Generators
		class InstallGenerator < ::Rails::Generators::Base
			desc "This generator copies omniture.yml to the application"
			source_root File.expand_path('../../../../../config', __FILE__)

			def copy_omniture_config
				copy_file "omniture.yml", "config/omniture.yml"
			end


			desc "This Generator is to create omniture partial"
			def create_omniture_partial
				create_file "app/views/layouts/_omniture.html.erb", <<-FILE
<%= tag(:iframe, id: 'omnitureFrame', name: 'omnitureFrame', width: '0', height: '0', style: 'visibility:hidden', data: {'page-name' =>  page_name, 'omniture-url' =>  omniture_url }) %>
				FILE
			end

			desc "Append the render partial in the application layout"
			def append_omniture_partial_to_application_layout
				if File.exists?('app/views/layouts/application.html.erb')
					append_to_file 'app/views/layouts/application.html.erb' do
						"<%= render 'layouts/omniture' %>"
					end
				else File.exists?('app/views/layouts/application.html.haml')
					append_to_file 'app/views/layouts/application.html.haml' do
						"= render 'layouts/omniture'"
					end
				end
              end
			end
		end
	end
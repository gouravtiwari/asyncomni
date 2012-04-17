require 'rails'

module Asyncomni
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      desc "This generator copies omniture.yml to the application"
      source_root File.expand_path('../../../../../config', __FILE__)

      def copy_omniture_config
        copy_file "omniture.yml", "config/omniture.yml"
      end
    end
  end
end
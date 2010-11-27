module Regulate
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      desc "Copies files to your application that regulate needs."

      def copy_css
        template "regulate.css", "public/stylesheets/regulate.css"
      end

      def copy_js
        template "regulate.js", "public/stylesheets/regulate.js"
      end
    end
  end
end
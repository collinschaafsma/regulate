require "rails/generators/test_case"
require File.join(File.dirname(__FILE__), "../../../lib/generators/regulate/install_generator")

class InstallGeneratorTest < Rails::Generators::TestCase
  tests Regulate::Generators::InstallGenerator
  destination File.expand_path("../tmp", File.dirname(__FILE__))
  setup :prepare_destination

  test "Assert all files are properly created" do
    run_generator
    assert_file "public/stylesheets/regulate.css" 
    assert_file "public/javascripts/regulate.js"
  end

end
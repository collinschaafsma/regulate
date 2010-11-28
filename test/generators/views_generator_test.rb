require "rubygems"
require "rails/generators/test_case"
require File.join(File.dirname(__FILE__), "../../../lib/generators/regulate/views_generator")

class InstallGeneratorTest < Rails::Generators::TestCase
  tests Regulate::Generators::ViewsGenerator
  destination File.expand_path("../tmp", File.dirname(__FILE__))
  setup :prepare_destination
  
  test "Assert all views are properly copied as erb" do
    run_generator
    assert_file "app/views/pages/index.html.erb" 
    assert_file "app/views/pages/show.html.erb"
  end
end
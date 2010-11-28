require 'test_helper'

class PagesTest < ActionController::IntegrationTest
  include Capybara
  test 'home should be accessible' do
    visit '/regulate/pages'
    assert page.has_content?('Pages')
  end
end
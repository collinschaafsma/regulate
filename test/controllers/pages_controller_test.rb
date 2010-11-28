require 'test_helper'

class CmsTest < ActionController::IntegrationTest
  test 'index should be accessible' do
    get '/regulate/pages/index'
    assert_response :success
  end
  
  test 'show should be accessible' do
    get '/regulate/pages/show'
    assert_response :success
  end
end
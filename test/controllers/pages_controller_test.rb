require 'test_helper'

class CmsTest < ActionController::IntegrationTest
  test 'index should be accessible' do
    get '/pages/index'
    assert_response :success
  end
  
  test 'show should be accessible' do
    get '/pages/show'
    assert_response :success
  end
end
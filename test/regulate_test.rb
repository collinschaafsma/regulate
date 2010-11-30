require 'test_helper'

class RegulateTest < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, Regulate
  end
  
  test 'setup block yields self' do
    Regulate.setup do |config|
      assert_equal Regulate, config
    end
  end
  
  test 'editor role defaults to :editor' do
    assert_equal :editor, Regulate.editor_role
  end
  
  test 'admin role defaults to :admin' do
    assert_equal :admin, Regulate.admin_role
  end
  
  test 'editor role set' do
    Regulate.setup do |config|
      config.editor_role = :writer
    end
    assert_equal :writer, Regulate.editor_role
  end
  
  test 'admin role set' do
    Regulate.setup do |config|
      config.admin_role = :manager
    end
    assert_equal :manager, Regulate.admin_role
  end
  
  test 'repo set from yaml file' do
    assert_equal "db/repos/test.git", Regulate::Configuration.instance.repo
  end
end

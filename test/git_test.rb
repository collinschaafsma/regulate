require 'test_helper'

class GitTest < ActiveSupport::TestCase
  test "create page" do
    git = Regulate::Git.new
    sha = git.create_page(:name           => "Test Page", 
                          :content        => "Test Content", 
                          :format         => :markdown, 
                          :commit_message => "Test create.", 
                          :author_name    => "Collin Schaafsma", 
                          :author_email   => "collin@quickleft.com")
    puts sha
  end
end

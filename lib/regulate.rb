module Regulate
  # Role that allows a user to edit pages, default is :editor
  mattr_reader :editor_role
  @@editor_role = :editor
  
  # Role that allows a user to manage pages and define what parts are editable, default is :admin
  mattr_reader :admin_role
  @@admin_role = :admin
  
  def self.setup
    yield self
  end
end

require 'regulate/engine'
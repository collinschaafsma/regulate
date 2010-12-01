require 'regulate/configuration'
require 'regulate/git'
require 'regulate/railtie' if defined?(Rails)
require 'regulate/engine' if defined?(Rails)

module Regulate
  # Role that allows a user to edit pages, default is :editor
  mattr_accessor :editor_role
  self.editor_role = :editor
  
  # Role that allows a user to manage pages and define what parts are editable, default is :admin
  mattr_accessor :admin_role
  self.admin_role = :admin

  def self.setup
    yield self
  end
end
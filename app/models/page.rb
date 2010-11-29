require 'grit'

class Page
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming
  
  attr_accessor :name, :content, :page, :format, :id, :message, :author_name, :author_email
  
  validates_presence_of :name, :content, :format
  
end
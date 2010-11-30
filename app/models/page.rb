require 'grit'

module Regulate
  class Page
    include ActiveModel::Validations
    include ActiveModel::Conversion
    extend ActiveModel::Naming
  
    attr_accessor :name, :content, :format, :id, :commit_message, :author_name, :author_email
  
    validates_presence_of :name, :content, :format

  
    def initialize(attributes = {})
      assign_attributes(attributes)
    end
  
    def persisted?
      !id.blank?
    end
  
    def id
      name.respond_to?(:gsub) ? name.gsub(%r{[ /<>]}, '-') : ''
    end
  
    def save

    end
  
    def update_attributes(attributes = {})
      assign_attributes(attributes)
    end
  
    def destroy

    end

    def self.find(name)

    end
  
    def self.find_by_version_id(name, version_id)

    end
  
    def self.all(*args)

    end
  
  private

    def assign_attributes(attributes = {})
      attributes.each do |name, value|
        send("#{name}=", value)
      end
    end
  end
end
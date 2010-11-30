require 'singleton'

module Regulate
  class Configuration
    include Singleton
    
    attr_accessor :app_root
    
    attr_reader :repo, :config
    
    def initialize(app_root = Dir.pwd)
      self.load
    end
    
    def load
      self.app_root = Rails.root if defined?(Rails)
      self.app_root ||= Dir.pwd
      parse_config
    end

  private
    def parse_config
      @config ||= YAML.load_file(File.join(self.app_root, "config", "regulate.yml"))[Rails.env]
      @repo   ||= @config['repo']
    end
  end
end
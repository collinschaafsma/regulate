module Regulate
  class Railtie < Rails::Railtie
    initializer "regulate.set_up_configurations" do |app|
      # Rails has setup the app now, so now we can call Rails.root and stuff
      Regulate::Configuration.instance.load
    end
  end
end
require 'yaml'

module M1Book
  class Config
    attr_reader :settings

    def initialize
      config = YAML.load_file('./config.yml') # the config from the book project folder
      defaults = YAML.load_file($ROOT_PATH + '/defaults.yml') # the config defined in m1book
      @settings = defaults.merge(config)
    end
  end
end

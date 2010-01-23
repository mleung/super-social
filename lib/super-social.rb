require 'rest_client'
require 'json'

base_dir = File.expand_path(File.dirname(__FILE__))
require File.join(base_dir, "super-social", "web.rb")
Dir.glob(File.join(base_dir, "super-social", '**', "*.rb")).each { |f| require f }

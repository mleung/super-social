require 'rest_client'
require 'json'

base_dir = File.expand_path(File.dirname(__FILE__))
Dir.glob(File.join(base_dir, "twitter", "*.rb")).each { |f| require f }

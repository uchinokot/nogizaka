module Nogizaka
  require 'active_hash'

  # this is record of "config/singles.yml"
  class Single < ActiveYaml::Base
    set_root_path ("#{File.dirname(__FILE__)}/../../config")
    set_filename 'singles'
  end
end
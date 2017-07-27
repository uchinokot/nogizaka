module Nogizaka
  require 'active_hash'

  # this is record of "config/members.yml"
  class Member < ActiveYaml::Base
    set_root_path ("#{File.dirname(__FILE__)}/../../config")
    set_filename 'members'
  end
end

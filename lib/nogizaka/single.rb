module Nogizaka
  require 'active_hash'

  # this is record of "config/singles.yml"
  class Single < ActiveYaml::Base
    set_root_path ("#{File.dirname(__FILE__)}/../../config")
    set_filename 'singles'

    def select_members
      members.values.flatten.map { |member| Nogizaka::Member.find(member).name }
    end

    def formation
      members.each_with_index do |values, i|
        row_members = values[1].map { |member| Nogizaka::Member.find(member).name }
        puts "#{i+1}列目 | #{row_members.join(" | ")}"
      end
    end

    class << self
      def titles
        all.map(&:title)
      end
    end
  end
end

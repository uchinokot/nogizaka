require "active_hash"
require "nogizaka/version"
require "nogizaka/member"

module Nogizaka
  def self.method_missing(name, *args, &block)
    Nogizaka.instance.send(name, *args, &block)
  end
end

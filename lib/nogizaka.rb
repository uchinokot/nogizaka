require "nogizaka/version"

module Nogizaka
  def self.method_missing(name, *args, &block)
    Nogizaka::Core.instance.send(name, *args, &block)
  end
end

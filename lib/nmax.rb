require "nmax/version"

module Nmax
  def self.run(n = 1)
    n = 1 if n.eql?(0) || n.nil?
    p STDIN.read.scan(/\d+/).map!(&:to_i).sort.last(n)
  end
end

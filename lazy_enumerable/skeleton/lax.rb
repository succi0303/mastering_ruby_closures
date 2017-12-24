module Enumerable
  def lax
    Lax.new(self)
  end
end

class Lax < Enumerator
  def initialize(receiver)
    super() do |yielder|
      receiver.each do |val|
        yielder << val
      end
    end
  end

  def map(&block)
    Lax.new(self)
  end
end

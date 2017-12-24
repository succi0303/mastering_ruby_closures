module Enumerable
  def lax
    Lax.new(self)
  end
end

class Lax < Enumerator
  def initialize(receiver)
    super() do |yielder|
      receiver.each do |val|
        if block_given?
          yield(yielder, val)
        else
          yielder << val
        end
      end
    end
  end

  def map(&block)
    Lax.new(self) do |yielder, val|
      yielder << block.call(val)
    end
  end
end

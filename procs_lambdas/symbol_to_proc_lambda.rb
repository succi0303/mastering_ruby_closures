class Symbol
  def to_proc
    lambda {|obj| obj.send(:self, *args)}
  end
end

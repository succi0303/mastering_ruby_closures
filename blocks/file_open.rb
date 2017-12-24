class File
  def self.open(name, mode)
    file = new(name, mode)
    return file unless block_given?
    yield(file)
  ensure
    file.close
  end
end

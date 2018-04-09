class InvalidLineError < StandardError
end

def line_from_file(filename, substring)
  fh = File.open(filename)
  line = fh.gets
  raise InvalidLineError unless line.include?(substring)
  return line

  rescue InvalidLineError
    puts "Invalid Line!"
    raise
  ensure
    fh.close
end

line_from_file("/tmp/tes.conf", "test2")

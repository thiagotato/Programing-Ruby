def open_user_file
  print "File to open: "
  filename = gets.chomp
  fh = File.open(filename)
  yield fh
  fh.close
  rescue
    puts "Couldn't open your file!"
end

def open_user_file_2
  print "File to open: "
  filename = gets.chomp
  begin
    fh = File.open(filename)
  rescue
    puts "Couldn't open your file!"
    return
  end
  yield fh
  fh.close
end

open_user_file
open_user_file_2

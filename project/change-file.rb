
file = '/tmp/tes.conf'
if file
  puts "ok #{file}"
else
  puts "não"
end
text = File.read(file)
change_contens = text.gsub(/\|\| 9200/, '')

puts change_contens

File.open(file, 'w') {|fwriter| fwriter.puts change_contens }

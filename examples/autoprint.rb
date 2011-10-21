require "rubygems"
$:.push File.join(File.dirname(__FILE__), "../lib")
require "prawn-print"

FILENAME = "/tmp/prawn_autoprint.pdf"

pdf = Prawn::Document.new
pdf.text "Help! I am trapped in a PDF factory!"
pdf.autoprint
pdf.render_file FILENAME

`open -a "Adobe Reader" #{FILENAME}` if system("which open")
puts "Done."

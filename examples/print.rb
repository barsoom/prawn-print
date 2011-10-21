require "rubygems"
$:.push File.join(File.dirname(__FILE__), "../lib")
require "prawn-print"

FILENAME = "/tmp/prawn_print.pdf"

pdf = Prawn::Document.new
pdf.text "I installed Adobe Reader and all I got was this lousy printout."
pdf.print
pdf.render_file FILENAME

`open -a "Adobe Reader" #{FILENAME}` if system("which open")
puts "Done."

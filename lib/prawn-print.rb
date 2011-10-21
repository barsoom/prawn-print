require "prawn"
require "prawn-print/version"
require "prawn-print/js"

module Prawn
  module Print
    include JS

    def print
      print_with_auto_to_printer(false, nil)
    end

    def autoprint(printer=nil)
      print_with_auto_to_printer(true, printer)
    end

    private

    def print_with_auto_to_printer(auto, printer)
      add_docopen_js("print", x = <<-JS)

        var pp = this.getPrintParams();
        #{interactive_js(auto)}
        #{select_printer_js(printer)}
        this.print(pp);

      JS
    end

    def interactive_js(auto)
      if auto
        <<-JS
          pp.interactive = pp.constants.interactionLevel.silent;
        JS
      end
    end

    def select_printer_js(printer)
      if printer
        escaped_printer = printer.gsub('"') { "\\#$0" }
        <<-JS
          var names = app.printerNames;
          var regex = new RegExp("#{escaped_printer}", 'i');
          for (var i = 0; i < names.length; i++) {
            if (names[i].match(regex)) {
              pp.printerName = names[i];
              break;
            }
          }
        JS
      else
        <<-JS
          pp.printerName = "";  // Default.
        JS
      end
    end

  end
end

Prawn::Document.send(:include, Prawn::Print)

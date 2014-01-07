# From https://github.com/jlee42/prawn-js/blob/master/lib/prawn/js.rb
# by James Healy, Karl Smith and Jeffrey Lee under the MIT license.

module Prawn
  module Print
    module JS

      # The maximum number of children to fit into a single node in the JavaScript tree.
      NAME_TREE_CHILDREN_LIMIT = 20 #:nodoc:

      # add a Javascript fragment that will execute when the document is opened.
      #
      # There can only be as many fragments as required. Calling this function
      # multiple times will append the new fragment to the list.
      #
      def add_docopen_js(name, script)
        obj = ref!(:S => :JavaScript, :JS => script)
        javascript.data.add(name, obj)
      end

      private

      # create or access the Javascript Name Tree in the document names dict.
      # See section 3.6.3 and table 3.28 in the PDF spec.
      #
      def javascript
        if defined? Prawn::NameTree
          names.data[:JavaScript] ||= ref!(Prawn::NameTree::Node.new(self, NAME_TREE_CHILDREN_LIMIT))
        elsif defined? Prawn::Core
          names.data[:JavaScript] ||= ref!(Prawn::Core::NameTree::Node.new(self, NAME_TREE_CHILDREN_LIMIT))
        elsif defined? PDF::Core::NameTree
          names.data[:JavaScript] ||= ref!(PDF::Core::NameTree::Node.new(self, NAME_TREE_CHILDREN_LIMIT))
        else
          raise "Can't find Prawn's NameTree!"
        end
      end

    end
  end
end

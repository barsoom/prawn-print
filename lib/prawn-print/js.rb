# From https://github.com/threadhead/prawn-js/
# by James Healy and Karl Smith under the MIT license.

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
        names.data[:JavaScript] ||= ref!(Prawn::Core::NameTree::Node.new(self, NAME_TREE_CHILDREN_LIMIT))
      end

    end
  end
end

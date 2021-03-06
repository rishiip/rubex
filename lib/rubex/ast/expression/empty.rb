module Rubex
  module AST
    module Expression
      # Internal node that denotes empty expression for a statement for example
      #   the `return` for a C function with return type `void`.
      class Empty < Base
        def analyse_types(_local_scope)
          @type = DataType::Void.new
        end
      end
    end
  end
end

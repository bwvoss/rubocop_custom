# encoding: utf-8

module RuboCop
  module Cop
    module Custom
      class Test < Cop
        MESSAGE = 'Avoid stubbing using `%{method}`'.freeze

        def on_def(node)
          method_name, _ = *node

          if method_name == :test
            add_offense(node, :expression,
                        format(
                          'Do not use test as a method name',
                          node.loc.expression.source
                        )
                       )
          end
        end
      end
    end
  end
end

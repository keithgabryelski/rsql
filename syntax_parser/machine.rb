module SyntaxParser
  class Machine
    def initialize
    end

    BASIC_SYNTAX = {
      :create => {
        :table => CreateTableParser,
        :schema => CreateSchemaParser,
        :database => CreateDatabaseParser,
      },
      :select => SelectParser,
      :insert => InsertParser,
      :update => UpdateParser,
      :delete => DeleteParser
    }

    def parse_statement(statement_components)
      specific_parser = basic_parser(BASIC_SYNTAX, statement_components)
      puts "Our parser: #{specific_parser.inspect}"
    rescue BadSyntaxError => bse
      puts bse.inspect
    end

    def basic_parser(syntax_tree, components)
      token = components.shift
      if token.is_a?(LexicalParser::ReservedKeywordToken)
        token_sym = token.value.downcase.to_sym
        parser_state = syntax_tree[token_sym]
        if parser_state.is_a?(Hash)
          return basic_parser(parser_state, components)
        elsif parser_state.ancestors.include?(SyntaxParser::Parser)
          return parser_state.new(components)
        else
          raise BadSyntaxError.new("bad token (syntax tree bogus): token=#{token_sym.inspect}, syntax_tree=#{syntax_tree.inspect}, parser_state=#{parser_state.inspect}")
        end
      end
      raise BadSyntaxError.new("bad token: #{token.inspect}")
    end
  end
end

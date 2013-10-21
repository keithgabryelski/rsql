class SyntaxParserMachine
  class BadSyntaxError < StandardError; end

  def initialize
  end

  BASIC_SYNTAX = {
    :create => {
      :table => CreateTableSyntaxParser,
      :schema => CreateSchemaSyntaxParser,
      :database => CreateDatabaseSyntaxParser,
    },
    :select => SelectSyntaxParser,
    :insert => InsertSyntaxParser,
    :update => UpdateSyntaxParser,
    :delete => DeleteSyntaxParser
  }

  def parse_statement(statement_components)
    specific_parser = basic_parser(BASIC_SYNTAX, statement_components)
  rescue BadSyntaxError => bse
    puts bse.inspect
  end

  def basic_parser(syntax_tree, components)
    token = components.shift
    if token.is_a?(LexicalParser::ReservedKeywordToken)
      token_sym = token.value.downcase.to_sym
      parser_state = syntax_tree[token_sym]
      if parser_state.is_a?(Symbol)
        return basic_parser(syntax_tree, components)
      elsif parser_state.is_a?(SyntaxParser)
        return parser_state.new(components)
      else
        raise BadSyntaxError.new("bad token (syntax tree bogus): #{parser_state.inspect}")
      end
    end
    raise BadSyntaxError.new("bad token: #{token.inspect}")
  end

end

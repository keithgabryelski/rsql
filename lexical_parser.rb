module LexicalParser
  class EndOfFile < StandardError
    def initialize(token)
      super("end of sql infile")
      @token = token
    end
  end
end

require './lexical_parser/parser_state'

require './lexical_parser/token'
require './lexical_parser/string_token'
require './lexical_parser/non_reserved_keyword_token'
require './lexical_parser/number_token'
require './lexical_parser/operator_token'
require './lexical_parser/reserved_keyword_token'
require './lexical_parser/end_statement_token'
require './lexical_parser/escaped_string_token'
require './lexical_parser/identifier_token'

require './lexical_parser/token_parser'
require './lexical_parser/word_token_parser'
require './lexical_parser/number_token_parser'
require './lexical_parser/looking_stage2_token_parser'
require './lexical_parser/looking_stage1_token_parser'
require './lexical_parser/single_quoted_escaped_string_token_parser'
require './lexical_parser/single_quoted_string_token_parser'
require './lexical_parser/bracketed_comment_token_parser'

require './lexical_parser/machine'

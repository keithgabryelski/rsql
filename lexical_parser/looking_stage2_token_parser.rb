module LexicalParser
  class LookingStage2TokenParser < TokenParser
    def parse_next_token
      c = read_character
      if c.match(/\s/)
        return start_looking
      elsif c == "'"
        if @token == 'E'
          return parser_state(:token_parser => SingleQuotedEscapedStringTokenParser)
        end
        return start_looking(c)
      elsif c.match(/\d/)
        if @token == '+' || @token == '-'
          return parser_state(:token_parser => NumberTokenParser, :pass_along => @token + @c)
        end
        return start_looking(c)
      elsif c == '-' && @token == '-'
        # line comment
        @infile.readline
        return parser_state(:token_parser => LookingStage1TokenParser)
      elsif c == '*' && @token == '/'
        # bracketed comment
        return parser_state(:token_parser => BracketedCommentTokenParser)
      elsif OperatorToken::KEYWORDS.include?(@token + c)
        # all two-token operators here
        return parser_state(:token => OperatorToken.new(@token + c), :token_parser => LookingStage1TokenParser)
      else
        return start_looking(c)
      end
    end
  end
end

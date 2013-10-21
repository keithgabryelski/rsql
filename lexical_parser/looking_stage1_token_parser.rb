module LexicalParser
  class LookingStage1TokenParser < TokenParser
    def parse_next_token
      loop do
        c = read_character
        if c.match(/\s/)
          next
        elsif c == "'"
          return parser_state(:token_parser => SingleQuotedStringTokenParser)
        elsif c == ';'
          # statement end -- but we are going to look for more
          return parser_state(:token => EndStatementToken.new, :token_parser => LookingStage1TokenParser)
        elsif c.match(/[^a-z0-9$]/i)
          # all multi-character operators here
          return parser_state(:token_parser => LookingStage2TokenParser, :pass_along => c)
        elsif c.match(/[-\d+]/)
          return parser_state(:token_parser => NumberTokenParser, :pass_along => c)
        elsif c.match(/[_a-z$]/i)
          return parser_state(:token_parser => WordTokenParser, :pass_along => c)
        elsif ["<", ">", "&", "|", "=", "(", ")", "?", "!", "*", "%", "~", "[", "]", ":", ","].include?(c)
          return parser_state(:token => OperatorToken.new(c), :token_parser => LookingStage1TokenParser)
        else
          raise "bad character #{c.inspect}"
        end
      end
    end
  end
end

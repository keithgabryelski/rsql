module LexicalParser
  class SingleQuotedStringTokenParser < TokenParser
    def parse_next_token
      loop do
        c = read_character
        if c == "'"
          # XXX must check for escapes
          return parser_state(:token => StringToken.new(@token), :token_parser => LookingStage1TokenParser)
        end
        @token << c
      end
    end
  end
end

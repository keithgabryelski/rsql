module LexicalParser
  class BracketedCommentTokenParser < TokenParser
    def parse_next_token
      loop do
        c = read_character
        if c == "/" && @token == "*"
          return parser_state(:token_parser => LookingStage1TokenParser)
        end
        @token = c
      end
    end
  end
end

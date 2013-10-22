module LexicalParser
  class WordTokenParser < TokenParser
    def parse_next_token
      loop do
        c = read_character
        if c.match(/[a-z_$0-9]/i)
          @token << c
          next
        end
        return start_looking(c)
      end
    end

    def token
      if ReservedKeywordToken::KEYWORDS.include?(@token.upcase)
        return ReservedKeywordToken.new(@token)
      elsif NonReservedKeywordToken::KEYWORDS.include?(@token.upcase)
        return NonReservedKeywordToken.new(@token)
      elsif OperatorToken::KEYWORDS.include?(@token.upcase)
        return OperatorToken.new(@token)
      else
        return IdentifierToken.new(@token)
      end
    end
  end
end

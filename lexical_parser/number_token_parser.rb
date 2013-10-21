module LexicalParser
  class NumberTokenParser < TokenParser
    def parse_next_token
      loop do
        c = read_character
        if c.match(/[0-9.]/)
          # XXX needs to check there is only 1 decimal point
          @token << c
          next
        end
        return start_looking(c)
      end
    end

    def token
      return NumberToken.new(@token)
    end
  end
end

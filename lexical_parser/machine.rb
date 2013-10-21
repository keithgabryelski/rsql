module LexicalParser
  class Machine
    attr_reader :token_parser, :infile

    def initialize(infile = $stdin)
      @infile = infile
      @token_parser = LookingStage1TokenParser.new(@infile)
    end

    def read_token
      loop do
        parser_state = token_parser.parse_next_token
        if parser_state.unget_character
          infile.ungetbyte(parser_state.unget_character)
        end
        if parser_state.token_parser
          parameters = [@infile]
          if parser_state.pass_along
            parameters << parser_state.pass_along
          end
          @token_parser = parser_state.token_parser.new(*parameters)
        end
        if parser_state.token
          return parser_state.token
        end
      end
    end

    def read_statement
      statement = []
      loop do
        token = read_token
        if token == nil
          raise "no end statement for #{statement.inspect}"
        end
        statement << token
        break if token.is_a?(EndStatementToken)
      end
      return statement
    rescue EndOfFile => eof
      statement << eof.token if eof.token
      return statement
    end
  end
end

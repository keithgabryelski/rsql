module LexicalParser
  class TokenParser
    attr_reader :infile, :token

    def initialize(infile, token = "")
      @infile = infile
      @token = token
    end

    def read_character
      return @infile.readchar
    rescue ::EOFError
      raise EndOfFile.new(@token)
    end

    def parser_state(*p)
      parameters = p.pop
      raise "bad arguments: #{p.inspect}" if p.length > 0
      return ParserState.new(parameters)
    end

    def start_looking(c = nil)
      # XXX maybe just remove this helper
      return parser_state(:token => token, :token_parser => LookingStage1TokenParser, :unget_characters => c)
    end
  end
end

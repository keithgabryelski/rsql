module LexicalParser
  class ParserState
    attr_reader :token, :unget_character, :pass_along, :token_parser
    def initialize(*p)
      parameters = p.pop
      raise "bad arguments: #{p.inspect}" if p.length > 0
      @token = parameters[:token]
      @token_parser = parameters[:token_parser]
      @unget_character = parameters[:unget_character]
      @pass_along = parameters[:pass_along]
    end
  end
end

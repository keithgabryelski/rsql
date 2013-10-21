module LexicalParser
  class Token
    attr_reader :value
    def initialize(value)
      @value = value
    end
  end
end

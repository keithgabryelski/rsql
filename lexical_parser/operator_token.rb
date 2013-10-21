module LexicalParser
  class OperatorToken < Token
    KEYWORDS = ["<<", ">>", "&", "|", "&&", "||", "<>", "=", "(", ")", "?", "+", "-", "!", "*", "%", "~", "[", "]", ";", "::", "<", ">", ","]
  end
end

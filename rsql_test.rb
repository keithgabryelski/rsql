require './rsql'

require 'stringio'

lpm = LexicalParser::Machine.new(StringIO.new("create table foo ( a int ) ;"))
spm = SyntaxParser::Machine.new

a = lpm.read_statement

spm.parse_statement(a)

module SyntaxParser
  class BadSyntaxError < StandardError; end
end

require './syntax_parser/parser.rb'
require './syntax_parser/create_database_parser.rb'
require './syntax_parser/create_schema_parser.rb'
require './syntax_parser/create_table_parser.rb'
require './syntax_parser/delete_parser.rb'
require './syntax_parser/insert_parser.rb'
require './syntax_parser/select_parser.rb'
require './syntax_parser/update_parser.rb'

require './syntax_parser/machine.rb'

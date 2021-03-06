module LexicalParser
  class NonReservedKeywordToken < Token
    KEYWORDS = ["A" "ABS", "ABSOLUTE", "ACTION", "ADA", "ADMIN",
                "AFTER", "ALWAYS", "ASC", "ASSERTION", "ASSIGNMENT", "ATTRIBUTE",
                "ATTRIBUTES", "AVG", "BEFORE", "BERNOULLI", "BREADTH", "C",
                "CARDINALITY", "CASCADE", "CATALOG", "CATALOG_NAME", "CEIL",
                "CEILING", "CHAIN", "CHARACTERISTICS", "CHARACTERS",
                "CHARACTER_LENGTH", "CHARACTER_SET_CATALOG",
                "CHARACTER_SET_NAME", "CHARACTER_SET_SCHEMA", "CHAR_LENGTH",
                "CHECKED", "CLASS_ORIGIN", "COALESCE", "COBOL", "CODE_UNITS",
                "COLLATION", "COLLATION_CATALOG", "COLLATION_NAME",
                "COLLATION_SCHEMA", "COLLECT", "COLUMN_NAME", "COMMAND_FUNCTION",
                "COMMAND_FUNCTION_CODE", "COMMITTED", "CONDITION",
                "CONDITION_NUMBER", "CONNECTION_NAME", "CONSTRAINTS",
                "CONSTRAINT_CATALOG", "CONSTRAINT_NAME", "CONSTRAINT_SCHEMA",
                "CONSTRUCTORS", "CONTAINS", "CONVERT", "CORR", "COUNT",
                "COVAR_POP", "COVAR_SAMP", "CUME_DIST", "CURRENT_COLLATION",
                "CURSOR_NAME", "DATA", "DATETIME_INTERVAL_CODE",
                "DATETIME_INTERVAL_PRECISION", "DEFAULTS", "DEFERRABLE",
                "DEFERRED", "DEFINED", "DEFINER", "DEGREE", "DENSE_RANK",
                "DEPTH", "DERIVED", "DESC", "DESCRIPTOR", "DIAGNOSTICS",
                "DISPATCH", "DOMAIN", "DYNAMIC_FUNCTION",
                "DYNAMIC_FUNCTION_CODE", "EQUALS", "EVERY", "EXCEPTION",
                "EXCLUDE", "EXCLUDING", "EXP", "EXTRACT", "FINAL", "FIRST",
                "FLOOR", "FOLLOWING", "FORTRAN", "FOUND", "FUSION", "G",
                "GENERAL", "GO", "GOTO", "GRANTED", "HIERARCHY",
                "IMPLEMENTATION", "INCLUDING", "INCREMENT", "INITIALLY",
                "INSTANCE", "INSTANTIABLE", "INTERSECTION", "INVOKER",
                "ISOLATION", "K", "KEY", "KEY_MEMBER", "KEY_TYPE", "LAST",
                "LENGTH", "LEVEL", "LN", "LOCATOR", "LOWER", "M", "MAP",
                "MATCHED", "MAX", "MAXVALUE", "MESSAGE_LENGTH",
                "MESSAGE_OCTET_LENGTH", "MESSAGE_TEXT", "MIN", "MINVALUE", "MOD",
                "MORE", "MUMPS", "NAME", "NAMES", "NESTING", "NEXT", "NORMALIZE",
                "NORMALIZED", "NULLABLE", "NULLIF", "NULLS", "NUMBER", "OBJECT",
                "OCTETS", "OCTET_LENGTH", "OPTION", "OPTIONS", "ORDERING",
                "ORDINALITY", "OTHERS", "OVERLAY", "OVERRIDING", "PAD",
                "PARAMETER_MODE", "PARAMETER_NAME", "PARAMETER_ORDINAL_POSITION",
                "PARAMETER_SPECIFIC_CATALOG", "PARAMETER_SPECIFIC_NAME",
                "PARAMETER_SPECIFIC_SCHEMA", "PARTIAL", "PASCAL", "PATH",
                "PERCENTILE_CONT", "PERCENTILE_DISC", "PERCENT_RANK", "PLACING",
                "PLI", "POSITION", "POWER", "PRECEDING", "PRESERVE", "PRIOR",
                "PRIVILEGES", "PUBLIC", "RANK", "READ", "RELATIVE", "REPEATABLE",
                "RESTART", "RETURNED_CARDINALITY", "RETURNED_LENGTH",
                "RETURNED_OCTET_LENGTH", "RETURNED_SQLSTATE", "ROLE", "ROUTINE",
                "ROUTINE_CATALOG", "ROUTINE_NAME", "ROUTINE_SCHEMA", "ROW_COUNT",
                "ROW_NUMBER", "SCALE", "SCHEMA", "SCHEMA_NAME", "SCOPE_CATALOG",
                "SCOPE_NAME", "SCOPE_SCHEMA", "SECTION", "SECURITY", "SELF",
                "SEQUENCE", "SERIALIZABLE", "SERVER_NAME", "SESSION", "SETS",
                "SIMPLE", "SIZE", "SOURCE", "SPACE", "SPECIFIC_NAME", "SQRT",
                "STATE", "STATEMENT", "STDDEV_POP", "STDDEV_SAMP", "STRUCTURE",
                "STYLE", "SUBCLASS_ORIGIN", "SUBSTRING", "SUM", "TABLESAMPLE",
                "TABLE_NAME", "TEMPORARY", "TIES", "TOP_LEVEL_COUNT",
                "TRANSACTION", "TRANSACTIONS_COMMITTED",
                "TRANSACTIONS_ROLLED_BACK", "TRANSACTION_ACTIVE", "TRANSFORM",
                "TRANSFORMS", "TRANSLATE", "TRIGGER_CATALOG", "TRIGGER_NAME",
                "TRIGGER_SCHEMA", "TRIM", "TYPE", "UNBOUNDED", "UNCOMMITTED",
                "UNDER", "UNNAMED", "USAGE", "USER_DEFINED_TYPE_CATALOG",
                "USER_DEFINED_TYPE_CODE", "USER_DEFINED_TYPE_NAME",
                "USER_DEFINED_TYPE_SCHEMA", "VIEW", "WORK", "WRITE", "ZONE" ]
  end
end

type Token record {|
    TOMLToken token;
    string value = "";
|};

enum TOMLToken {
    DUMMY,
    KEY_VALUE_SEPERATOR,
    DOT,
    UNQUOTED_KEY,
    BASIC_STRING,
    LITERAL_STRING,
    INTEGER,    
    BOOLEAN,
    EOL,
    MULTI_BSTRING_DELIMITER,
    MULTI_BSTRING_ESCAPE,
    MULTI_BSTRING_CHARS,
    MULTI_LSTRING_DELIMITER,
    MULTI_LSTRING_CHARS,
    INFINITY,
    EXPONENTIAL,
    NAN
}
    
enum State {
    EXPRESSION_KEY,
    EXPRESSION_VALUE,
    MULTILINE_BSTRING,
    MULITLINE_LSTRING,
    MULTILINE_ESCAPE
}
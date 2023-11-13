package stdgo.go.token;
/**
    // Package token defines constants representing the lexical tokens of the Go
    // programming language and basic operations on tokens (printing, predicates).
**/
private var __go2hxdoc__package : Bool;
/**
    
    
    
**/
var _tokens : stdgo.GoArray<stdgo.GoString> = {
        var s:stdgo.GoArray<stdgo.GoString> = new stdgo.GoArray<stdgo.GoString>(...[for (i in 0 ... 89) ""]);
        s[0] = ("ILLEGAL" : stdgo.GoString)?.__copy__();
        s[1] = ("EOF" : stdgo.GoString)?.__copy__();
        s[2] = ("COMMENT" : stdgo.GoString)?.__copy__();
        s[4] = ("IDENT" : stdgo.GoString)?.__copy__();
        s[5] = ("INT" : stdgo.GoString)?.__copy__();
        s[6] = ("FLOAT" : stdgo.GoString)?.__copy__();
        s[7] = ("IMAG" : stdgo.GoString)?.__copy__();
        s[8] = ("CHAR" : stdgo.GoString)?.__copy__();
        s[9] = ("STRING" : stdgo.GoString)?.__copy__();
        s[12] = ("+" : stdgo.GoString)?.__copy__();
        s[13] = ("-" : stdgo.GoString)?.__copy__();
        s[14] = ("*" : stdgo.GoString)?.__copy__();
        s[15] = ("/" : stdgo.GoString)?.__copy__();
        s[16] = ("%" : stdgo.GoString)?.__copy__();
        s[17] = ("&" : stdgo.GoString)?.__copy__();
        s[18] = ("|" : stdgo.GoString)?.__copy__();
        s[19] = ("^" : stdgo.GoString)?.__copy__();
        s[20] = ("<<" : stdgo.GoString)?.__copy__();
        s[21] = (">>" : stdgo.GoString)?.__copy__();
        s[22] = ("&^" : stdgo.GoString)?.__copy__();
        s[23] = ("+=" : stdgo.GoString)?.__copy__();
        s[24] = ("-=" : stdgo.GoString)?.__copy__();
        s[25] = ("*=" : stdgo.GoString)?.__copy__();
        s[26] = ("/=" : stdgo.GoString)?.__copy__();
        s[27] = ("%=" : stdgo.GoString)?.__copy__();
        s[28] = ("&=" : stdgo.GoString)?.__copy__();
        s[29] = ("|=" : stdgo.GoString)?.__copy__();
        s[30] = ("^=" : stdgo.GoString)?.__copy__();
        s[31] = ("<<=" : stdgo.GoString)?.__copy__();
        s[32] = (">>=" : stdgo.GoString)?.__copy__();
        s[33] = ("&^=" : stdgo.GoString)?.__copy__();
        s[34] = ("&&" : stdgo.GoString)?.__copy__();
        s[35] = ("||" : stdgo.GoString)?.__copy__();
        s[36] = ("<-" : stdgo.GoString)?.__copy__();
        s[37] = ("++" : stdgo.GoString)?.__copy__();
        s[38] = ("--" : stdgo.GoString)?.__copy__();
        s[39] = ("==" : stdgo.GoString)?.__copy__();
        s[40] = ("<" : stdgo.GoString)?.__copy__();
        s[41] = (">" : stdgo.GoString)?.__copy__();
        s[42] = ("=" : stdgo.GoString)?.__copy__();
        s[43] = ("!" : stdgo.GoString)?.__copy__();
        s[44] = ("!=" : stdgo.GoString)?.__copy__();
        s[45] = ("<=" : stdgo.GoString)?.__copy__();
        s[46] = (">=" : stdgo.GoString)?.__copy__();
        s[47] = (":=" : stdgo.GoString)?.__copy__();
        s[48] = ("..." : stdgo.GoString)?.__copy__();
        s[49] = ("(" : stdgo.GoString)?.__copy__();
        s[50] = ("[" : stdgo.GoString)?.__copy__();
        s[51] = ("{" : stdgo.GoString)?.__copy__();
        s[52] = ("," : stdgo.GoString)?.__copy__();
        s[53] = ("." : stdgo.GoString)?.__copy__();
        s[54] = (")" : stdgo.GoString)?.__copy__();
        s[55] = ("]" : stdgo.GoString)?.__copy__();
        s[56] = ("}" : stdgo.GoString)?.__copy__();
        s[57] = (";" : stdgo.GoString)?.__copy__();
        s[58] = (":" : stdgo.GoString)?.__copy__();
        s[61] = ("break" : stdgo.GoString)?.__copy__();
        s[62] = ("case" : stdgo.GoString)?.__copy__();
        s[63] = ("chan" : stdgo.GoString)?.__copy__();
        s[64] = ("const" : stdgo.GoString)?.__copy__();
        s[65] = ("continue" : stdgo.GoString)?.__copy__();
        s[66] = ("default" : stdgo.GoString)?.__copy__();
        s[67] = ("defer" : stdgo.GoString)?.__copy__();
        s[68] = ("else" : stdgo.GoString)?.__copy__();
        s[69] = ("fallthrough" : stdgo.GoString)?.__copy__();
        s[70] = ("for" : stdgo.GoString)?.__copy__();
        s[71] = ("func" : stdgo.GoString)?.__copy__();
        s[72] = ("go" : stdgo.GoString)?.__copy__();
        s[73] = ("goto" : stdgo.GoString)?.__copy__();
        s[74] = ("if" : stdgo.GoString)?.__copy__();
        s[75] = ("import" : stdgo.GoString)?.__copy__();
        s[76] = ("interface" : stdgo.GoString)?.__copy__();
        s[77] = ("map" : stdgo.GoString)?.__copy__();
        s[78] = ("package" : stdgo.GoString)?.__copy__();
        s[79] = ("range" : stdgo.GoString)?.__copy__();
        s[80] = ("return" : stdgo.GoString)?.__copy__();
        s[81] = ("select" : stdgo.GoString)?.__copy__();
        s[82] = ("struct" : stdgo.GoString)?.__copy__();
        s[83] = ("switch" : stdgo.GoString)?.__copy__();
        s[84] = ("type" : stdgo.GoString)?.__copy__();
        s[85] = ("var" : stdgo.GoString)?.__copy__();
        s[88] = ("~" : stdgo.GoString)?.__copy__();
        s;
    };
/**
    
    
    
**/
var _tests : stdgo.Slice<T__struct_0> = (new stdgo.Slice<T__struct_0>(8, 8, ({ _filename : ("a" : stdgo.GoString)?.__copy__(), _source : (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(0, 0) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _size : (0 : stdgo.StdGoTypes.GoInt), _lines : (new stdgo.Slice<stdgo.StdGoTypes.GoInt>(0, 0) : stdgo.Slice<stdgo.StdGoTypes.GoInt>) } : T__struct_0), ({ _filename : ("b" : stdgo.GoString)?.__copy__(), _source : (("01234" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _size : (5 : stdgo.StdGoTypes.GoInt), _lines : (new stdgo.Slice<stdgo.StdGoTypes.GoInt>(1, 1, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>) } : T__struct_0), ({ _filename : ("c" : stdgo.GoString)?.__copy__(), _source : (("\n\n\n\n\n\n\n\n\n" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _size : (9 : stdgo.StdGoTypes.GoInt), _lines : (new stdgo.Slice<stdgo.StdGoTypes.GoInt>(
9,
9,
(0 : stdgo.StdGoTypes.GoInt),
(1 : stdgo.StdGoTypes.GoInt),
(2 : stdgo.StdGoTypes.GoInt),
(3 : stdgo.StdGoTypes.GoInt),
(4 : stdgo.StdGoTypes.GoInt),
(5 : stdgo.StdGoTypes.GoInt),
(6 : stdgo.StdGoTypes.GoInt),
(7 : stdgo.StdGoTypes.GoInt),
(8 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>) } : T__struct_0), ({ _filename : ("d" : stdgo.GoString)?.__copy__(), _source : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _size : (100 : stdgo.StdGoTypes.GoInt), _lines : (new stdgo.Slice<stdgo.StdGoTypes.GoInt>(
12,
12,
(0 : stdgo.StdGoTypes.GoInt),
(5 : stdgo.StdGoTypes.GoInt),
(10 : stdgo.StdGoTypes.GoInt),
(20 : stdgo.StdGoTypes.GoInt),
(30 : stdgo.StdGoTypes.GoInt),
(70 : stdgo.StdGoTypes.GoInt),
(71 : stdgo.StdGoTypes.GoInt),
(72 : stdgo.StdGoTypes.GoInt),
(80 : stdgo.StdGoTypes.GoInt),
(85 : stdgo.StdGoTypes.GoInt),
(90 : stdgo.StdGoTypes.GoInt),
(99 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>) } : T__struct_0), ({ _filename : ("e" : stdgo.GoString)?.__copy__(), _source : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _size : (777 : stdgo.StdGoTypes.GoInt), _lines : (new stdgo.Slice<stdgo.StdGoTypes.GoInt>(
11,
11,
(0 : stdgo.StdGoTypes.GoInt),
(80 : stdgo.StdGoTypes.GoInt),
(100 : stdgo.StdGoTypes.GoInt),
(120 : stdgo.StdGoTypes.GoInt),
(130 : stdgo.StdGoTypes.GoInt),
(180 : stdgo.StdGoTypes.GoInt),
(267 : stdgo.StdGoTypes.GoInt),
(455 : stdgo.StdGoTypes.GoInt),
(500 : stdgo.StdGoTypes.GoInt),
(567 : stdgo.StdGoTypes.GoInt),
(620 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>) } : T__struct_0), ({ _filename : ("f" : stdgo.GoString)?.__copy__(), _source : (("package p\n\nimport \"fmt\"" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _size : (23 : stdgo.StdGoTypes.GoInt), _lines : (new stdgo.Slice<stdgo.StdGoTypes.GoInt>(3, 3, (0 : stdgo.StdGoTypes.GoInt), (10 : stdgo.StdGoTypes.GoInt), (11 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>) } : T__struct_0), ({ _filename : ("g" : stdgo.GoString)?.__copy__(), _source : (("package p\n\nimport \"fmt\"\n" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _size : (24 : stdgo.StdGoTypes.GoInt), _lines : (new stdgo.Slice<stdgo.StdGoTypes.GoInt>(3, 3, (0 : stdgo.StdGoTypes.GoInt), (10 : stdgo.StdGoTypes.GoInt), (11 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>) } : T__struct_0), ({ _filename : ("h" : stdgo.GoString)?.__copy__(), _source : (("package p\n\nimport \"fmt\"\n " : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>), _size : (25 : stdgo.StdGoTypes.GoInt), _lines : (new stdgo.Slice<stdgo.StdGoTypes.GoInt>(4, 4, (0 : stdgo.StdGoTypes.GoInt), (10 : stdgo.StdGoTypes.GoInt), (11 : stdgo.StdGoTypes.GoInt), (24 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>) } : T__struct_0)) : stdgo.Slice<T__struct_0>);
/**
    // The zero value for Pos is NoPos; there is no file and line information
    // associated with it, and NoPos.IsValid() is false. NoPos is always
    // smaller than any other Pos value. The corresponding Position value
    // for NoPos is the zero value for Position.
    
    
**/
final noPos : stdgo.go.token.Token.Pos = (0 : stdgo.go.token.Token.Pos);
/**
    // Special tokens
    
    
**/
final illegal : stdgo.go.token.Token.Token = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    
**/
final eof = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    
**/
final comment = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    
**/
final _literal_beg = (89 : stdgo.go.token.Token.Token);
/**
    // Identifiers and basic type literals
    // (these tokens stand for classes of literals)
    
    // main
**/
final ident = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // 12345
**/
final int_ = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // 123.45
**/
final float_ = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // 123.45i
**/
final imag = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // 'a'
**/
final char = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // "abc"
**/
final string = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    
**/
final _literal_end = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    
**/
final _operator_beg = (89 : stdgo.go.token.Token.Token);
/**
    // Operators and delimiters
    
    // +
**/
final add = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // -
**/
final sub = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // *
**/
final mul = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // /
**/
final quo = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // %
**/
final rem = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // &
**/
final and = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // |
**/
final or = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // ^
**/
final xor = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // <<
**/
final shl = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // >>
**/
final shr = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // &^
**/
final and_NOT = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // +=
**/
final add_ASSIGN = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // -=
**/
final sub_ASSIGN = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // *=
**/
final mul_ASSIGN = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // /=
**/
final quo_ASSIGN = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // %=
**/
final rem_ASSIGN = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // &=
**/
final and_ASSIGN = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // |=
**/
final or_ASSIGN = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // ^=
**/
final xor_ASSIGN = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // <<=
**/
final shl_ASSIGN = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // >>=
**/
final shr_ASSIGN = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // &^=
**/
final and_NOT_ASSIGN = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // &&
**/
final land = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // ||
**/
final lor = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // <-
**/
final arrow = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // ++
**/
final inc = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // --
**/
final dec = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // ==
**/
final eql = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // <
**/
final lss = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // >
**/
final gtr = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // =
**/
final assign = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // !
**/
final not = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // !=
**/
final neq = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // <=
**/
final leq = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // >=
**/
final geq = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // :=
**/
final define = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // ...
**/
final ellipsis = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // (
**/
final lparen = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // [
**/
final lbrack = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // {
**/
final lbrace = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // ,
**/
final comma = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // .
**/
final period = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // )
**/
final rparen = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // ]
**/
final rbrack = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // }
**/
final rbrace = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // ;
**/
final semicolon = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    // :
**/
final colon = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    
**/
final _operator_end = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    
**/
final _keyword_beg = (89 : stdgo.go.token.Token.Token);
/**
    // Keywords
    
    
**/
final break_ = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    
**/
final case_ = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    
**/
final chan = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    
**/
final const = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    
**/
final continue_ = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    
**/
final default_ = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    
**/
final defer = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    
**/
final else_ = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    
**/
final fallthrough = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    
**/
final for_ = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    
**/
final func = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    
**/
final go = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    
**/
final goto = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    
**/
final if_ = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    
**/
final import_ = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    
**/
final interface_ = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    
**/
final map = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    
**/
final package_ = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    
**/
final range = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    
**/
final return_ = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    
**/
final select = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    
**/
final struct_ = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    
**/
final switch_ = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    
**/
final type = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    
**/
final var_ = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    
**/
final _keyword_end = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    
**/
final _additional_beg = (89 : stdgo.go.token.Token.Token);
/**
    // additional tokens, handled in an ad-hoc manner
    
    
**/
final tilde = (89 : stdgo.go.token.Token.Token);
/**
    // The list of tokens.
    
    
**/
final _additional_end = (89 : stdgo.go.token.Token.Token);
/**
    // A set of constants for precedence-based expression parsing.
    // Non-operators have lowest precedence, followed by operators
    // starting with precedence 1 up to unary operators. The highest
    // precedence serves as "catch-all" precedence for selector,
    // indexing, and other operator and delimiter tokens.
    
    // non-operators
**/
final lowestPrec : stdgo.StdGoTypes.GoUInt64 = (0i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // A set of constants for precedence-based expression parsing.
    // Non-operators have lowest precedence, followed by operators
    // starting with precedence 1 up to unary operators. The highest
    // precedence serves as "catch-all" precedence for selector,
    // indexing, and other operator and delimiter tokens.
    
    
**/
final unaryPrec : stdgo.StdGoTypes.GoUInt64 = (6i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // A set of constants for precedence-based expression parsing.
    // Non-operators have lowest precedence, followed by operators
    // starting with precedence 1 up to unary operators. The highest
    // precedence serves as "catch-all" precedence for selector,
    // indexing, and other operator and delimiter tokens.
    
    
**/
final highestPrec : stdgo.StdGoTypes.GoUInt64 = (7i64 : stdgo.StdGoTypes.GoUInt64);
/**
    
    
    
**/
var _keywords = (null : stdgo.GoMap<stdgo.GoString, stdgo.go.token.Token.Token>);
/**
    // Position describes an arbitrary source position
    // including the file, line, and column location.
    // A Position is valid if the line number is > 0.
    
    
**/
@:structInit @:using(stdgo.go.token.Token.Position_static_extension) class Position {
    public var filename : stdgo.GoString = "";
    public var offset : stdgo.StdGoTypes.GoInt = 0;
    public var line : stdgo.StdGoTypes.GoInt = 0;
    public var column : stdgo.StdGoTypes.GoInt = 0;
    public function new(?filename:stdgo.GoString, ?offset:stdgo.StdGoTypes.GoInt, ?line:stdgo.StdGoTypes.GoInt, ?column:stdgo.StdGoTypes.GoInt) {
        if (filename != null) this.filename = filename;
        if (offset != null) this.offset = offset;
        if (line != null) this.line = line;
        if (column != null) this.column = column;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Position(filename, offset, line, column);
    }
}
/**
    // A File is a handle for a file belonging to a FileSet.
    // A File has a name, size, and line offset table.
    
    
**/
@:structInit @:using(stdgo.go.token.Token.File_static_extension) class File {
    public var _name : stdgo.GoString = "";
    public var _base : stdgo.StdGoTypes.GoInt = 0;
    public var _size : stdgo.StdGoTypes.GoInt = 0;
    /**
        // lines and infos are protected by mutex
    **/
    public var _mutex : stdgo.sync.Sync.Mutex = ({} : stdgo.sync.Sync.Mutex);
    public var _lines : stdgo.Slice<stdgo.StdGoTypes.GoInt> = (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>);
    public var _infos : stdgo.Slice<stdgo.go.token.Token.T_lineInfo> = (null : stdgo.Slice<stdgo.go.token.Token.T_lineInfo>);
    public function new(?_name:stdgo.GoString, ?_base:stdgo.StdGoTypes.GoInt, ?_size:stdgo.StdGoTypes.GoInt, ?_mutex:stdgo.sync.Sync.Mutex, ?_lines:stdgo.Slice<stdgo.StdGoTypes.GoInt>, ?_infos:stdgo.Slice<stdgo.go.token.Token.T_lineInfo>) {
        if (_name != null) this._name = _name;
        if (_base != null) this._base = _base;
        if (_size != null) this._size = _size;
        if (_mutex != null) this._mutex = _mutex;
        if (_lines != null) this._lines = _lines;
        if (_infos != null) this._infos = _infos;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new File(_name, _base, _size, _mutex, _lines, _infos);
    }
}
/**
    // A lineInfo object describes alternative file, line, and column
    // number information (such as provided via a //line directive)
    // for a given file offset.
    
    
**/
@:structInit @:private class T_lineInfo {
    /**
        // fields are exported to make them accessible to gob
    **/
    public var offset : stdgo.StdGoTypes.GoInt = 0;
    public var filename : stdgo.GoString = "";
    public var line : stdgo.StdGoTypes.GoInt = 0;
    public var column : stdgo.StdGoTypes.GoInt = 0;
    public function new(?offset:stdgo.StdGoTypes.GoInt, ?filename:stdgo.GoString, ?line:stdgo.StdGoTypes.GoInt, ?column:stdgo.StdGoTypes.GoInt) {
        if (offset != null) this.offset = offset;
        if (filename != null) this.filename = filename;
        if (line != null) this.line = line;
        if (column != null) this.column = column;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_lineInfo(offset, filename, line, column);
    }
}
/**
    // A FileSet represents a set of source files.
    // Methods of file sets are synchronized; multiple goroutines
    // may invoke them concurrently.
    //
    // The byte offsets for each file in a file set are mapped into
    // distinct (integer) intervals, one interval [base, base+size]
    // per file. Base represents the first byte in the file, and size
    // is the corresponding file size. A Pos value is a value in such
    // an interval. By determining the interval a Pos value belongs
    // to, the file, its file base, and thus the byte offset (position)
    // the Pos value is representing can be computed.
    //
    // When adding a new file, a file base must be provided. That can
    // be any integer value that is past the end of any interval of any
    // file already in the file set. For convenience, FileSet.Base provides
    // such a value, which is simply the end of the Pos interval of the most
    // recently added file, plus one. Unless there is a need to extend an
    // interval later, using the FileSet.Base should be used as argument
    // for FileSet.AddFile.
    //
    // A File may be removed from a FileSet when it is no longer needed.
    // This may reduce memory usage in a long-running application.
    
    
**/
@:structInit @:using(stdgo.go.token.Token.FileSet_static_extension) class FileSet {
    public var _mutex : stdgo.sync.Sync.RWMutex = ({} : stdgo.sync.Sync.RWMutex);
    public var _base : stdgo.StdGoTypes.GoInt = 0;
    public var _files : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.go.token.Token.File>> = (null : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.go.token.Token.File>>);
    public var _last : stdgo.sync.atomic.Atomic.Pointer_<stdgo.go.token.Token.File> = ({} : stdgo.sync.atomic.Atomic.Pointer_<stdgo.go.token.Token.File>);
    public function new(?_mutex:stdgo.sync.Sync.RWMutex, ?_base:stdgo.StdGoTypes.GoInt, ?_files:stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.go.token.Token.File>>, ?_last:stdgo.sync.atomic.Atomic.Pointer_<stdgo.go.token.Token.File>) {
        if (_mutex != null) this._mutex = _mutex;
        if (_base != null) this._base = _base;
        if (_files != null) this._files = _files;
        if (_last != null) this._last = _last;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new FileSet(_mutex, _base, _files, _last);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_serializedFile {
    /**
        // fields correspond 1:1 to fields with same (lower-case) name in File
    **/
    public var name : stdgo.GoString = "";
    public var base : stdgo.StdGoTypes.GoInt = 0;
    public var size : stdgo.StdGoTypes.GoInt = 0;
    public var lines : stdgo.Slice<stdgo.StdGoTypes.GoInt> = (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>);
    public var infos : stdgo.Slice<stdgo.go.token.Token.T_lineInfo> = (null : stdgo.Slice<stdgo.go.token.Token.T_lineInfo>);
    public function new(?name:stdgo.GoString, ?base:stdgo.StdGoTypes.GoInt, ?size:stdgo.StdGoTypes.GoInt, ?lines:stdgo.Slice<stdgo.StdGoTypes.GoInt>, ?infos:stdgo.Slice<stdgo.go.token.Token.T_lineInfo>) {
        if (name != null) this.name = name;
        if (base != null) this.base = base;
        if (size != null) this.size = size;
        if (lines != null) this.lines = lines;
        if (infos != null) this.infos = infos;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_serializedFile(name, base, size, lines, infos);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_serializedFileSet {
    public var base : stdgo.StdGoTypes.GoInt = 0;
    public var files : stdgo.Slice<stdgo.go.token.Token.T_serializedFile> = (null : stdgo.Slice<stdgo.go.token.Token.T_serializedFile>);
    public function new(?base:stdgo.StdGoTypes.GoInt, ?files:stdgo.Slice<stdgo.go.token.Token.T_serializedFile>) {
        if (base != null) this.base = base;
        if (files != null) this.files = files;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_serializedFileSet(base, files);
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.token.Token.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo.go.token.Token.T__struct_0_static_extension) typedef T__struct_0 = {
    public var _filename : stdgo.GoString;
    public var _source : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>;
    public var _size : stdgo.StdGoTypes.GoInt;
    public var _lines : stdgo.Slice<stdgo.StdGoTypes.GoInt>;
};
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_1>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.token.Token.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo.go.token.Token.T__struct_1_static_extension) typedef T__struct_1 = {
    public var _name : stdgo.GoString;
    public var _infos : stdgo.Slice<stdgo.go.token.Token.T_lineInfo>;
    public var _want : stdgo.Slice<stdgo.go.token.Token.T_lineInfo>;
};
class T__struct_2_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_2>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.token.Token.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo.go.token.Token.T__struct_2_static_extension) typedef T__struct_2 = {
    public var _name : stdgo.GoString;
    public var _in : stdgo.GoString;
    public var _want : Bool;
};
/**
    // Pos is a compact encoding of a source position within a file set.
    // It can be converted into a Position for a more convenient, but much
    // larger, representation.
    //
    // The Pos value for a given file is a number in the range [base, base+size],
    // where base and size are specified when a file is added to the file set.
    // The difference between a Pos value and the corresponding file base
    // corresponds to the byte offset of that position (represented by the Pos value)
    // from the beginning of the file. Thus, the file base offset is the Pos value
    // representing the first byte in the file.
    //
    // To create the Pos value for a specific source offset (measured in bytes),
    // first add the respective file to the current file set using FileSet.AddFile
    // and then call File.Pos(offset) for that file. Given a Pos value p
    // for a specific file set fset, the corresponding Position value is
    // obtained by calling fset.Position(p).
    //
    // Pos values can be compared directly with the usual comparison operators:
    // If two Pos values p and q are in the same file, comparing p and q is
    // equivalent to comparing the respective source file offsets. If p and q
    // are in different files, p < q is true if the file implied by p was added
    // to the respective file set before the file implied by q.
**/
@:named @:using(stdgo.go.token.Token.Pos_static_extension) typedef Pos = stdgo.StdGoTypes.GoInt;
/**
    // Token is the set of lexical tokens of the Go programming language.
**/
@:named @:using(stdgo.go.token.Token.Token_static_extension) typedef Token = stdgo.StdGoTypes.GoInt;
function _searchLineInfos(_a:stdgo.Slice<T_lineInfo>, _x:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.GoInt {
        return stdgo.sort.Sort.search((_a.length), function(_i:stdgo.StdGoTypes.GoInt):Bool {
            return _a[(_i : stdgo.StdGoTypes.GoInt)].offset > _x;
        }) - (1 : stdgo.StdGoTypes.GoInt);
    }
/**
    // NewFileSet creates a new file set.
**/
function newFileSet():stdgo.StdGoTypes.Ref<FileSet> {
        return (stdgo.Go.setRef(({ _base : (1 : stdgo.StdGoTypes.GoInt) } : FileSet)) : stdgo.StdGoTypes.Ref<stdgo.go.token.Token.FileSet>);
    }
function _searchFiles(_a:stdgo.Slice<stdgo.StdGoTypes.Ref<File>>, _x:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.GoInt {
        return stdgo.sort.Sort.search((_a.length), function(_i:stdgo.StdGoTypes.GoInt):Bool {
            return _a[(_i : stdgo.StdGoTypes.GoInt)]._base > _x;
        }) - (1 : stdgo.StdGoTypes.GoInt);
    }
function _searchInts(_a:stdgo.Slice<stdgo.StdGoTypes.GoInt>, _x:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.GoInt {
        var __0:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), __1:stdgo.StdGoTypes.GoInt = (_a.length), _j:stdgo.StdGoTypes.GoInt = __1, _i:stdgo.StdGoTypes.GoInt = __0;
        while (_i < _j) {
            var _h:stdgo.StdGoTypes.GoInt = ((_i + _j : stdgo.StdGoTypes.GoUInt) >> (1i64 : stdgo.StdGoTypes.GoUInt64) : stdgo.StdGoTypes.GoInt);
            if (_a[(_h : stdgo.StdGoTypes.GoInt)] <= _x) {
                _i = _h + (1 : stdgo.StdGoTypes.GoInt);
            } else {
                _j = _h;
            };
        };
        return _i - (1 : stdgo.StdGoTypes.GoInt);
    }
function benchmarkSearchInts(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _data = new stdgo.Slice<stdgo.StdGoTypes.GoInt>((10000 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (10000 : stdgo.StdGoTypes.GoInt), _i++, {
                _data[(_i : stdgo.StdGoTypes.GoInt)] = _i;
            });
        };
        {};
        {
            var _r:stdgo.StdGoTypes.GoInt = _searchInts(_data, (8 : stdgo.StdGoTypes.GoInt));
            if (_r != ((8 : stdgo.StdGoTypes.GoInt))) {
                _b.errorf(("got index = %d; want %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_r), stdgo.Go.toInterface((8 : stdgo.StdGoTypes.GoInt)));
            };
        };
        _b.resetTimer();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _b.n, _i++, {
                _searchInts(_data, (8 : stdgo.StdGoTypes.GoInt));
            });
        };
    }
function _checkPos(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _msg:stdgo.GoString, _got:Position, _want:Position):Void {
        if (_got.filename != (_want.filename)) {
            _t.errorf(("%s: got filename = %q; want %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_got.filename), stdgo.Go.toInterface(_want.filename));
        };
        if (_got.offset != (_want.offset)) {
            _t.errorf(("%s: got offset = %d; want %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_got.offset), stdgo.Go.toInterface(_want.offset));
        };
        if (_got.line != (_want.line)) {
            _t.errorf(("%s: got line = %d; want %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_got.line), stdgo.Go.toInterface(_want.line));
        };
        if (_got.column != (_want.column)) {
            _t.errorf(("%s: got column = %d; want %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_got.column), stdgo.Go.toInterface(_want.column));
        };
    }
function testNoPos(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        if ((0 : stdgo.go.token.Token.Pos).isValid()) {
            _t.errorf(("NoPos should not be valid" : stdgo.GoString)?.__copy__());
        };
        var _fset:stdgo.StdGoTypes.Ref<FileSet> = (null : stdgo.StdGoTypes.Ref<stdgo.go.token.Token.FileSet>);
        _checkPos(_t, ("nil NoPos" : stdgo.GoString)?.__copy__(), _fset.position((0 : stdgo.go.token.Token.Pos))?.__copy__(), (new Position() : Position));
        _fset = newFileSet();
        _checkPos(_t, ("fset NoPos" : stdgo.GoString)?.__copy__(), _fset.position((0 : stdgo.go.token.Token.Pos))?.__copy__(), (new Position() : Position));
    }
function _linecol(_lines:stdgo.Slice<stdgo.StdGoTypes.GoInt>, _offs:stdgo.StdGoTypes.GoInt):{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.StdGoTypes.GoInt; } {
        var _prevLineOffs:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        for (_line => _lineOffs in _lines) {
            if (_offs < _lineOffs) {
                return { _0 : _line, _1 : (_offs - _prevLineOffs) + (1 : stdgo.StdGoTypes.GoInt) };
            };
            _prevLineOffs = _lineOffs;
        };
        return { _0 : (_lines.length), _1 : (_offs - _prevLineOffs) + (1 : stdgo.StdGoTypes.GoInt) };
    }
function _verifyPositions(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _fset:stdgo.StdGoTypes.Ref<FileSet>, _f:stdgo.StdGoTypes.Ref<File>, _lines:stdgo.Slice<stdgo.StdGoTypes.GoInt>):Void {
        {
            var _offs:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_offs < _f.size(), _offs++, {
                var _p:stdgo.go.token.Token.Pos = _f.pos(_offs);
                var _offs2:stdgo.StdGoTypes.GoInt = _f.offset(_p);
                if (_offs2 != (_offs)) {
                    _t.errorf(("%s, Offset: got offset %d; want %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(_offs2), stdgo.Go.toInterface(_offs));
                };
                var __tmp__ = _linecol(_lines, _offs), _line:stdgo.StdGoTypes.GoInt = __tmp__._0, _col:stdgo.StdGoTypes.GoInt = __tmp__._1;
                var _msg:stdgo.GoString = stdgo.fmt.Fmt.sprintf(("%s (offs = %d, p = %d)" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(_offs), stdgo.Go.toInterface(stdgo.Go.asInterface(_p)))?.__copy__();
                _checkPos(_t, _msg?.__copy__(), _f.position(_f.pos(_offs))?.__copy__(), (new Position(_f.name()?.__copy__(), _offs, _line, _col) : Position));
                _checkPos(_t, _msg?.__copy__(), _fset.position(_p)?.__copy__(), (new Position(_f.name()?.__copy__(), _offs, _line, _col) : Position));
            });
        };
    }
function _makeTestSource(_size:stdgo.StdGoTypes.GoInt, _lines:stdgo.Slice<stdgo.StdGoTypes.GoInt>):stdgo.Slice<stdgo.StdGoTypes.GoByte> {
        var _src = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_size : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        for (__0 => _offs in _lines) {
            if (_offs > (0 : stdgo.StdGoTypes.GoInt)) {
                _src[(_offs - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] = (10 : stdgo.StdGoTypes.GoUInt8);
            };
        };
        return _src;
    }
function testPositions(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _fset = newFileSet();
        for (__0 => _test in _tests) {
            if ((_test._source != null) && (_test._source.length != _test._size)) {
                _t.errorf(("%s: inconsistent test case: got file size %d; want %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_test._filename), stdgo.Go.toInterface((_test._source.length)), stdgo.Go.toInterface(_test._size));
            };
            var _f = _fset.addFile(_test._filename?.__copy__(), _fset.base() + (7 : stdgo.StdGoTypes.GoInt), _test._size);
            if (_f.name() != (_test._filename)) {
                _t.errorf(("got filename %q; want %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(_test._filename));
            };
            if (_f.size() != (_test._size)) {
                _t.errorf(("%s: got file size %d; want %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(_f.size()), stdgo.Go.toInterface(_test._size));
            };
            if (_fset.file(_f.pos((0 : stdgo.StdGoTypes.GoInt))) != (_f)) {
                _t.errorf(("%s: f.Pos(0) was not found in f" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_f.name()));
            };
            for (_i => _offset in _test._lines) {
                _f.addLine(_offset);
                if (_f.lineCount() != (_i + (1 : stdgo.StdGoTypes.GoInt))) {
                    _t.errorf(("%s, AddLine: got line count %d; want %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(_f.lineCount()), stdgo.Go.toInterface(_i + (1 : stdgo.StdGoTypes.GoInt)));
                };
                _f.addLine(_offset);
                if (_f.lineCount() != (_i + (1 : stdgo.StdGoTypes.GoInt))) {
                    _t.errorf(("%s, AddLine: got unchanged line count %d; want %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(_f.lineCount()), stdgo.Go.toInterface(_i + (1 : stdgo.StdGoTypes.GoInt)));
                };
                _verifyPositions(_t, _fset, _f, (_test._lines.__slice__((0 : stdgo.StdGoTypes.GoInt), _i + (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>));
            };
            {
                var _ok:Bool = _f.setLines(_test._lines);
                if (!_ok) {
                    _t.errorf(("%s: SetLines failed" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_f.name()));
                };
            };
            if (_f.lineCount() != ((_test._lines.length))) {
                _t.errorf(("%s, SetLines: got line count %d; want %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(_f.lineCount()), stdgo.Go.toInterface((_test._lines.length)));
            };
            if (!stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_f.lines()), stdgo.Go.toInterface(_test._lines))) {
                _t.errorf(("%s, Lines after SetLines(v): got %v; want %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(_f.lines()), stdgo.Go.toInterface(_test._lines));
            };
            _verifyPositions(_t, _fset, _f, _test._lines);
            var _src = _test._source;
            if (_src == null) {
                _src = _makeTestSource(_test._size, _test._lines);
            };
            _f.setLinesForContent(_src);
            if (_f.lineCount() != ((_test._lines.length))) {
                _t.errorf(("%s, SetLinesForContent: got line count %d; want %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(_f.lineCount()), stdgo.Go.toInterface((_test._lines.length)));
            };
            _verifyPositions(_t, _fset, _f, _test._lines);
        };
    }
function testLineInfo(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _fset = newFileSet();
        var _f = _fset.addFile(("foo" : stdgo.GoString)?.__copy__(), _fset.base(), (500 : stdgo.StdGoTypes.GoInt));
        var _lines = (new stdgo.Slice<stdgo.StdGoTypes.GoInt>(
10,
10,
(0 : stdgo.StdGoTypes.GoInt),
(42 : stdgo.StdGoTypes.GoInt),
(77 : stdgo.StdGoTypes.GoInt),
(100 : stdgo.StdGoTypes.GoInt),
(210 : stdgo.StdGoTypes.GoInt),
(220 : stdgo.StdGoTypes.GoInt),
(277 : stdgo.StdGoTypes.GoInt),
(300 : stdgo.StdGoTypes.GoInt),
(333 : stdgo.StdGoTypes.GoInt),
(401 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>);
        for (__0 => _offs in _lines) {
            _f.addLine(_offs);
            _f.addLineInfo(_offs, ("bar" : stdgo.GoString)?.__copy__(), (42 : stdgo.StdGoTypes.GoInt));
        };
        {
            var _offs:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_offs <= _f.size(), _offs++, {
                var _p:stdgo.go.token.Token.Pos = _f.pos(_offs);
                var __tmp__ = _linecol(_lines, _offs), __1:stdgo.StdGoTypes.GoInt = __tmp__._0, _col:stdgo.StdGoTypes.GoInt = __tmp__._1;
                var _msg:stdgo.GoString = stdgo.fmt.Fmt.sprintf(("%s (offs = %d, p = %d)" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(_offs), stdgo.Go.toInterface(stdgo.Go.asInterface(_p)))?.__copy__();
                _checkPos(_t, _msg?.__copy__(), _f.position(_f.pos(_offs))?.__copy__(), (new Position(("bar" : stdgo.GoString)?.__copy__(), _offs, (42 : stdgo.StdGoTypes.GoInt), _col) : Position));
                _checkPos(_t, _msg?.__copy__(), _fset.position(_p)?.__copy__(), (new Position(("bar" : stdgo.GoString)?.__copy__(), _offs, (42 : stdgo.StdGoTypes.GoInt), _col) : Position));
            });
        };
    }
function testFiles(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _fset = newFileSet();
        for (_i => _test in _tests) {
            var _base:stdgo.StdGoTypes.GoInt = _fset.base();
            if (_i % (2 : stdgo.StdGoTypes.GoInt) == ((1 : stdgo.StdGoTypes.GoInt))) {
                _base = (-1 : stdgo.StdGoTypes.GoInt);
            };
            _fset.addFile(_test._filename?.__copy__(), _base, _test._size);
            var _j:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            _fset.iterate(function(_f:stdgo.StdGoTypes.Ref<File>):Bool {
                if (_f.name() != (_tests[(_j : stdgo.StdGoTypes.GoInt)]._filename)) {
                    _t.errorf(("got filename = %s; want %s" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(_tests[(_j : stdgo.StdGoTypes.GoInt)]._filename));
                };
                _j++;
                return true;
            });
            if (_j != (_i + (1 : stdgo.StdGoTypes.GoInt))) {
                _t.errorf(("got %d files; want %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_i + (1 : stdgo.StdGoTypes.GoInt)));
            };
        };
    }
/**
    // FileSet.File should return nil if Pos is past the end of the FileSet.
**/
function testFileSetPastEnd(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _fset = newFileSet();
        for (__0 => _test in _tests) {
            _fset.addFile(_test._filename?.__copy__(), _fset.base(), _test._size);
        };
        {
            var _f = _fset.file((_fset.base() : Pos));
            if (_f != null && ((_f : Dynamic).__nil__ == null || !(_f : Dynamic).__nil__)) {
                _t.errorf(("got %v, want nil" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_f)));
            };
        };
    }
function testFileSetCacheUnlikely(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _fset = newFileSet();
        var _offsets = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.StdGoTypes.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.StdGoTypes.GoInt);
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.StdGoTypes.GoInt>);
        for (__0 => _test in _tests) {
            _offsets[_test._filename?.__copy__()] = _fset.base();
            _fset.addFile(_test._filename?.__copy__(), _fset.base(), _test._size);
        };
        for (_file => _pos in _offsets) {
            var _f = _fset.file((_pos : Pos));
            if (_f.name() != (_file)) {
                _t.errorf(("got %q at position %d, want %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(_pos), stdgo.Go.toInterface(_file));
            };
        };
    }
/**
    // issue 4345. Test that concurrent use of FileSet.Pos does not trigger a
    // race in the FileSet position cache.
**/
function testFileSetRace(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _fset = newFileSet();
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (100 : stdgo.StdGoTypes.GoInt), _i++, {
                _fset.addFile(stdgo.fmt.Fmt.sprintf(("file-%d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_i))?.__copy__(), _fset.base(), (1031 : stdgo.StdGoTypes.GoInt));
            });
        };
        var _max:stdgo.StdGoTypes.GoInt32 = (_fset.base() : stdgo.StdGoTypes.GoInt32);
        var _stop:stdgo.sync.Sync.WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
        var _r = stdgo.math.rand.Rand.new_(stdgo.math.rand.Rand.newSource((7i64 : stdgo.StdGoTypes.GoInt64)));
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (2 : stdgo.StdGoTypes.GoInt), _i++, {
                var _r = stdgo.math.rand.Rand.new_(stdgo.math.rand.Rand.newSource(_r.int63()));
                _stop.add((1 : stdgo.StdGoTypes.GoInt));
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        {
                            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                            stdgo.Go.cfor(_i < (1000 : stdgo.StdGoTypes.GoInt), _i++, {
                                _fset.position((_r.int31n(_max) : Pos));
                            });
                        };
                        _stop.done();
                    };
                    a();
                });
            });
        };
        _stop.wait_();
    }
/**
    // issue 16548. Test that concurrent use of File.AddLine and FileSet.PositionFor
    // does not trigger a race in the FileSet position cache.
**/
function testFileSetRace2(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {};
        var __0:stdgo.StdGoTypes.Ref<stdgo.go.token.Token.FileSet> = newFileSet(), __1:stdgo.StdGoTypes.Ref<stdgo.go.token.Token.File> = _fset.addFile(stdgo.Go.str()?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt), (1000 : stdgo.StdGoTypes.GoInt)), __2:stdgo.Chan<stdgo.StdGoTypes.GoInt> = new stdgo.Chan<stdgo.StdGoTypes.GoInt>((2 : stdgo.StdGoTypes.GoInt).toBasic(), () -> (0 : stdgo.StdGoTypes.GoInt)), _ch:stdgo.Chan<stdgo.StdGoTypes.GoInt> = __2, _file:stdgo.StdGoTypes.Ref<stdgo.go.token.Token.File> = __1, _fset:stdgo.StdGoTypes.Ref<stdgo.go.token.Token.FileSet> = __0;
        stdgo.Go.routine(() -> {
            var a = function():Void {
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < (1000 : stdgo.StdGoTypes.GoInt), _i++, {
                        _file.addLine(_i);
                    });
                };
                _ch.__send__((1 : stdgo.StdGoTypes.GoInt));
            };
            a();
        });
        stdgo.Go.routine(() -> {
            var a = function():Void {
                var _pos:stdgo.go.token.Token.Pos = _file.pos((0 : stdgo.StdGoTypes.GoInt));
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < (1000 : stdgo.StdGoTypes.GoInt), _i++, {
                        _fset.positionFor(_pos, false);
                    });
                };
                _ch.__send__((1 : stdgo.StdGoTypes.GoInt));
            };
            a();
        });
        _ch.__get__();
        _ch.__get__();
    }
function testPositionFor(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _src = (("\nfoo\nb\nar\n//line :100\nfoobar\n//line bar:3\ndone\n" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        {};
        var _fset = newFileSet();
        var _f = _fset.addFile(("foo" : stdgo.GoString)?.__copy__(), _fset.base(), (_src.length));
        _f.setLinesForContent(_src);
        for (_i => _offs in _f._lines) {
            var _got1:stdgo.go.token.Token.Position = _f.positionFor(_f.pos(_offs), false)?.__copy__();
            var _got2:stdgo.go.token.Token.Position = _f.positionFor(_f.pos(_offs), true)?.__copy__();
            var _got3:stdgo.go.token.Token.Position = _f.position(_f.pos(_offs))?.__copy__();
            var _want:stdgo.go.token.Token.Position = (new Position(("foo" : stdgo.GoString)?.__copy__(), _offs, _i + (1 : stdgo.StdGoTypes.GoInt), (1 : stdgo.StdGoTypes.GoInt)) : Position);
            _checkPos(_t, ("1. PositionFor unadjusted" : stdgo.GoString)?.__copy__(), _got1?.__copy__(), _want?.__copy__());
            _checkPos(_t, ("1. PositionFor adjusted" : stdgo.GoString)?.__copy__(), _got2?.__copy__(), _want?.__copy__());
            _checkPos(_t, ("1. Position" : stdgo.GoString)?.__copy__(), _got3?.__copy__(), _want?.__copy__());
        };
        {};
        _f.addLineInfo(_f._lines[(4 : stdgo.StdGoTypes.GoInt)], stdgo.Go.str()?.__copy__(), (100 : stdgo.StdGoTypes.GoInt));
        _f.addLineInfo(_f._lines[(6 : stdgo.StdGoTypes.GoInt)], ("bar" : stdgo.GoString)?.__copy__(), (3 : stdgo.StdGoTypes.GoInt));
        for (_i => _offs in _f._lines) {
            var _got1:stdgo.go.token.Token.Position = _f.positionFor(_f.pos(_offs), false)?.__copy__();
            var _want:stdgo.go.token.Token.Position = (new Position(("foo" : stdgo.GoString)?.__copy__(), _offs, _i + (1 : stdgo.StdGoTypes.GoInt), (1 : stdgo.StdGoTypes.GoInt)) : Position);
            _checkPos(_t, ("2. PositionFor unadjusted" : stdgo.GoString)?.__copy__(), _got1?.__copy__(), _want?.__copy__());
        };
        for (_i => _offs in _f._lines) {
            var _got2:stdgo.go.token.Token.Position = _f.positionFor(_f.pos(_offs), true)?.__copy__();
            var _got3:stdgo.go.token.Token.Position = _f.position(_f.pos(_offs))?.__copy__();
            var _want:stdgo.go.token.Token.Position = (new Position(("foo" : stdgo.GoString)?.__copy__(), _offs, _i + (1 : stdgo.StdGoTypes.GoInt), (1 : stdgo.StdGoTypes.GoInt)) : Position);
            var _line:stdgo.StdGoTypes.GoInt = _want.line;
            if ((_i + (1 : stdgo.StdGoTypes.GoInt)) >= (5 : stdgo.StdGoTypes.GoInt)) {
                _want.filename = stdgo.Go.str()?.__copy__();
                _want.line = (_line - (5 : stdgo.StdGoTypes.GoInt)) + (100 : stdgo.StdGoTypes.GoInt);
            };
            if ((_i + (1 : stdgo.StdGoTypes.GoInt)) >= (7 : stdgo.StdGoTypes.GoInt)) {
                _want.filename = ("bar" : stdgo.GoString)?.__copy__();
                _want.line = (_line - (7 : stdgo.StdGoTypes.GoInt)) + (3 : stdgo.StdGoTypes.GoInt);
            };
            _checkPos(_t, ("3. PositionFor adjusted" : stdgo.GoString)?.__copy__(), _got2?.__copy__(), _want?.__copy__());
            _checkPos(_t, ("3. Position" : stdgo.GoString)?.__copy__(), _got3?.__copy__(), _want?.__copy__());
        };
    }
function testLineStart(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _fset = newFileSet();
        var _f = _fset.addFile(("input" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt), (("one\ntwo\nthree\n" : stdgo.GoString).length));
        _f.setLinesForContent((("one\ntwo\nthree\n" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>));
        {
            var _line:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_line <= (3 : stdgo.StdGoTypes.GoInt), _line++, {
                var _pos:stdgo.go.token.Token.Pos = _f.lineStart(_line);
                var _position:stdgo.go.token.Token.Position = _fset.position(_pos)?.__copy__();
                if ((_position.line != _line) || (_position.column != (1 : stdgo.StdGoTypes.GoInt))) {
                    _t.errorf(("LineStart(%d) returned wrong pos %d: %s" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_line), stdgo.Go.toInterface(stdgo.Go.asInterface(_pos)), stdgo.Go.toInterface(stdgo.Go.asInterface(_position)));
                };
            });
        };
    }
function testRemoveFile(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _contentA = (("this\nis\nfileA" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        var _contentB = (("this\nis\nfileB" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        var _fset = newFileSet();
        var _a = _fset.addFile(("fileA" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt), (_contentA.length));
        _a.setLinesForContent(_contentA);
        var _b = _fset.addFile(("fileB" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt), (_contentB.length));
        _b.setLinesForContent(_contentB);
        var _checkPos:(stdgo.go.token.Token.Pos, stdgo.GoString) -> Void = function(_pos:Pos, _want:stdgo.GoString):Void {
            {
                var _got:stdgo.GoString = (_fset.position(_pos).string() : stdgo.GoString)?.__copy__();
                if (_got != (_want)) {
                    _t.errorf(("Position(%d) = %s, want %s" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_pos)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
        };
        var _checkNumFiles:stdgo.StdGoTypes.GoInt -> Void = function(_want:stdgo.StdGoTypes.GoInt):Void {
            var _got:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            _fset.iterate(function(_0:stdgo.StdGoTypes.Ref<File>):Bool {
                _got++;
                return true;
            });
            if (_got != (_want)) {
                _t.errorf(("Iterate called %d times, want %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        var _apos3:stdgo.go.token.Token.Pos = _a.pos((3 : stdgo.StdGoTypes.GoInt));
        var _bpos3:stdgo.go.token.Token.Pos = _b.pos((3 : stdgo.StdGoTypes.GoInt));
        _checkPos(_apos3, ("fileA:1:4" : stdgo.GoString)?.__copy__());
        _checkPos(_bpos3, ("fileB:1:4" : stdgo.GoString)?.__copy__());
        _checkNumFiles((2 : stdgo.StdGoTypes.GoInt));
        _fset.removeFile(_a);
        _checkPos(_apos3, ("-" : stdgo.GoString)?.__copy__());
        _checkPos(_bpos3, ("fileB:1:4" : stdgo.GoString)?.__copy__());
        _checkNumFiles((1 : stdgo.StdGoTypes.GoInt));
        _fset.removeFile(_a);
        _checkPos(_apos3, ("-" : stdgo.GoString)?.__copy__());
        _checkPos(_bpos3, ("fileB:1:4" : stdgo.GoString)?.__copy__());
        _checkNumFiles((1 : stdgo.StdGoTypes.GoInt));
    }
function testFileAddLineColumnInfo(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _tests = (new stdgo.Slice<T__struct_1>(7, 7, ({ _name : ("normal" : stdgo.GoString)?.__copy__(), _infos : (new stdgo.Slice<stdgo.go.token.Token.T_lineInfo>(3, 3, ({ offset : (10 : stdgo.StdGoTypes.GoInt), filename : ("test.go" : stdgo.GoString)?.__copy__(), line : (2 : stdgo.StdGoTypes.GoInt), column : (1 : stdgo.StdGoTypes.GoInt) } : stdgo.go.token.Token.T_lineInfo), ({ offset : (50 : stdgo.StdGoTypes.GoInt), filename : ("test.go" : stdgo.GoString)?.__copy__(), line : (3 : stdgo.StdGoTypes.GoInt), column : (1 : stdgo.StdGoTypes.GoInt) } : stdgo.go.token.Token.T_lineInfo), ({ offset : (80 : stdgo.StdGoTypes.GoInt), filename : ("test.go" : stdgo.GoString)?.__copy__(), line : (4 : stdgo.StdGoTypes.GoInt), column : (2 : stdgo.StdGoTypes.GoInt) } : stdgo.go.token.Token.T_lineInfo)) : stdgo.Slice<stdgo.go.token.Token.T_lineInfo>), _want : (new stdgo.Slice<stdgo.go.token.Token.T_lineInfo>(3, 3, ({ offset : (10 : stdgo.StdGoTypes.GoInt), filename : ("test.go" : stdgo.GoString)?.__copy__(), line : (2 : stdgo.StdGoTypes.GoInt), column : (1 : stdgo.StdGoTypes.GoInt) } : stdgo.go.token.Token.T_lineInfo), ({ offset : (50 : stdgo.StdGoTypes.GoInt), filename : ("test.go" : stdgo.GoString)?.__copy__(), line : (3 : stdgo.StdGoTypes.GoInt), column : (1 : stdgo.StdGoTypes.GoInt) } : stdgo.go.token.Token.T_lineInfo), ({ offset : (80 : stdgo.StdGoTypes.GoInt), filename : ("test.go" : stdgo.GoString)?.__copy__(), line : (4 : stdgo.StdGoTypes.GoInt), column : (2 : stdgo.StdGoTypes.GoInt) } : stdgo.go.token.Token.T_lineInfo)) : stdgo.Slice<stdgo.go.token.Token.T_lineInfo>) } : T__struct_1), ({ _name : ("offset1 == file size" : stdgo.GoString)?.__copy__(), _infos : (new stdgo.Slice<stdgo.go.token.Token.T_lineInfo>(1, 1, ({ offset : (100 : stdgo.StdGoTypes.GoInt), filename : ("test.go" : stdgo.GoString)?.__copy__(), line : (2 : stdgo.StdGoTypes.GoInt), column : (1 : stdgo.StdGoTypes.GoInt) } : stdgo.go.token.Token.T_lineInfo)) : stdgo.Slice<stdgo.go.token.Token.T_lineInfo>), _want : (null : stdgo.Slice<stdgo.go.token.Token.T_lineInfo>) } : T__struct_1), ({ _name : ("offset1 > file size" : stdgo.GoString)?.__copy__(), _infos : (new stdgo.Slice<stdgo.go.token.Token.T_lineInfo>(1, 1, ({ offset : (101 : stdgo.StdGoTypes.GoInt), filename : ("test.go" : stdgo.GoString)?.__copy__(), line : (2 : stdgo.StdGoTypes.GoInt), column : (1 : stdgo.StdGoTypes.GoInt) } : stdgo.go.token.Token.T_lineInfo)) : stdgo.Slice<stdgo.go.token.Token.T_lineInfo>), _want : (null : stdgo.Slice<stdgo.go.token.Token.T_lineInfo>) } : T__struct_1), ({ _name : ("offset2 == file size" : stdgo.GoString)?.__copy__(), _infos : (new stdgo.Slice<stdgo.go.token.Token.T_lineInfo>(2, 2, ({ offset : (10 : stdgo.StdGoTypes.GoInt), filename : ("test.go" : stdgo.GoString)?.__copy__(), line : (2 : stdgo.StdGoTypes.GoInt), column : (1 : stdgo.StdGoTypes.GoInt) } : stdgo.go.token.Token.T_lineInfo), ({ offset : (100 : stdgo.StdGoTypes.GoInt), filename : ("test.go" : stdgo.GoString)?.__copy__(), line : (3 : stdgo.StdGoTypes.GoInt), column : (1 : stdgo.StdGoTypes.GoInt) } : stdgo.go.token.Token.T_lineInfo)) : stdgo.Slice<stdgo.go.token.Token.T_lineInfo>), _want : (new stdgo.Slice<stdgo.go.token.Token.T_lineInfo>(1, 1, ({ offset : (10 : stdgo.StdGoTypes.GoInt), filename : ("test.go" : stdgo.GoString)?.__copy__(), line : (2 : stdgo.StdGoTypes.GoInt), column : (1 : stdgo.StdGoTypes.GoInt) } : stdgo.go.token.Token.T_lineInfo)) : stdgo.Slice<stdgo.go.token.Token.T_lineInfo>) } : T__struct_1), ({ _name : ("offset2 > file size" : stdgo.GoString)?.__copy__(), _infos : (new stdgo.Slice<stdgo.go.token.Token.T_lineInfo>(2, 2, ({ offset : (10 : stdgo.StdGoTypes.GoInt), filename : ("test.go" : stdgo.GoString)?.__copy__(), line : (2 : stdgo.StdGoTypes.GoInt), column : (1 : stdgo.StdGoTypes.GoInt) } : stdgo.go.token.Token.T_lineInfo), ({ offset : (101 : stdgo.StdGoTypes.GoInt), filename : ("test.go" : stdgo.GoString)?.__copy__(), line : (3 : stdgo.StdGoTypes.GoInt), column : (1 : stdgo.StdGoTypes.GoInt) } : stdgo.go.token.Token.T_lineInfo)) : stdgo.Slice<stdgo.go.token.Token.T_lineInfo>), _want : (new stdgo.Slice<stdgo.go.token.Token.T_lineInfo>(1, 1, ({ offset : (10 : stdgo.StdGoTypes.GoInt), filename : ("test.go" : stdgo.GoString)?.__copy__(), line : (2 : stdgo.StdGoTypes.GoInt), column : (1 : stdgo.StdGoTypes.GoInt) } : stdgo.go.token.Token.T_lineInfo)) : stdgo.Slice<stdgo.go.token.Token.T_lineInfo>) } : T__struct_1), ({ _name : ("offset2 == offset1" : stdgo.GoString)?.__copy__(), _infos : (new stdgo.Slice<stdgo.go.token.Token.T_lineInfo>(2, 2, ({ offset : (10 : stdgo.StdGoTypes.GoInt), filename : ("test.go" : stdgo.GoString)?.__copy__(), line : (2 : stdgo.StdGoTypes.GoInt), column : (1 : stdgo.StdGoTypes.GoInt) } : stdgo.go.token.Token.T_lineInfo), ({ offset : (10 : stdgo.StdGoTypes.GoInt), filename : ("test.go" : stdgo.GoString)?.__copy__(), line : (3 : stdgo.StdGoTypes.GoInt), column : (1 : stdgo.StdGoTypes.GoInt) } : stdgo.go.token.Token.T_lineInfo)) : stdgo.Slice<stdgo.go.token.Token.T_lineInfo>), _want : (new stdgo.Slice<stdgo.go.token.Token.T_lineInfo>(1, 1, ({ offset : (10 : stdgo.StdGoTypes.GoInt), filename : ("test.go" : stdgo.GoString)?.__copy__(), line : (2 : stdgo.StdGoTypes.GoInt), column : (1 : stdgo.StdGoTypes.GoInt) } : stdgo.go.token.Token.T_lineInfo)) : stdgo.Slice<stdgo.go.token.Token.T_lineInfo>) } : T__struct_1), ({ _name : ("offset2 < offset1" : stdgo.GoString)?.__copy__(), _infos : (new stdgo.Slice<stdgo.go.token.Token.T_lineInfo>(2, 2, ({ offset : (10 : stdgo.StdGoTypes.GoInt), filename : ("test.go" : stdgo.GoString)?.__copy__(), line : (2 : stdgo.StdGoTypes.GoInt), column : (1 : stdgo.StdGoTypes.GoInt) } : stdgo.go.token.Token.T_lineInfo), ({ offset : (9 : stdgo.StdGoTypes.GoInt), filename : ("test.go" : stdgo.GoString)?.__copy__(), line : (3 : stdgo.StdGoTypes.GoInt), column : (1 : stdgo.StdGoTypes.GoInt) } : stdgo.go.token.Token.T_lineInfo)) : stdgo.Slice<stdgo.go.token.Token.T_lineInfo>), _want : (new stdgo.Slice<stdgo.go.token.Token.T_lineInfo>(1, 1, ({ offset : (10 : stdgo.StdGoTypes.GoInt), filename : ("test.go" : stdgo.GoString)?.__copy__(), line : (2 : stdgo.StdGoTypes.GoInt), column : (1 : stdgo.StdGoTypes.GoInt) } : stdgo.go.token.Token.T_lineInfo)) : stdgo.Slice<stdgo.go.token.Token.T_lineInfo>) } : T__struct_1)) : stdgo.Slice<T__struct_1>);
        for (__0 => _test in _tests) {
            _t.run(_test._name?.__copy__(), function(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
                var _fs = newFileSet();
                var _f = _fs.addFile(("test.go" : stdgo.GoString)?.__copy__(), (-1 : stdgo.StdGoTypes.GoInt), (100 : stdgo.StdGoTypes.GoInt));
                for (__0 => _info in _test._infos) {
                    _f.addLineColumnInfo(_info.offset, _info.filename?.__copy__(), _info.line, _info.column);
                };
                if (!stdgo.reflect.Reflect.deepEqual(stdgo.Go.toInterface(_f._infos), stdgo.Go.toInterface(_test._want))) {
                    _t.errorf(("\ngot %+v, \nwant %+v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_f._infos), stdgo.Go.toInterface(_test._want));
                };
            });
        };
    }
/**
    // equal returns nil if p and q describe the same file set;
    // otherwise it returns an error describing the discrepancy.
**/
function _equal(_p:stdgo.StdGoTypes.Ref<FileSet>, _q:stdgo.StdGoTypes.Ref<FileSet>):stdgo.Error {
        var __deferstack__:Array<Void -> Void> = [];
        if (_p == (_q)) {
            return (null : stdgo.Error);
        };
        try {
            _p._mutex.lock();
            _q._mutex.lock();
            __deferstack__.unshift(() -> _q._mutex.unlock());
            __deferstack__.unshift(() -> _p._mutex.unlock());
            if (_p._base != (_q._base)) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return stdgo.fmt.Fmt.errorf(("different bases: %d != %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_p._base), stdgo.Go.toInterface(_q._base));
                };
            };
            if ((_p._files.length) != ((_q._files.length))) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return stdgo.fmt.Fmt.errorf(("different number of files: %d != %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface((_p._files.length)), stdgo.Go.toInterface((_q._files.length)));
                };
            };
            for (_i => _f in _p._files) {
                var _g = _q._files[(_i : stdgo.StdGoTypes.GoInt)];
                if (_f._name != (_g._name)) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return stdgo.fmt.Fmt.errorf(("different filenames: %q != %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_f._name), stdgo.Go.toInterface(_g._name));
                    };
                };
                if (_f._base != (_g._base)) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return stdgo.fmt.Fmt.errorf(("different base for %q: %d != %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_f._name), stdgo.Go.toInterface(_f._base), stdgo.Go.toInterface(_g._base));
                    };
                };
                if (_f._size != (_g._size)) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return stdgo.fmt.Fmt.errorf(("different size for %q: %d != %d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_f._name), stdgo.Go.toInterface(_f._size), stdgo.Go.toInterface(_g._size));
                    };
                };
                for (_j => _l in _f._lines) {
                    var _m:stdgo.StdGoTypes.GoInt = _g._lines[(_j : stdgo.StdGoTypes.GoInt)];
                    if (_l != (_m)) {
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return stdgo.fmt.Fmt.errorf(("different offsets for %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_f._name));
                        };
                    };
                };
                for (_j => _l in _f._infos) {
                    var _m:stdgo.go.token.Token.T_lineInfo = _g._infos[(_j : stdgo.StdGoTypes.GoInt)];
                    if (((_l.offset != _m.offset) || (_l.filename != _m.filename)) || (_l.line != _m.line)) {
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return stdgo.fmt.Fmt.errorf(("different infos for %q" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_f._name));
                        };
                    };
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return (null : stdgo.Error);
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return (null : stdgo.Error);
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return (null : stdgo.Error);
        };
    }
function _checkSerialize(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>, _p:stdgo.StdGoTypes.Ref<FileSet>):Void {
        var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        var _encode:stdgo.StdGoTypes.AnyInterface -> stdgo.Error = function(_x:stdgo.StdGoTypes.AnyInterface):stdgo.Error {
            return stdgo.encoding.gob.Gob.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>))).encode(_x);
        };
        {
            var _err:stdgo.Error = _p.write(_encode);
            if (_err != null) {
                _t.errorf(("writing fileset failed: %s" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_err));
                return;
            };
        };
        var _q = newFileSet();
        var _decode:stdgo.StdGoTypes.AnyInterface -> stdgo.Error = function(_x:stdgo.StdGoTypes.AnyInterface):stdgo.Error {
            return stdgo.encoding.gob.Gob.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>))).decode(_x);
        };
        {
            var _err:stdgo.Error = _q.read(_decode);
            if (_err != null) {
                _t.errorf(("reading fileset failed: %s" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_err));
                return;
            };
        };
        {
            var _err:stdgo.Error = _equal(_p, _q);
            if (_err != null) {
                _t.errorf(("filesets not identical: %s" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_err));
            };
        };
    }
function testSerialization(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _p = newFileSet();
        _checkSerialize(_t, _p);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (10 : stdgo.StdGoTypes.GoInt), _i++, {
                var _f = _p.addFile(stdgo.fmt.Fmt.sprintf(("file%d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_i))?.__copy__(), _p.base() + _i, _i * (100 : stdgo.StdGoTypes.GoInt));
                _checkSerialize(_t, _p);
                var _line:stdgo.StdGoTypes.GoInt = (1000 : stdgo.StdGoTypes.GoInt);
                {
                    var _offs:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_offs < _f.size(), _offs = _offs + ((40 : stdgo.StdGoTypes.GoInt) + _i), {
                        _f.addLine(_offs);
                        if (_offs % (7 : stdgo.StdGoTypes.GoInt) == ((0 : stdgo.StdGoTypes.GoInt))) {
                            _f.addLineInfo(_offs, stdgo.fmt.Fmt.sprintf(("file%d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_offs))?.__copy__(), _line);
                            _line = _line + ((33 : stdgo.StdGoTypes.GoInt));
                        };
                    });
                };
                _checkSerialize(_t, _p);
            });
        };
    }
/**
    // Lookup maps an identifier to its keyword token or IDENT (if not a keyword).
**/
function lookup(_ident:stdgo.GoString):Token {
        {
            var __tmp__ = (_keywords != null && _keywords.exists(_ident) ? { value : _keywords[_ident], ok : true } : { value : ((0 : stdgo.StdGoTypes.GoInt) : stdgo.go.token.Token.Token), ok : false }), _tok:stdgo.go.token.Token.Token = __tmp__.value, _is_keyword:Bool = __tmp__.ok;
            if (_is_keyword) {
                return _tok;
            };
        };
        return (4 : stdgo.go.token.Token.Token);
    }
/**
    // IsExported reports whether name starts with an upper-case letter.
**/
function isExported(_name:stdgo.GoString):Bool {
        var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_name?.__copy__()), _ch:stdgo.StdGoTypes.GoInt32 = __tmp__._0, __0:stdgo.StdGoTypes.GoInt = __tmp__._1;
        return stdgo.unicode.Unicode.isUpper(_ch);
    }
/**
    // IsKeyword reports whether name is a Go keyword, such as "func" or "return".
**/
function isKeyword(_name:stdgo.GoString):Bool {
        var __tmp__ = (_keywords != null && _keywords.exists(_name) ? { value : _keywords[_name], ok : true } : { value : ((0 : stdgo.StdGoTypes.GoInt) : stdgo.go.token.Token.Token), ok : false }), __0:stdgo.go.token.Token.Token = __tmp__.value, _ok:Bool = __tmp__.ok;
        return _ok;
    }
/**
    // IsIdentifier reports whether name is a Go identifier, that is, a non-empty
    // string made up of letters, digits, and underscores, where the first character
    // is not a digit. Keywords are not identifiers.
**/
function isIdentifier(_name:stdgo.GoString):Bool {
        if ((_name == stdgo.Go.str()) || isKeyword(_name?.__copy__())) {
            return false;
        };
        for (_i => _c in _name) {
            if ((!stdgo.unicode.Unicode.isLetter(_c) && (_c != (95 : stdgo.StdGoTypes.GoInt32))) && ((_i == (0 : stdgo.StdGoTypes.GoInt)) || !stdgo.unicode.Unicode.isDigit(_c))) {
                return false;
            };
        };
        return true;
    }
function testIsIdentifier(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
        var _tests = (new stdgo.Slice<T__struct_2>(
9,
9,
({ _name : ("Empty" : stdgo.GoString)?.__copy__(), _in : stdgo.Go.str()?.__copy__(), _want : false } : T__struct_2),
({ _name : ("Space" : stdgo.GoString)?.__copy__(), _in : (" " : stdgo.GoString)?.__copy__(), _want : false } : T__struct_2),
({ _name : ("SpaceSuffix" : stdgo.GoString)?.__copy__(), _in : ("foo " : stdgo.GoString)?.__copy__(), _want : false } : T__struct_2),
({ _name : ("Number" : stdgo.GoString)?.__copy__(), _in : ("123" : stdgo.GoString)?.__copy__(), _want : false } : T__struct_2),
({ _name : ("Keyword" : stdgo.GoString)?.__copy__(), _in : ("func" : stdgo.GoString)?.__copy__(), _want : false } : T__struct_2),
({ _name : ("LettersASCII" : stdgo.GoString)?.__copy__(), _in : ("foo" : stdgo.GoString)?.__copy__(), _want : true } : T__struct_2),
({ _name : ("MixedASCII" : stdgo.GoString)?.__copy__(), _in : ("_bar123" : stdgo.GoString)?.__copy__(), _want : true } : T__struct_2),
({ _name : ("UppercaseKeyword" : stdgo.GoString)?.__copy__(), _in : ("Func" : stdgo.GoString)?.__copy__(), _want : true } : T__struct_2),
({ _name : ("LettersUnicode" : stdgo.GoString)?.__copy__(), _in : ("fóö" : stdgo.GoString)?.__copy__(), _want : true } : T__struct_2)) : stdgo.Slice<T__struct_2>);
        for (__0 => _test in _tests) {
            _t.run(_test._name?.__copy__(), function(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T>):Void {
                {
                    var _got:Bool = isIdentifier(_test._in?.__copy__());
                    if (_got != (_test._want)) {
                        _t.fatalf(("IsIdentifier(%q) = %t, want %v" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                    };
                };
            });
        };
    }
@:keep var _ = {
        try {
            _keywords = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.go.token.Token.Token>();
                x.__defaultValue__ = () -> ((0 : stdgo.StdGoTypes.GoInt) : stdgo.go.token.Token.Token);
                @:mergeBlock {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.go.token.Token.Token>);
            {
                var _i:stdgo.go.token.Token.Token = (61 : stdgo.go.token.Token.Token);
                stdgo.Go.cfor(_i < (86 : stdgo.go.token.Token.Token), _i++, {
                    _keywords[_tokens[(_i : stdgo.StdGoTypes.GoInt)]?.__copy__()] = _i;
                });
            };
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
class Position_asInterface {
    /**
        // String returns a string in one of several forms:
        //
        //	file:line:column    valid position with file name
        //	file:line           valid position with file name but no column (column == 0)
        //	line:column         valid position without file name
        //	line                valid position without file name and no column (column == 0)
        //	file                invalid position with file name
        //	-                   invalid position without file name
    **/
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    /**
        // IsValid reports whether the position is valid.
    **/
    @:keep
    public dynamic function isValid():Bool return __self__.value.isValid();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Position>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.token.Token.Position_asInterface) class Position_static_extension {
    /**
        // String returns a string in one of several forms:
        //
        //	file:line:column    valid position with file name
        //	file:line           valid position with file name but no column (column == 0)
        //	line:column         valid position without file name
        //	line                valid position without file name and no column (column == 0)
        //	file                invalid position with file name
        //	-                   invalid position without file name
    **/
    @:keep
    static public function string( _pos:Position):stdgo.GoString {
        @:recv var _pos:Position = _pos?.__copy__();
        var _s:stdgo.GoString = _pos.filename?.__copy__();
        if (_pos.isValid()) {
            if (_s != (stdgo.Go.str())) {
                _s = _s + ((":" : stdgo.GoString))?.__copy__();
            };
            _s = _s + (stdgo.strconv.Strconv.itoa(_pos.line))?.__copy__();
            if (_pos.column != ((0 : stdgo.StdGoTypes.GoInt))) {
                _s = _s + (stdgo.fmt.Fmt.sprintf((":%d" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_pos.column)))?.__copy__();
            };
        };
        if (_s == (stdgo.Go.str())) {
            _s = ("-" : stdgo.GoString)?.__copy__();
        };
        return _s?.__copy__();
    }
    /**
        // IsValid reports whether the position is valid.
    **/
    @:keep
    static public function isValid( _pos:stdgo.StdGoTypes.Ref<Position>):Bool {
        @:recv var _pos:stdgo.StdGoTypes.Ref<Position> = _pos;
        return _pos.line > (0 : stdgo.StdGoTypes.GoInt);
    }
}
class File_asInterface {
    /**
        // Position returns the Position value for the given file position p.
        // Calling f.Position(p) is equivalent to calling f.PositionFor(p, true).
    **/
    @:keep
    public dynamic function position(_p:Pos):Position return __self__.value.position(_p);
    /**
        // PositionFor returns the Position value for the given file position p.
        // If adjusted is set, the position may be adjusted by position-altering
        // //line comments; otherwise those comments are ignored.
        // p must be a Pos value in f or NoPos.
    **/
    @:keep
    public dynamic function positionFor(_p:Pos, _adjusted:Bool):Position return __self__.value.positionFor(_p, _adjusted);
    @:keep
    public dynamic function _position(_p:Pos, _adjusted:Bool):Position return __self__.value._position(_p, _adjusted);
    /**
        // unpack returns the filename and line and column number for a file offset.
        // If adjusted is set, unpack will return the filename and line information
        // possibly adjusted by //line comments; otherwise those comments are ignored.
    **/
    @:keep
    public dynamic function _unpack(_offset:stdgo.StdGoTypes.GoInt, _adjusted:Bool):{ var _0 : stdgo.GoString; var _1 : stdgo.StdGoTypes.GoInt; var _2 : stdgo.StdGoTypes.GoInt; } return __self__.value._unpack(_offset, _adjusted);
    /**
        // Line returns the line number for the given file position p;
        // p must be a Pos value in that file or NoPos.
    **/
    @:keep
    public dynamic function line(_p:Pos):stdgo.StdGoTypes.GoInt return __self__.value.line(_p);
    /**
        // Offset returns the offset for the given file position p;
        // p must be a valid Pos value in that file.
        // f.Offset(f.Pos(offset)) == offset.
    **/
    @:keep
    public dynamic function offset(_p:Pos):stdgo.StdGoTypes.GoInt return __self__.value.offset(_p);
    /**
        // Pos returns the Pos value for the given file offset;
        // the offset must be <= f.Size().
        // f.Pos(f.Offset(p)) == p.
    **/
    @:keep
    public dynamic function pos(_offset:stdgo.StdGoTypes.GoInt):Pos return __self__.value.pos(_offset);
    /**
        // AddLineColumnInfo adds alternative file, line, and column number
        // information for a given file offset. The offset must be larger
        // than the offset for the previously added alternative line info
        // and smaller than the file size; otherwise the information is
        // ignored.
        //
        // AddLineColumnInfo is typically used to register alternative position
        // information for line directives such as //line filename:line:column.
    **/
    @:keep
    public dynamic function addLineColumnInfo(_offset:stdgo.StdGoTypes.GoInt, _filename:stdgo.GoString, _line:stdgo.StdGoTypes.GoInt, _column:stdgo.StdGoTypes.GoInt):Void __self__.value.addLineColumnInfo(_offset, _filename, _line, _column);
    /**
        // AddLineInfo is like AddLineColumnInfo with a column = 1 argument.
        // It is here for backward-compatibility for code prior to Go 1.11.
    **/
    @:keep
    public dynamic function addLineInfo(_offset:stdgo.StdGoTypes.GoInt, _filename:stdgo.GoString, _line:stdgo.StdGoTypes.GoInt):Void __self__.value.addLineInfo(_offset, _filename, _line);
    /**
        // LineStart returns the Pos value of the start of the specified line.
        // It ignores any alternative positions set using AddLineColumnInfo.
        // LineStart panics if the 1-based line number is invalid.
    **/
    @:keep
    public dynamic function lineStart(_line:stdgo.StdGoTypes.GoInt):Pos return __self__.value.lineStart(_line);
    /**
        // SetLinesForContent sets the line offsets for the given file content.
        // It ignores position-altering //line comments.
    **/
    @:keep
    public dynamic function setLinesForContent(_content:stdgo.Slice<stdgo.StdGoTypes.GoByte>):Void __self__.value.setLinesForContent(_content);
    /**
        // SetLines sets the line offsets for a file and reports whether it succeeded.
        // The line offsets are the offsets of the first character of each line;
        // for instance for the content "ab\nc\n" the line offsets are {0, 3}.
        // An empty file has an empty line offset table.
        // Each line offset must be larger than the offset for the previous line
        // and smaller than the file size; otherwise SetLines fails and returns
        // false.
        // Callers must not mutate the provided slice after SetLines returns.
    **/
    @:keep
    public dynamic function setLines(_lines:stdgo.Slice<stdgo.StdGoTypes.GoInt>):Bool return __self__.value.setLines(_lines);
    /**
        // Lines returns the effective line offset table of the form described by SetLines.
        // Callers must not mutate the result.
    **/
    @:keep
    public dynamic function lines():stdgo.Slice<stdgo.StdGoTypes.GoInt> return __self__.value.lines();
    /**
        // MergeLine merges a line with the following line. It is akin to replacing
        // the newline character at the end of the line with a space (to not change the
        // remaining offsets). To obtain the line number, consult e.g. Position.Line.
        // MergeLine will panic if given an invalid line number.
    **/
    @:keep
    public dynamic function mergeLine(_line:stdgo.StdGoTypes.GoInt):Void __self__.value.mergeLine(_line);
    /**
        // AddLine adds the line offset for a new line.
        // The line offset must be larger than the offset for the previous line
        // and smaller than the file size; otherwise the line offset is ignored.
    **/
    @:keep
    public dynamic function addLine(_offset:stdgo.StdGoTypes.GoInt):Void __self__.value.addLine(_offset);
    /**
        // LineCount returns the number of lines in file f.
    **/
    @:keep
    public dynamic function lineCount():stdgo.StdGoTypes.GoInt return __self__.value.lineCount();
    /**
        // Size returns the size of file f as registered with AddFile.
    **/
    @:keep
    public dynamic function size():stdgo.StdGoTypes.GoInt return __self__.value.size();
    /**
        // Base returns the base offset of file f as registered with AddFile.
    **/
    @:keep
    public dynamic function base():stdgo.StdGoTypes.GoInt return __self__.value.base();
    /**
        // Name returns the file name of file f as registered with AddFile.
    **/
    @:keep
    public dynamic function name():stdgo.GoString return __self__.value.name();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<File>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.token.Token.File_asInterface) class File_static_extension {
    /**
        // Position returns the Position value for the given file position p.
        // Calling f.Position(p) is equivalent to calling f.PositionFor(p, true).
    **/
    @:keep
    static public function position( _f:stdgo.StdGoTypes.Ref<File>, _p:Pos):Position {
        @:recv var _f:stdgo.StdGoTypes.Ref<File> = _f;
        var _pos:Position = ({} : stdgo.go.token.Token.Position);
        return _f.positionFor(_p, true)?.__copy__();
    }
    /**
        // PositionFor returns the Position value for the given file position p.
        // If adjusted is set, the position may be adjusted by position-altering
        // //line comments; otherwise those comments are ignored.
        // p must be a Pos value in f or NoPos.
    **/
    @:keep
    static public function positionFor( _f:stdgo.StdGoTypes.Ref<File>, _p:Pos, _adjusted:Bool):Position {
        @:recv var _f:stdgo.StdGoTypes.Ref<File> = _f;
        var _pos:Position = ({} : stdgo.go.token.Token.Position);
        if (_p != ((0 : stdgo.go.token.Token.Pos))) {
            if (((_p : stdgo.StdGoTypes.GoInt) < _f._base) || ((_p : stdgo.StdGoTypes.GoInt) > (_f._base + _f._size))) {
                throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("invalid Pos value %d (should be in [%d, %d])" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_p)), stdgo.Go.toInterface(_f._base), stdgo.Go.toInterface(_f._base + _f._size)));
            };
            _pos = _f._position(_p, _adjusted)?.__copy__();
        };
        return _pos;
    }
    @:keep
    static public function _position( _f:stdgo.StdGoTypes.Ref<File>, _p:Pos, _adjusted:Bool):Position {
        @:recv var _f:stdgo.StdGoTypes.Ref<File> = _f;
        var _pos:Position = ({} : stdgo.go.token.Token.Position);
        var _offset:stdgo.StdGoTypes.GoInt = (_p : stdgo.StdGoTypes.GoInt) - _f._base;
        _pos.offset = _offset;
        {
            var __tmp__ = _f._unpack(_offset, _adjusted);
            _pos.filename = __tmp__._0?.__copy__();
            _pos.line = __tmp__._1;
            _pos.column = __tmp__._2;
        };
        return _pos;
    }
    /**
        // unpack returns the filename and line and column number for a file offset.
        // If adjusted is set, unpack will return the filename and line information
        // possibly adjusted by //line comments; otherwise those comments are ignored.
    **/
    @:keep
    static public function _unpack( _f:stdgo.StdGoTypes.Ref<File>, _offset:stdgo.StdGoTypes.GoInt, _adjusted:Bool):{ var _0 : stdgo.GoString; var _1 : stdgo.StdGoTypes.GoInt; var _2 : stdgo.StdGoTypes.GoInt; } {
        @:recv var _f:stdgo.StdGoTypes.Ref<File> = _f;
        var _filename:stdgo.GoString = ("" : stdgo.GoString), _line:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt), _column:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        _f._mutex.lock();
        _filename = _f._name?.__copy__();
        {
            var _i:stdgo.StdGoTypes.GoInt = _searchInts(_f._lines, _offset);
            if (_i >= (0 : stdgo.StdGoTypes.GoInt)) {
                {
                    final __tmp__0 = _i + (1 : stdgo.StdGoTypes.GoInt);
                    final __tmp__1 = (_offset - _f._lines[(_i : stdgo.StdGoTypes.GoInt)]) + (1 : stdgo.StdGoTypes.GoInt);
                    _line = __tmp__0;
                    _column = __tmp__1;
                };
            };
        };
        if (_adjusted && (_f._infos.length > (0 : stdgo.StdGoTypes.GoInt))) {
            {
                var _i:stdgo.StdGoTypes.GoInt = _searchLineInfos(_f._infos, _offset);
                if (_i >= (0 : stdgo.StdGoTypes.GoInt)) {
                    var _alt = (stdgo.Go.setRef(_f._infos[(_i : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.go.token.Token.T_lineInfo>);
                    _filename = _alt.filename?.__copy__();
                    {
                        var _i:stdgo.StdGoTypes.GoInt = _searchInts(_f._lines, _alt.offset);
                        if (_i >= (0 : stdgo.StdGoTypes.GoInt)) {
                            var _d:stdgo.StdGoTypes.GoInt = _line - (_i + (1 : stdgo.StdGoTypes.GoInt));
                            _line = _alt.line + _d;
                            if (_alt.column == ((0 : stdgo.StdGoTypes.GoInt))) {
                                _column = (0 : stdgo.StdGoTypes.GoInt);
                            } else if (_d == ((0 : stdgo.StdGoTypes.GoInt))) {
                                _column = _alt.column + (_offset - _alt.offset);
                            };
                        };
                    };
                };
            };
        };
        _f._mutex.unlock();
        return { _0 : _filename, _1 : _line, _2 : _column };
    }
    /**
        // Line returns the line number for the given file position p;
        // p must be a Pos value in that file or NoPos.
    **/
    @:keep
    static public function line( _f:stdgo.StdGoTypes.Ref<File>, _p:Pos):stdgo.StdGoTypes.GoInt {
        @:recv var _f:stdgo.StdGoTypes.Ref<File> = _f;
        return _f.position(_p).line;
    }
    /**
        // Offset returns the offset for the given file position p;
        // p must be a valid Pos value in that file.
        // f.Offset(f.Pos(offset)) == offset.
    **/
    @:keep
    static public function offset( _f:stdgo.StdGoTypes.Ref<File>, _p:Pos):stdgo.StdGoTypes.GoInt {
        @:recv var _f:stdgo.StdGoTypes.Ref<File> = _f;
        if (((_p : stdgo.StdGoTypes.GoInt) < _f._base) || ((_p : stdgo.StdGoTypes.GoInt) > (_f._base + _f._size))) {
            throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("invalid Pos value %d (should be in [%d, %d])" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_p)), stdgo.Go.toInterface(_f._base), stdgo.Go.toInterface(_f._base + _f._size)));
        };
        return (_p : stdgo.StdGoTypes.GoInt) - _f._base;
    }
    /**
        // Pos returns the Pos value for the given file offset;
        // the offset must be <= f.Size().
        // f.Pos(f.Offset(p)) == p.
    **/
    @:keep
    static public function pos( _f:stdgo.StdGoTypes.Ref<File>, _offset:stdgo.StdGoTypes.GoInt):Pos {
        @:recv var _f:stdgo.StdGoTypes.Ref<File> = _f;
        if (_offset > _f._size) {
            throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("invalid file offset %d (should be <= %d)" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_offset), stdgo.Go.toInterface(_f._size)));
        };
        return (_f._base + _offset : Pos);
    }
    /**
        // AddLineColumnInfo adds alternative file, line, and column number
        // information for a given file offset. The offset must be larger
        // than the offset for the previously added alternative line info
        // and smaller than the file size; otherwise the information is
        // ignored.
        //
        // AddLineColumnInfo is typically used to register alternative position
        // information for line directives such as //line filename:line:column.
    **/
    @:keep
    static public function addLineColumnInfo( _f:stdgo.StdGoTypes.Ref<File>, _offset:stdgo.StdGoTypes.GoInt, _filename:stdgo.GoString, _line:stdgo.StdGoTypes.GoInt, _column:stdgo.StdGoTypes.GoInt):Void {
        @:recv var _f:stdgo.StdGoTypes.Ref<File> = _f;
        _f._mutex.lock();
        {
            var _i:stdgo.StdGoTypes.GoInt = (_f._infos.length);
            if (((_i == (0 : stdgo.StdGoTypes.GoInt)) || (_f._infos[(_i - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)].offset < _offset)) && (_offset < _f._size)) {
                _f._infos = (_f._infos.__append__((new T_lineInfo(_offset, _filename?.__copy__(), _line, _column) : T_lineInfo)));
            };
        };
        _f._mutex.unlock();
    }
    /**
        // AddLineInfo is like AddLineColumnInfo with a column = 1 argument.
        // It is here for backward-compatibility for code prior to Go 1.11.
    **/
    @:keep
    static public function addLineInfo( _f:stdgo.StdGoTypes.Ref<File>, _offset:stdgo.StdGoTypes.GoInt, _filename:stdgo.GoString, _line:stdgo.StdGoTypes.GoInt):Void {
        @:recv var _f:stdgo.StdGoTypes.Ref<File> = _f;
        _f.addLineColumnInfo(_offset, _filename?.__copy__(), _line, (1 : stdgo.StdGoTypes.GoInt));
    }
    /**
        // LineStart returns the Pos value of the start of the specified line.
        // It ignores any alternative positions set using AddLineColumnInfo.
        // LineStart panics if the 1-based line number is invalid.
    **/
    @:keep
    static public function lineStart( _f:stdgo.StdGoTypes.Ref<File>, _line:stdgo.StdGoTypes.GoInt):Pos {
        @:recv var _f:stdgo.StdGoTypes.Ref<File> = _f;
        var __deferstack__:Array<Void -> Void> = [];
        if (_line < (1 : stdgo.StdGoTypes.GoInt)) {
            throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("invalid line number %d (should be >= 1)" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_line)));
        };
        try {
            _f._mutex.lock();
            __deferstack__.unshift(() -> _f._mutex.unlock());
            if (_line > (_f._lines.length)) {
                throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("invalid line number %d (should be < %d)" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_line), stdgo.Go.toInterface((_f._lines.length))));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return (_f._base + _f._lines[(_line - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] : Pos);
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return ((0 : stdgo.StdGoTypes.GoInt) : stdgo.go.token.Token.Pos);
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return ((0 : stdgo.StdGoTypes.GoInt) : stdgo.go.token.Token.Pos);
        };
    }
    /**
        // SetLinesForContent sets the line offsets for the given file content.
        // It ignores position-altering //line comments.
    **/
    @:keep
    static public function setLinesForContent( _f:stdgo.StdGoTypes.Ref<File>, _content:stdgo.Slice<stdgo.StdGoTypes.GoByte>):Void {
        @:recv var _f:stdgo.StdGoTypes.Ref<File> = _f;
        var _lines:stdgo.Slice<stdgo.StdGoTypes.GoInt> = (null : stdgo.Slice<stdgo.StdGoTypes.GoInt>);
        var _line:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        for (_offset => _b in _content) {
            if (_line >= (0 : stdgo.StdGoTypes.GoInt)) {
                _lines = (_lines.__append__(_line));
            };
            _line = (-1 : stdgo.StdGoTypes.GoInt);
            if (_b == ((10 : stdgo.StdGoTypes.GoUInt8))) {
                _line = _offset + (1 : stdgo.StdGoTypes.GoInt);
            };
        };
        _f._mutex.lock();
        _f._lines = _lines;
        _f._mutex.unlock();
    }
    /**
        // SetLines sets the line offsets for a file and reports whether it succeeded.
        // The line offsets are the offsets of the first character of each line;
        // for instance for the content "ab\nc\n" the line offsets are {0, 3}.
        // An empty file has an empty line offset table.
        // Each line offset must be larger than the offset for the previous line
        // and smaller than the file size; otherwise SetLines fails and returns
        // false.
        // Callers must not mutate the provided slice after SetLines returns.
    **/
    @:keep
    static public function setLines( _f:stdgo.StdGoTypes.Ref<File>, _lines:stdgo.Slice<stdgo.StdGoTypes.GoInt>):Bool {
        @:recv var _f:stdgo.StdGoTypes.Ref<File> = _f;
        var _size:stdgo.StdGoTypes.GoInt = _f._size;
        for (_i => _offset in _lines) {
            if (((_i > (0 : stdgo.StdGoTypes.GoInt)) && (_offset <= _lines[(_i - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)])) || (_size <= _offset)) {
                return false;
            };
        };
        _f._mutex.lock();
        _f._lines = _lines;
        _f._mutex.unlock();
        return true;
    }
    /**
        // Lines returns the effective line offset table of the form described by SetLines.
        // Callers must not mutate the result.
    **/
    @:keep
    static public function lines( _f:stdgo.StdGoTypes.Ref<File>):stdgo.Slice<stdgo.StdGoTypes.GoInt> {
        @:recv var _f:stdgo.StdGoTypes.Ref<File> = _f;
        _f._mutex.lock();
        var _lines = _f._lines;
        _f._mutex.unlock();
        return _lines;
    }
    /**
        // MergeLine merges a line with the following line. It is akin to replacing
        // the newline character at the end of the line with a space (to not change the
        // remaining offsets). To obtain the line number, consult e.g. Position.Line.
        // MergeLine will panic if given an invalid line number.
    **/
    @:keep
    static public function mergeLine( _f:stdgo.StdGoTypes.Ref<File>, _line:stdgo.StdGoTypes.GoInt):Void {
        @:recv var _f:stdgo.StdGoTypes.Ref<File> = _f;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (_line < (1 : stdgo.StdGoTypes.GoInt)) {
                throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("invalid line number %d (should be >= 1)" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_line)));
            };
            _f._mutex.lock();
            __deferstack__.unshift(() -> _f._mutex.unlock());
            if (_line >= (_f._lines.length)) {
                throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("invalid line number %d (should be < %d)" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_line), stdgo.Go.toInterface((_f._lines.length))));
            };
            stdgo.Go.copySlice((_f._lines.__slice__(_line) : stdgo.Slice<stdgo.StdGoTypes.GoInt>), (_f._lines.__slice__(_line + (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>));
            _f._lines = (_f._lines.__slice__(0, (_f._lines.length) - (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>);
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    /**
        // AddLine adds the line offset for a new line.
        // The line offset must be larger than the offset for the previous line
        // and smaller than the file size; otherwise the line offset is ignored.
    **/
    @:keep
    static public function addLine( _f:stdgo.StdGoTypes.Ref<File>, _offset:stdgo.StdGoTypes.GoInt):Void {
        @:recv var _f:stdgo.StdGoTypes.Ref<File> = _f;
        _f._mutex.lock();
        {
            var _i:stdgo.StdGoTypes.GoInt = (_f._lines.length);
            if (((_i == (0 : stdgo.StdGoTypes.GoInt)) || (_f._lines[(_i - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] < _offset)) && (_offset < _f._size)) {
                _f._lines = (_f._lines.__append__(_offset));
            };
        };
        _f._mutex.unlock();
    }
    /**
        // LineCount returns the number of lines in file f.
    **/
    @:keep
    static public function lineCount( _f:stdgo.StdGoTypes.Ref<File>):stdgo.StdGoTypes.GoInt {
        @:recv var _f:stdgo.StdGoTypes.Ref<File> = _f;
        _f._mutex.lock();
        var _n:stdgo.StdGoTypes.GoInt = (_f._lines.length);
        _f._mutex.unlock();
        return _n;
    }
    /**
        // Size returns the size of file f as registered with AddFile.
    **/
    @:keep
    static public function size( _f:stdgo.StdGoTypes.Ref<File>):stdgo.StdGoTypes.GoInt {
        @:recv var _f:stdgo.StdGoTypes.Ref<File> = _f;
        return _f._size;
    }
    /**
        // Base returns the base offset of file f as registered with AddFile.
    **/
    @:keep
    static public function base( _f:stdgo.StdGoTypes.Ref<File>):stdgo.StdGoTypes.GoInt {
        @:recv var _f:stdgo.StdGoTypes.Ref<File> = _f;
        return _f._base;
    }
    /**
        // Name returns the file name of file f as registered with AddFile.
    **/
    @:keep
    static public function name( _f:stdgo.StdGoTypes.Ref<File>):stdgo.GoString {
        @:recv var _f:stdgo.StdGoTypes.Ref<File> = _f;
        return _f._name?.__copy__();
    }
}
class FileSet_asInterface {
    /**
        // Write calls encode to serialize the file set s.
    **/
    @:keep
    public dynamic function write(_encode:stdgo.StdGoTypes.AnyInterface -> stdgo.Error):stdgo.Error return __self__.value.write(_encode);
    /**
        // Read calls decode to deserialize a file set into s; s must not be nil.
    **/
    @:keep
    public dynamic function read(_decode:stdgo.StdGoTypes.AnyInterface -> stdgo.Error):stdgo.Error return __self__.value.read(_decode);
    /**
        // Position converts a Pos p in the fileset into a Position value.
        // Calling s.Position(p) is equivalent to calling s.PositionFor(p, true).
    **/
    @:keep
    public dynamic function position(_p:Pos):Position return __self__.value.position(_p);
    /**
        // PositionFor converts a Pos p in the fileset into a Position value.
        // If adjusted is set, the position may be adjusted by position-altering
        // //line comments; otherwise those comments are ignored.
        // p must be a Pos value in s or NoPos.
    **/
    @:keep
    public dynamic function positionFor(_p:Pos, _adjusted:Bool):Position return __self__.value.positionFor(_p, _adjusted);
    /**
        // File returns the file that contains the position p.
        // If no such file is found (for instance for p == NoPos),
        // the result is nil.
    **/
    @:keep
    public dynamic function file(_p:Pos):stdgo.StdGoTypes.Ref<File> return __self__.value.file(_p);
    @:keep
    public dynamic function _file(_p:Pos):stdgo.StdGoTypes.Ref<File> return __self__.value._file(_p);
    /**
        // Iterate calls f for the files in the file set in the order they were added
        // until f returns false.
    **/
    @:keep
    public dynamic function iterate(_f:stdgo.StdGoTypes.Ref<File> -> Bool):Void __self__.value.iterate(_f);
    /**
        // RemoveFile removes a file from the FileSet so that subsequent
        // queries for its Pos interval yield a negative result.
        // This reduces the memory usage of a long-lived FileSet that
        // encounters an unbounded stream of files.
        //
        // Removing a file that does not belong to the set has no effect.
    **/
    @:keep
    public dynamic function removeFile(_file:stdgo.StdGoTypes.Ref<File>):Void __self__.value.removeFile(_file);
    /**
        // AddFile adds a new file with a given filename, base offset, and file size
        // to the file set s and returns the file. Multiple files may have the same
        // name. The base offset must not be smaller than the FileSet's Base(), and
        // size must not be negative. As a special case, if a negative base is provided,
        // the current value of the FileSet's Base() is used instead.
        //
        // Adding the file will set the file set's Base() value to base + size + 1
        // as the minimum base value for the next file. The following relationship
        // exists between a Pos value p for a given file offset offs:
        //
        //	int(p) = base + offs
        //
        // with offs in the range [0, size] and thus p in the range [base, base+size].
        // For convenience, File.Pos may be used to create file-specific position
        // values from a file offset.
    **/
    @:keep
    public dynamic function addFile(_filename:stdgo.GoString, _base:stdgo.StdGoTypes.GoInt, _size:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.Ref<File> return __self__.value.addFile(_filename, _base, _size);
    /**
        // Base returns the minimum base offset that must be provided to
        // AddFile when adding the next file.
    **/
    @:keep
    public dynamic function base():stdgo.StdGoTypes.GoInt return __self__.value.base();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<FileSet>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.token.Token.FileSet_asInterface) class FileSet_static_extension {
    /**
        // Write calls encode to serialize the file set s.
    **/
    @:keep
    static public function write( _s:stdgo.StdGoTypes.Ref<FileSet>, _encode:stdgo.StdGoTypes.AnyInterface -> stdgo.Error):stdgo.Error {
        @:recv var _s:stdgo.StdGoTypes.Ref<FileSet> = _s;
        var _ss:T_serializedFileSet = ({} : stdgo.go.token.Token.T_serializedFileSet);
        _s._mutex.lock();
        _ss.base = _s._base;
        var _files = new stdgo.Slice<stdgo.go.token.Token.T_serializedFile>((_s._files.length : stdgo.StdGoTypes.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_s._files.length : stdgo.StdGoTypes.GoInt).toBasic() > 0 ? (_s._files.length : stdgo.StdGoTypes.GoInt).toBasic() : 0 : stdgo.StdGoTypes.GoInt).toBasic()) ({} : stdgo.go.token.Token.T_serializedFile)]);
        for (_i => _f in _s._files) {
            _f._mutex.lock();
            _files[(_i : stdgo.StdGoTypes.GoInt)] = ({ name : _f._name?.__copy__(), base : _f._base, size : _f._size, lines : ((null : stdgo.Slice<stdgo.StdGoTypes.GoInt>).__append__(..._f._lines.__toArray__())), infos : (((null : stdgo.Slice<stdgo.go.token.Token.T_lineInfo>) : stdgo.Slice<T_lineInfo>).__append__(..._f._infos.__toArray__())) } : T_serializedFile);
            _f._mutex.unlock();
        };
        _ss.files = _files;
        _s._mutex.unlock();
        return _encode(stdgo.Go.toInterface(_ss));
    }
    /**
        // Read calls decode to deserialize a file set into s; s must not be nil.
    **/
    @:keep
    static public function read( _s:stdgo.StdGoTypes.Ref<FileSet>, _decode:stdgo.StdGoTypes.AnyInterface -> stdgo.Error):stdgo.Error {
        @:recv var _s:stdgo.StdGoTypes.Ref<FileSet> = _s;
        var _ss:T_serializedFileSet = ({} : stdgo.go.token.Token.T_serializedFileSet);
        {
            var _err:stdgo.Error = _decode(stdgo.Go.toInterface((stdgo.Go.setRef(_ss) : stdgo.StdGoTypes.Ref<stdgo.go.token.Token.T_serializedFileSet>)));
            if (_err != null) {
                return _err;
            };
        };
        _s._mutex.lock();
        _s._base = _ss.base;
        var _files = new stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.go.token.Token.File>>((_ss.files.length : stdgo.StdGoTypes.GoInt).toBasic(), 0);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (_ss.files.length), _i++, {
                var _f = (stdgo.Go.setRef(_ss.files[(_i : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.go.token.Token.T_serializedFile>);
                _files[(_i : stdgo.StdGoTypes.GoInt)] = (stdgo.Go.setRef(({ _name : _f.name?.__copy__(), _base : _f.base, _size : _f.size, _lines : _f.lines, _infos : _f.infos } : File)) : stdgo.StdGoTypes.Ref<stdgo.go.token.Token.File>);
            });
        };
        _s._files = _files;
        _s._last.store(({} : stdgo.go.token.Token.File), null);
        _s._mutex.unlock();
        return (null : stdgo.Error);
    }
    /**
        // Position converts a Pos p in the fileset into a Position value.
        // Calling s.Position(p) is equivalent to calling s.PositionFor(p, true).
    **/
    @:keep
    static public function position( _s:stdgo.StdGoTypes.Ref<FileSet>, _p:Pos):Position {
        @:recv var _s:stdgo.StdGoTypes.Ref<FileSet> = _s;
        var _pos:Position = ({} : stdgo.go.token.Token.Position);
        return _s.positionFor(_p, true)?.__copy__();
    }
    /**
        // PositionFor converts a Pos p in the fileset into a Position value.
        // If adjusted is set, the position may be adjusted by position-altering
        // //line comments; otherwise those comments are ignored.
        // p must be a Pos value in s or NoPos.
    **/
    @:keep
    static public function positionFor( _s:stdgo.StdGoTypes.Ref<FileSet>, _p:Pos, _adjusted:Bool):Position {
        @:recv var _s:stdgo.StdGoTypes.Ref<FileSet> = _s;
        var _pos:Position = ({} : stdgo.go.token.Token.Position);
        if (_p != ((0 : stdgo.go.token.Token.Pos))) {
            {
                var _f = _s._file(_p);
                if (_f != null && ((_f : Dynamic).__nil__ == null || !(_f : Dynamic).__nil__)) {
                    return _f._position(_p, _adjusted)?.__copy__();
                };
            };
        };
        return _pos;
    }
    /**
        // File returns the file that contains the position p.
        // If no such file is found (for instance for p == NoPos),
        // the result is nil.
    **/
    @:keep
    static public function file( _s:stdgo.StdGoTypes.Ref<FileSet>, _p:Pos):stdgo.StdGoTypes.Ref<File> {
        @:recv var _s:stdgo.StdGoTypes.Ref<FileSet> = _s;
        var _f:stdgo.StdGoTypes.Ref<File> = (null : stdgo.StdGoTypes.Ref<stdgo.go.token.Token.File>);
        if (_p != ((0 : stdgo.go.token.Token.Pos))) {
            _f = _s._file(_p);
        };
        return _f;
    }
    @:keep
    static public function _file( _s:stdgo.StdGoTypes.Ref<FileSet>, _p:Pos):stdgo.StdGoTypes.Ref<File> {
        @:recv var _s:stdgo.StdGoTypes.Ref<FileSet> = _s;
        var __deferstack__:Array<Void -> Void> = [];
        {
            var _f = _s._last.load(({} : stdgo.go.token.Token.File));
            if ((((_f != null) && ((_f : Dynamic).__nil__ == null || !(_f : Dynamic).__nil__)) && (_f._base <= (_p : stdgo.StdGoTypes.GoInt))) && ((_p : stdgo.StdGoTypes.GoInt) <= (_f._base + _f._size))) {
                return _f;
            };
        };
        try {
            _s._mutex.rlock();
            __deferstack__.unshift(() -> _s._mutex.runlock());
            {
                var _i:stdgo.StdGoTypes.GoInt = _searchFiles(_s._files, (_p : stdgo.StdGoTypes.GoInt));
                if (_i >= (0 : stdgo.StdGoTypes.GoInt)) {
                    var _f = _s._files[(_i : stdgo.StdGoTypes.GoInt)];
                    if ((_p : stdgo.StdGoTypes.GoInt) <= (_f._base + _f._size)) {
                        _s._last.store(({} : stdgo.go.token.Token.File), _f);
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return _f;
                        };
                    };
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return null;
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return (null : stdgo.StdGoTypes.Ref<stdgo.go.token.Token.File>);
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return (null : stdgo.StdGoTypes.Ref<stdgo.go.token.Token.File>);
        };
    }
    /**
        // Iterate calls f for the files in the file set in the order they were added
        // until f returns false.
    **/
    @:keep
    static public function iterate( _s:stdgo.StdGoTypes.Ref<FileSet>, _f:stdgo.StdGoTypes.Ref<File> -> Bool):Void {
        @:recv var _s:stdgo.StdGoTypes.Ref<FileSet> = _s;
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(true, _i++, {
                var _file:stdgo.StdGoTypes.Ref<File> = (null : stdgo.StdGoTypes.Ref<stdgo.go.token.Token.File>);
                _s._mutex.rlock();
                if (_i < (_s._files.length)) {
                    _file = _s._files[(_i : stdgo.StdGoTypes.GoInt)];
                };
                _s._mutex.runlock();
                if (((_file == null) || (_file : Dynamic).__nil__) || !_f(_file)) {
                    break;
                };
            });
        };
    }
    /**
        // RemoveFile removes a file from the FileSet so that subsequent
        // queries for its Pos interval yield a negative result.
        // This reduces the memory usage of a long-lived FileSet that
        // encounters an unbounded stream of files.
        //
        // Removing a file that does not belong to the set has no effect.
    **/
    @:keep
    static public function removeFile( _s:stdgo.StdGoTypes.Ref<FileSet>, _file:stdgo.StdGoTypes.Ref<File>):Void {
        @:recv var _s:stdgo.StdGoTypes.Ref<FileSet> = _s;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _s._last.compareAndSwap(({} : stdgo.go.token.Token.File), _file, null);
            _s._mutex.lock();
            __deferstack__.unshift(() -> _s._mutex.unlock());
            {
                var _i:stdgo.StdGoTypes.GoInt = _searchFiles(_s._files, _file._base);
                if ((_i >= (0 : stdgo.StdGoTypes.GoInt)) && (_s._files[(_i : stdgo.StdGoTypes.GoInt)] == _file)) {
                    var _last = (stdgo.Go.setRef(_s._files[((_s._files.length) - (1 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)]) : stdgo.StdGoTypes.Ref<stdgo.StdGoTypes.Ref<stdgo.go.token.Token.File>>);
                    _s._files = ((_s._files.__slice__(0, _i) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.go.token.Token.File>>).__append__(...(_s._files.__slice__(_i + (1 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.Ref<stdgo.go.token.Token.File>>).__toArray__()));
                    _last = null;
                };
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
    /**
        // AddFile adds a new file with a given filename, base offset, and file size
        // to the file set s and returns the file. Multiple files may have the same
        // name. The base offset must not be smaller than the FileSet's Base(), and
        // size must not be negative. As a special case, if a negative base is provided,
        // the current value of the FileSet's Base() is used instead.
        //
        // Adding the file will set the file set's Base() value to base + size + 1
        // as the minimum base value for the next file. The following relationship
        // exists between a Pos value p for a given file offset offs:
        //
        //	int(p) = base + offs
        //
        // with offs in the range [0, size] and thus p in the range [base, base+size].
        // For convenience, File.Pos may be used to create file-specific position
        // values from a file offset.
    **/
    @:keep
    static public function addFile( _s:stdgo.StdGoTypes.Ref<FileSet>, _filename:stdgo.GoString, _base:stdgo.StdGoTypes.GoInt, _size:stdgo.StdGoTypes.GoInt):stdgo.StdGoTypes.Ref<File> {
        @:recv var _s:stdgo.StdGoTypes.Ref<FileSet> = _s;
        var __deferstack__:Array<Void -> Void> = [];
        var _f = (stdgo.Go.setRef(({ _name : _filename?.__copy__(), _size : _size, _lines : (new stdgo.Slice<stdgo.StdGoTypes.GoInt>(1, 1, (0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoInt>) } : File)) : stdgo.StdGoTypes.Ref<stdgo.go.token.Token.File>);
        try {
            _s._mutex.lock();
            __deferstack__.unshift(() -> _s._mutex.unlock());
            if (_base < (0 : stdgo.StdGoTypes.GoInt)) {
                _base = _s._base;
            };
            if (_base < _s._base) {
                throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("invalid base %d (should be >= %d)" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_base), stdgo.Go.toInterface(_s._base)));
            };
            _f._base = _base;
            if (_size < (0 : stdgo.StdGoTypes.GoInt)) {
                throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("invalid size %d (should be >= 0)" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_size)));
            };
            _base = _base + (_size + (1 : stdgo.StdGoTypes.GoInt));
            if (_base < (0 : stdgo.StdGoTypes.GoInt)) {
                throw stdgo.Go.toInterface(("token.Pos offset overflow (> 2G of source code in file set)" : stdgo.GoString));
            };
            _s._base = _base;
            _s._files = (_s._files.__append__(_f));
            _s._last.store(({} : stdgo.go.token.Token.File), _f);
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _f;
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return (null : stdgo.StdGoTypes.Ref<stdgo.go.token.Token.File>);
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return (null : stdgo.StdGoTypes.Ref<stdgo.go.token.Token.File>);
        };
    }
    /**
        // Base returns the minimum base offset that must be provided to
        // AddFile when adding the next file.
    **/
    @:keep
    static public function base( _s:stdgo.StdGoTypes.Ref<FileSet>):stdgo.StdGoTypes.GoInt {
        @:recv var _s:stdgo.StdGoTypes.Ref<FileSet> = _s;
        _s._mutex.rlock();
        var _b:stdgo.StdGoTypes.GoInt = _s._base;
        _s._mutex.runlock();
        return _b;
    }
}
class Pos_asInterface {
    /**
        // IsValid reports whether the position is valid.
    **/
    @:keep
    public dynamic function isValid():Bool return __self__.value.isValid();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Pos>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.token.Token.Pos_asInterface) class Pos_static_extension {
    /**
        // IsValid reports whether the position is valid.
    **/
    @:keep
    static public function isValid( _p:Pos):Bool {
        @:recv var _p:Pos = _p;
        return _p != ((0 : stdgo.go.token.Token.Pos));
    }
}
class Token_asInterface {
    /**
        // IsKeyword returns true for tokens corresponding to keywords;
        // it returns false otherwise.
    **/
    @:keep
    public dynamic function isKeyword():Bool return __self__.value.isKeyword();
    /**
        // IsOperator returns true for tokens corresponding to operators and
        // delimiters; it returns false otherwise.
    **/
    @:keep
    public dynamic function isOperator():Bool return __self__.value.isOperator();
    /**
        // IsLiteral returns true for tokens corresponding to identifiers
        // and basic type literals; it returns false otherwise.
    **/
    @:keep
    public dynamic function isLiteral():Bool return __self__.value.isLiteral();
    /**
        // Precedence returns the operator precedence of the binary
        // operator op. If op is not a binary operator, the result
        // is LowestPrecedence.
    **/
    @:keep
    public dynamic function precedence():stdgo.StdGoTypes.GoInt return __self__.value.precedence();
    /**
        // String returns the string corresponding to the token tok.
        // For operators, delimiters, and keywords the string is the actual
        // token character sequence (e.g., for the token ADD, the string is
        // "+"). For all other tokens the string corresponds to the token
        // constant name (e.g. for the token IDENT, the string is "IDENT").
    **/
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Token>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.go.token.Token.Token_asInterface) class Token_static_extension {
    /**
        // IsKeyword returns true for tokens corresponding to keywords;
        // it returns false otherwise.
    **/
    @:keep
    static public function isKeyword( _tok:Token):Bool {
        @:recv var _tok:Token = _tok;
        return ((60 : stdgo.go.token.Token.Token) < _tok) && (_tok < (86 : stdgo.go.token.Token.Token));
    }
    /**
        // IsOperator returns true for tokens corresponding to operators and
        // delimiters; it returns false otherwise.
    **/
    @:keep
    static public function isOperator( _tok:Token):Bool {
        @:recv var _tok:Token = _tok;
        return (((11 : stdgo.go.token.Token.Token) < _tok) && (_tok < (59 : stdgo.go.token.Token.Token))) || (_tok == (88 : stdgo.go.token.Token.Token));
    }
    /**
        // IsLiteral returns true for tokens corresponding to identifiers
        // and basic type literals; it returns false otherwise.
    **/
    @:keep
    static public function isLiteral( _tok:Token):Bool {
        @:recv var _tok:Token = _tok;
        return ((3 : stdgo.go.token.Token.Token) < _tok) && (_tok < (10 : stdgo.go.token.Token.Token));
    }
    /**
        // Precedence returns the operator precedence of the binary
        // operator op. If op is not a binary operator, the result
        // is LowestPrecedence.
    **/
    @:keep
    static public function precedence( _op:Token):stdgo.StdGoTypes.GoInt {
        @:recv var _op:Token = _op;
        {
            final __value__ = _op;
            if (__value__ == ((35 : stdgo.go.token.Token.Token))) {
                return (1 : stdgo.StdGoTypes.GoInt);
            } else if (__value__ == ((34 : stdgo.go.token.Token.Token))) {
                return (2 : stdgo.StdGoTypes.GoInt);
            } else if (__value__ == ((39 : stdgo.go.token.Token.Token)) || __value__ == ((44 : stdgo.go.token.Token.Token)) || __value__ == ((40 : stdgo.go.token.Token.Token)) || __value__ == ((45 : stdgo.go.token.Token.Token)) || __value__ == ((41 : stdgo.go.token.Token.Token)) || __value__ == ((46 : stdgo.go.token.Token.Token))) {
                return (3 : stdgo.StdGoTypes.GoInt);
            } else if (__value__ == ((12 : stdgo.go.token.Token.Token)) || __value__ == ((13 : stdgo.go.token.Token.Token)) || __value__ == ((18 : stdgo.go.token.Token.Token)) || __value__ == ((19 : stdgo.go.token.Token.Token))) {
                return (4 : stdgo.StdGoTypes.GoInt);
            } else if (__value__ == ((14 : stdgo.go.token.Token.Token)) || __value__ == ((15 : stdgo.go.token.Token.Token)) || __value__ == ((16 : stdgo.go.token.Token.Token)) || __value__ == ((20 : stdgo.go.token.Token.Token)) || __value__ == ((21 : stdgo.go.token.Token.Token)) || __value__ == ((17 : stdgo.go.token.Token.Token)) || __value__ == ((22 : stdgo.go.token.Token.Token))) {
                return (5 : stdgo.StdGoTypes.GoInt);
            };
        };
        return (0 : stdgo.StdGoTypes.GoInt);
    }
    /**
        // String returns the string corresponding to the token tok.
        // For operators, delimiters, and keywords the string is the actual
        // token character sequence (e.g., for the token ADD, the string is
        // "+"). For all other tokens the string corresponds to the token
        // constant name (e.g. for the token IDENT, the string is "IDENT").
    **/
    @:keep
    static public function string( _tok:Token):stdgo.GoString {
        @:recv var _tok:Token = _tok;
        var _s:stdgo.GoString = stdgo.Go.str()?.__copy__();
        if (((0 : stdgo.go.token.Token.Token) <= _tok) && (_tok < (_tokens.length : Token))) {
            _s = _tokens[(_tok : stdgo.StdGoTypes.GoInt)]?.__copy__();
        };
        if (_s == (stdgo.Go.str())) {
            _s = ("token(" : stdgo.GoString) + stdgo.strconv.Strconv.itoa((_tok : stdgo.StdGoTypes.GoInt))?.__copy__() + (")" : stdgo.GoString)?.__copy__()?.__copy__();
        };
        return _s?.__copy__();
    }
}

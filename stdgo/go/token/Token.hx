package stdgo.go.token;
/**
    // Package token defines constants representing the lexical tokens of the Go
    // programming language and basic operations on tokens (printing, predicates).
**/
private var __go2hxdoc__package : Bool;
final noPos : stdgo._internal.go.token.Token.Pos = stdgo._internal.go.token.Token.noPos;
final illegal : stdgo._internal.go.token.Token.Token = stdgo._internal.go.token.Token.illegal;
final eof = stdgo._internal.go.token.Token.eof;
final comment = stdgo._internal.go.token.Token.comment;
final ident = stdgo._internal.go.token.Token.ident;
final int_ = stdgo._internal.go.token.Token.int_;
final float_ = stdgo._internal.go.token.Token.float_;
final imag = stdgo._internal.go.token.Token.imag;
final char = stdgo._internal.go.token.Token.char;
final string = stdgo._internal.go.token.Token.string;
final add = stdgo._internal.go.token.Token.add;
final sub = stdgo._internal.go.token.Token.sub;
final mul = stdgo._internal.go.token.Token.mul;
final quo = stdgo._internal.go.token.Token.quo;
final rem = stdgo._internal.go.token.Token.rem;
final and = stdgo._internal.go.token.Token.and;
final or = stdgo._internal.go.token.Token.or;
final xor = stdgo._internal.go.token.Token.xor;
final shl = stdgo._internal.go.token.Token.shl;
final shr = stdgo._internal.go.token.Token.shr;
final and_NOT = stdgo._internal.go.token.Token.and_NOT;
final add_ASSIGN = stdgo._internal.go.token.Token.add_ASSIGN;
final sub_ASSIGN = stdgo._internal.go.token.Token.sub_ASSIGN;
final mul_ASSIGN = stdgo._internal.go.token.Token.mul_ASSIGN;
final quo_ASSIGN = stdgo._internal.go.token.Token.quo_ASSIGN;
final rem_ASSIGN = stdgo._internal.go.token.Token.rem_ASSIGN;
final and_ASSIGN = stdgo._internal.go.token.Token.and_ASSIGN;
final or_ASSIGN = stdgo._internal.go.token.Token.or_ASSIGN;
final xor_ASSIGN = stdgo._internal.go.token.Token.xor_ASSIGN;
final shl_ASSIGN = stdgo._internal.go.token.Token.shl_ASSIGN;
final shr_ASSIGN = stdgo._internal.go.token.Token.shr_ASSIGN;
final and_NOT_ASSIGN = stdgo._internal.go.token.Token.and_NOT_ASSIGN;
final land = stdgo._internal.go.token.Token.land;
final lor = stdgo._internal.go.token.Token.lor;
final arrow = stdgo._internal.go.token.Token.arrow;
final inc = stdgo._internal.go.token.Token.inc;
final dec = stdgo._internal.go.token.Token.dec;
final eql = stdgo._internal.go.token.Token.eql;
final lss = stdgo._internal.go.token.Token.lss;
final gtr = stdgo._internal.go.token.Token.gtr;
final assign = stdgo._internal.go.token.Token.assign;
final not = stdgo._internal.go.token.Token.not;
final neq = stdgo._internal.go.token.Token.neq;
final leq = stdgo._internal.go.token.Token.leq;
final geq = stdgo._internal.go.token.Token.geq;
final define = stdgo._internal.go.token.Token.define;
final ellipsis = stdgo._internal.go.token.Token.ellipsis;
final lparen = stdgo._internal.go.token.Token.lparen;
final lbrack = stdgo._internal.go.token.Token.lbrack;
final lbrace = stdgo._internal.go.token.Token.lbrace;
final comma = stdgo._internal.go.token.Token.comma;
final period = stdgo._internal.go.token.Token.period;
final rparen = stdgo._internal.go.token.Token.rparen;
final rbrack = stdgo._internal.go.token.Token.rbrack;
final rbrace = stdgo._internal.go.token.Token.rbrace;
final semicolon = stdgo._internal.go.token.Token.semicolon;
final colon = stdgo._internal.go.token.Token.colon;
final break_ = stdgo._internal.go.token.Token.break_;
final case_ = stdgo._internal.go.token.Token.case_;
final chan = stdgo._internal.go.token.Token.chan;
final const = stdgo._internal.go.token.Token.const;
final continue_ = stdgo._internal.go.token.Token.continue_;
final default_ = stdgo._internal.go.token.Token.default_;
final defer = stdgo._internal.go.token.Token.defer;
final else_ = stdgo._internal.go.token.Token.else_;
final fallthrough = stdgo._internal.go.token.Token.fallthrough;
final for_ = stdgo._internal.go.token.Token.for_;
final func = stdgo._internal.go.token.Token.func;
final go = stdgo._internal.go.token.Token.go;
final goto = stdgo._internal.go.token.Token.goto;
final if_ = stdgo._internal.go.token.Token.if_;
final import_ = stdgo._internal.go.token.Token.import_;
final interface_ = stdgo._internal.go.token.Token.interface_;
final map_ = stdgo._internal.go.token.Token.map_;
final package_ = stdgo._internal.go.token.Token.package_;
final range = stdgo._internal.go.token.Token.range;
final return_ = stdgo._internal.go.token.Token.return_;
final select = stdgo._internal.go.token.Token.select;
final struct_ = stdgo._internal.go.token.Token.struct_;
final switch_ = stdgo._internal.go.token.Token.switch_;
final type = stdgo._internal.go.token.Token.type;
final var_ = stdgo._internal.go.token.Token.var_;
final tilde = stdgo._internal.go.token.Token.tilde;
final lowestPrec : haxe.UInt64 = stdgo._internal.go.token.Token.lowestPrec;
final unaryPrec : haxe.UInt64 = stdgo._internal.go.token.Token.unaryPrec;
final highestPrec : haxe.UInt64 = stdgo._internal.go.token.Token.highestPrec;
@:invalid typedef Position = Dynamic;
@:invalid typedef File = Dynamic;
@:invalid typedef T_lineInfo = Dynamic;
@:invalid typedef FileSet = Dynamic;
@:invalid typedef T_serializedFile = Dynamic;
@:invalid typedef T_serializedFileSet = Dynamic;
@:invalid typedef T__struct_0_asInterface = Dynamic;
@:invalid typedef T__struct_0_static_extension = Dynamic;
typedef T__struct_0 = stdgo._internal.go.token.Token.T__struct_0;
@:invalid typedef T__struct_1_asInterface = Dynamic;
@:invalid typedef T__struct_1_static_extension = Dynamic;
typedef T__struct_1 = stdgo._internal.go.token.Token.T__struct_1;
@:invalid typedef T__struct_2_asInterface = Dynamic;
@:invalid typedef T__struct_2_static_extension = Dynamic;
typedef T__struct_2 = stdgo._internal.go.token.Token.T__struct_2;
typedef Pos = stdgo._internal.go.token.Token.Pos;
typedef Token = stdgo._internal.go.token.Token.Token;
/**
    // NewFileSet creates a new file set.
**/
inline function newFileSet():FileSet throw "not implemented";
inline function benchmarkSearchInts(b:stdgo._internal.testing.Testing.B):Void throw "not implemented";
inline function testNoPos(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testPositions(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testLineInfo(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFiles(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // FileSet.File should return nil if Pos is past the end of the FileSet.
**/
inline function testFileSetPastEnd(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFileSetCacheUnlikely(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // issue 4345. Test that concurrent use of FileSet.Pos does not trigger a
    // race in the FileSet position cache.
**/
inline function testFileSetRace(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // issue 16548. Test that concurrent use of File.AddLine and FileSet.PositionFor
    // does not trigger a race in the FileSet position cache.
**/
inline function testFileSetRace2(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testPositionFor(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testLineStart(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testRemoveFile(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testFileAddLineColumnInfo(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testSerialization(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Lookup maps an identifier to its keyword token or IDENT (if not a keyword).
**/
inline function lookup(ident:String):Token throw "not implemented";
/**
    // IsExported reports whether name starts with an upper-case letter.
**/
inline function isExported(name:String):Bool throw "not implemented";
/**
    // IsKeyword reports whether name is a Go keyword, such as "func" or "return".
**/
inline function isKeyword(name:String):Bool throw "not implemented";
/**
    // IsIdentifier reports whether name is a Go identifier, that is, a non-empty
    // string made up of letters, digits, and underscores, where the first character
    // is not a digit. Keywords are not identifiers.
**/
inline function isIdentifier(name:String):Bool throw "not implemented";
inline function testIsIdentifier(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
@:invalid typedef Position_asInterface = Dynamic;
@:invalid typedef Position_static_extension = Dynamic;
@:invalid typedef File_asInterface = Dynamic;
@:invalid typedef File_static_extension = Dynamic;
@:invalid typedef FileSet_asInterface = Dynamic;
@:invalid typedef FileSet_static_extension = Dynamic;
@:invalid typedef Pos_asInterface = Dynamic;
@:invalid typedef Pos_static_extension = Dynamic;
@:invalid typedef Token_asInterface = Dynamic;
@:invalid typedef Token_static_extension = Dynamic;

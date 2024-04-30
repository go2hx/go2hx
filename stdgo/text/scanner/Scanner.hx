package stdgo.text.scanner;
/**
    Package scanner provides a scanner and tokenizer for UTF-8-encoded text.
    It takes an io.Reader providing the source, which then can be tokenized
    through repeated calls to the Scan function. For compatibility with
    existing tools, the NUL character is not allowed. If the first character
    in the source is a UTF-8 encoded byte order mark (BOM), it is discarded.
    
    By default, a Scanner skips white space and Go comments and recognizes all
    literals as defined by the Go language specification. It may be
    customized to recognize only a subset of those literals and to recognize
    different identifier and white space characters.
**/
private var __go2hxdoc__package : Bool;
final scanIdents : haxe.UInt64 = stdgo._internal.text.scanner.Scanner.scanIdents;
final scanInts : haxe.UInt64 = stdgo._internal.text.scanner.Scanner.scanInts;
final scanFloats : haxe.UInt64 = stdgo._internal.text.scanner.Scanner.scanFloats;
final scanChars : haxe.UInt64 = stdgo._internal.text.scanner.Scanner.scanChars;
final scanStrings : haxe.UInt64 = stdgo._internal.text.scanner.Scanner.scanStrings;
final scanRawStrings : haxe.UInt64 = stdgo._internal.text.scanner.Scanner.scanRawStrings;
final scanComments : haxe.UInt64 = stdgo._internal.text.scanner.Scanner.scanComments;
final skipComments : haxe.UInt64 = stdgo._internal.text.scanner.Scanner.skipComments;
final goTokens : haxe.UInt64 = stdgo._internal.text.scanner.Scanner.goTokens;
final eof : haxe.UInt64 = stdgo._internal.text.scanner.Scanner.eof;
final ident = stdgo._internal.text.scanner.Scanner.ident;
final int_ = stdgo._internal.text.scanner.Scanner.int_;
final float_ = stdgo._internal.text.scanner.Scanner.float_;
final char = stdgo._internal.text.scanner.Scanner.char;
final string = stdgo._internal.text.scanner.Scanner.string;
final rawString = stdgo._internal.text.scanner.Scanner.rawString;
final comment = stdgo._internal.text.scanner.Scanner.comment;
final goWhitespace : haxe.UInt64 = stdgo._internal.text.scanner.Scanner.goWhitespace;
@:invalid typedef Position = Dynamic;
@:invalid typedef Scanner = Dynamic;
@:invalid typedef StringReader = Dynamic;
@:invalid typedef T_token = Dynamic;
@:invalid typedef T_errReader = Dynamic;
@:invalid typedef T__struct_0_asInterface = Dynamic;
@:invalid typedef T__struct_0_static_extension = Dynamic;
typedef T__struct_0 = stdgo._internal.text.scanner.Scanner.T__struct_0;
@:invalid typedef T__struct_1_asInterface = Dynamic;
@:invalid typedef T__struct_1_static_extension = Dynamic;
typedef T__struct_1 = stdgo._internal.text.scanner.Scanner.T__struct_1;
typedef T_countReader = stdgo._internal.text.scanner.Scanner.T_countReader;
/**
    TokenString returns a printable string for a token or Unicode character.
**/
inline function tokenString(tok:Int):String throw "not implemented";
inline function testNext(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testScan(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testInvalidExponent(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testPosition(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testScanZeroMode(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testScanSelectedMask(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testScanCustomIdent(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testScanNext(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testScanWhitespace(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testError(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testIOError(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testPos(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testNextEOFHandling(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testScanEOFHandling(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testIssue29723(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testNumbers(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testIssue30320(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testIssue50909(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
@:invalid typedef Position_asInterface = Dynamic;
@:invalid typedef Position_static_extension = Dynamic;
@:invalid typedef Scanner_asInterface = Dynamic;
@:invalid typedef Scanner_static_extension = Dynamic;
@:invalid typedef StringReader_asInterface = Dynamic;
@:invalid typedef StringReader_static_extension = Dynamic;
@:invalid typedef T_errReader_asInterface = Dynamic;
@:invalid typedef T_errReader_static_extension = Dynamic;
@:invalid typedef T_countReader_asInterface = Dynamic;
@:invalid typedef T_countReader_static_extension = Dynamic;

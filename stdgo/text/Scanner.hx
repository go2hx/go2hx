package stdgo.text;
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
@:forward @:forward.new abstract Position(stdgo._internal.text.scanner.Scanner.Position) from stdgo._internal.text.scanner.Scanner.Position to stdgo._internal.text.scanner.Scanner.Position {

}
@:forward @:forward.new abstract Scanner(stdgo._internal.text.scanner.Scanner.Scanner) from stdgo._internal.text.scanner.Scanner.Scanner to stdgo._internal.text.scanner.Scanner.Scanner {

}
@:forward @:forward.new abstract StringReader(stdgo._internal.text.scanner.Scanner.StringReader) from stdgo._internal.text.scanner.Scanner.StringReader to stdgo._internal.text.scanner.Scanner.StringReader {

}
@:forward @:forward.new abstract T_token(stdgo._internal.text.scanner.Scanner.T_token) from stdgo._internal.text.scanner.Scanner.T_token to stdgo._internal.text.scanner.Scanner.T_token {

}
@:forward @:forward.new abstract T_errReader(stdgo._internal.text.scanner.Scanner.T_errReader) from stdgo._internal.text.scanner.Scanner.T_errReader to stdgo._internal.text.scanner.Scanner.T_errReader {

}
@:forward @:forward.new abstract T__struct_0_asInterface(stdgo._internal.text.scanner.Scanner.T__struct_0_asInterface) from stdgo._internal.text.scanner.Scanner.T__struct_0_asInterface to stdgo._internal.text.scanner.Scanner.T__struct_0_asInterface {

}
@:forward @:forward.new abstract T__struct_0_static_extension(stdgo._internal.text.scanner.Scanner.T__struct_0_static_extension) from stdgo._internal.text.scanner.Scanner.T__struct_0_static_extension to stdgo._internal.text.scanner.Scanner.T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.text.scanner.Scanner.T__struct_0;
@:forward @:forward.new abstract T__struct_1_asInterface(stdgo._internal.text.scanner.Scanner.T__struct_1_asInterface) from stdgo._internal.text.scanner.Scanner.T__struct_1_asInterface to stdgo._internal.text.scanner.Scanner.T__struct_1_asInterface {

}
@:forward @:forward.new abstract T__struct_1_static_extension(stdgo._internal.text.scanner.Scanner.T__struct_1_static_extension) from stdgo._internal.text.scanner.Scanner.T__struct_1_static_extension to stdgo._internal.text.scanner.Scanner.T__struct_1_static_extension {

}
typedef T__struct_1 = stdgo._internal.text.scanner.Scanner.T__struct_1;
typedef T_countReader = stdgo._internal.text.scanner.Scanner.T_countReader;
@:forward @:forward.new abstract Position_asInterface(stdgo._internal.text.scanner.Scanner.Position_asInterface) from stdgo._internal.text.scanner.Scanner.Position_asInterface to stdgo._internal.text.scanner.Scanner.Position_asInterface {

}
@:forward @:forward.new abstract Position_static_extension(stdgo._internal.text.scanner.Scanner.Position_static_extension) from stdgo._internal.text.scanner.Scanner.Position_static_extension to stdgo._internal.text.scanner.Scanner.Position_static_extension {

}
@:forward @:forward.new abstract Scanner_asInterface(stdgo._internal.text.scanner.Scanner.Scanner_asInterface) from stdgo._internal.text.scanner.Scanner.Scanner_asInterface to stdgo._internal.text.scanner.Scanner.Scanner_asInterface {

}
@:forward @:forward.new abstract Scanner_static_extension(stdgo._internal.text.scanner.Scanner.Scanner_static_extension) from stdgo._internal.text.scanner.Scanner.Scanner_static_extension to stdgo._internal.text.scanner.Scanner.Scanner_static_extension {

}
@:forward @:forward.new abstract StringReader_asInterface(stdgo._internal.text.scanner.Scanner.StringReader_asInterface) from stdgo._internal.text.scanner.Scanner.StringReader_asInterface to stdgo._internal.text.scanner.Scanner.StringReader_asInterface {

}
@:forward @:forward.new abstract StringReader_static_extension(stdgo._internal.text.scanner.Scanner.StringReader_static_extension) from stdgo._internal.text.scanner.Scanner.StringReader_static_extension to stdgo._internal.text.scanner.Scanner.StringReader_static_extension {

}
@:forward @:forward.new abstract T_errReader_asInterface(stdgo._internal.text.scanner.Scanner.T_errReader_asInterface) from stdgo._internal.text.scanner.Scanner.T_errReader_asInterface to stdgo._internal.text.scanner.Scanner.T_errReader_asInterface {

}
@:forward @:forward.new abstract T_errReader_static_extension(stdgo._internal.text.scanner.Scanner.T_errReader_static_extension) from stdgo._internal.text.scanner.Scanner.T_errReader_static_extension to stdgo._internal.text.scanner.Scanner.T_errReader_static_extension {

}
@:forward @:forward.new abstract T_countReader_asInterface(stdgo._internal.text.scanner.Scanner.T_countReader_asInterface) from stdgo._internal.text.scanner.Scanner.T_countReader_asInterface to stdgo._internal.text.scanner.Scanner.T_countReader_asInterface {

}
@:forward @:forward.new abstract T_countReader_static_extension(stdgo._internal.text.scanner.Scanner.T_countReader_static_extension) from stdgo._internal.text.scanner.Scanner.T_countReader_static_extension to stdgo._internal.text.scanner.Scanner.T_countReader_static_extension {

}
class Scanner {
    /**
        TokenString returns a printable string for a token or Unicode character.
    **/
    static public function tokenString(tok:StdTypes.Int):String {
        return stdgo._internal.text.scanner.Scanner.tokenString(tok);
    }
    static public function testNext(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.scanner.Scanner.testNext(t);
    }
    static public function testScan(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.scanner.Scanner.testScan(t);
    }
    static public function testInvalidExponent(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.scanner.Scanner.testInvalidExponent(t);
    }
    static public function testPosition(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.scanner.Scanner.testPosition(t);
    }
    static public function testScanZeroMode(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.scanner.Scanner.testScanZeroMode(t);
    }
    static public function testScanSelectedMask(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.scanner.Scanner.testScanSelectedMask(t);
    }
    static public function testScanCustomIdent(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.scanner.Scanner.testScanCustomIdent(t);
    }
    static public function testScanNext(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.scanner.Scanner.testScanNext(t);
    }
    static public function testScanWhitespace(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.scanner.Scanner.testScanWhitespace(t);
    }
    static public function testError(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.scanner.Scanner.testError(t);
    }
    static public function testIOError(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.scanner.Scanner.testIOError(t);
    }
    static public function testPos(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.scanner.Scanner.testPos(t);
    }
    static public function testNextEOFHandling(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.scanner.Scanner.testNextEOFHandling(t);
    }
    static public function testScanEOFHandling(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.scanner.Scanner.testScanEOFHandling(t);
    }
    static public function testIssue29723(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.scanner.Scanner.testIssue29723(t);
    }
    static public function testNumbers(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.scanner.Scanner.testNumbers(t);
    }
    static public function testIssue30320(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.scanner.Scanner.testIssue30320(t);
    }
    static public function testIssue50909(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.text.scanner.Scanner.testIssue50909(t);
    }
}

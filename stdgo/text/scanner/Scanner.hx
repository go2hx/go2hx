package stdgo.text.scanner;
var scanIdents : stdgo.GoUInt64 = 4i32;
var scanInts : stdgo.GoUInt64 = 8i32;
var scanFloats : stdgo.GoUInt64 = 16i32;
var scanChars : stdgo.GoUInt64 = 32i32;
var scanStrings : stdgo.GoUInt64 = 64i32;
var scanRawStrings : stdgo.GoUInt64 = 128i32;
var scanComments : stdgo.GoUInt64 = 256i32;
var skipComments : stdgo.GoUInt64 = 512i32;
var goTokens : stdgo.GoUInt64 = 1012i32;
var eOF : stdgo.GoUInt64 = -1i32;
var ident : stdgo.GoUInt64 = -2i32;
var int_ : stdgo.GoUInt64 = -3i32;
var float_ : stdgo.GoUInt64 = -4i32;
var char : stdgo.GoUInt64 = -5i32;
var string : stdgo.GoUInt64 = -6i32;
var rawString : stdgo.GoUInt64 = -7i32;
var comment : stdgo.GoUInt64 = -8i32;
var goWhitespace : stdgo.GoUInt64 = 4294977024i32;
typedef Position = stdgo._internal.text.scanner.Scanner_position.Position;
typedef Scanner_ = stdgo._internal.text.scanner.Scanner_scanner.Scanner;
typedef StringReader = stdgo._internal.text.scanner.Scanner_stringreader.StringReader;
typedef PositionPointer = stdgo._internal.text.scanner.Scanner_positionpointer.PositionPointer;
typedef ScannerPointer = stdgo._internal.text.scanner.Scanner_scannerpointer.ScannerPointer;
typedef StringReaderPointer = stdgo._internal.text.scanner.Scanner_stringreaderpointer.StringReaderPointer;
/**
    * Package scanner provides a scanner and tokenizer for UTF-8-encoded text.
    * It takes an io.Reader providing the source, which then can be tokenized
    * through repeated calls to the Scan function. For compatibility with
    * existing tools, the NUL character is not allowed. If the first character
    * in the source is a UTF-8 encoded byte order mark (BOM), it is discarded.
    * 
    * By default, a Scanner skips white space and Go comments and recognizes all
    * literals as defined by the Go language specification. It may be
    * customized to recognize only a subset of those literals and to recognize
    * different identifier and white space characters.
**/
class Scanner {
    /**
        * TokenString returns a printable string for a token or Unicode character.
    **/
    static public inline function tokenString(_tok:stdgo.GoInt32):stdgo.GoString return stdgo._internal.text.scanner.Scanner_tokenstring.tokenString(_tok);
    static public inline function testNext(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.text.scanner.Scanner_testnext.testNext(_t);
    static public inline function testScan(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.text.scanner.Scanner_testscan.testScan(_t);
    static public inline function testInvalidExponent(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.text.scanner.Scanner_testinvalidexponent.testInvalidExponent(_t);
    static public inline function testPosition(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.text.scanner.Scanner_testposition.testPosition(_t);
    static public inline function testScanZeroMode(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.text.scanner.Scanner_testscanzeromode.testScanZeroMode(_t);
    static public inline function testScanSelectedMask(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.text.scanner.Scanner_testscanselectedmask.testScanSelectedMask(_t);
    static public inline function testScanCustomIdent(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.text.scanner.Scanner_testscancustomident.testScanCustomIdent(_t);
    static public inline function testScanNext(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.text.scanner.Scanner_testscannext.testScanNext(_t);
    static public inline function testScanWhitespace(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.text.scanner.Scanner_testscanwhitespace.testScanWhitespace(_t);
    static public inline function testError(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.text.scanner.Scanner_testerror.testError(_t);
    static public inline function testIOError(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.text.scanner.Scanner_testioerror.testIOError(_t);
    static public inline function testPos(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.text.scanner.Scanner_testpos.testPos(_t);
    static public inline function testNextEOFHandling(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.text.scanner.Scanner_testnexteofhandling.testNextEOFHandling(_t);
    static public inline function testScanEOFHandling(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.text.scanner.Scanner_testscaneofhandling.testScanEOFHandling(_t);
    static public inline function testIssue29723(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.text.scanner.Scanner_testissue29723.testIssue29723(_t);
    static public inline function testNumbers(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.text.scanner.Scanner_testnumbers.testNumbers(_t);
    static public inline function testIssue30320(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.text.scanner.Scanner_testissue30320.testIssue30320(_t);
    static public inline function testIssue50909(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.text.scanner.Scanner_testissue50909.testIssue50909(_t);
}

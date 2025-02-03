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
class Scanner {
    /**
        TokenString returns a printable string for a token or Unicode character.
    **/
    static public inline function tokenString(_tok:StdTypes.Int):String {
        final _tok = (_tok : stdgo.GoInt32);
        return stdgo._internal.text.scanner.Scanner_tokenString.tokenString(_tok);
    }
    static public inline function testNext(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.text.scanner.Scanner_testNext.testNext(_t);
    }
    static public inline function testScan(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.text.scanner.Scanner_testScan.testScan(_t);
    }
    static public inline function testInvalidExponent(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.text.scanner.Scanner_testInvalidExponent.testInvalidExponent(_t);
    }
    static public inline function testPosition(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.text.scanner.Scanner_testPosition.testPosition(_t);
    }
    static public inline function testScanZeroMode(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.text.scanner.Scanner_testScanZeroMode.testScanZeroMode(_t);
    }
    static public inline function testScanSelectedMask(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.text.scanner.Scanner_testScanSelectedMask.testScanSelectedMask(_t);
    }
    static public inline function testScanCustomIdent(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.text.scanner.Scanner_testScanCustomIdent.testScanCustomIdent(_t);
    }
    static public inline function testScanNext(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.text.scanner.Scanner_testScanNext.testScanNext(_t);
    }
    static public inline function testScanWhitespace(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.text.scanner.Scanner_testScanWhitespace.testScanWhitespace(_t);
    }
    static public inline function testError(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.text.scanner.Scanner_testError.testError(_t);
    }
    static public inline function testIOError(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.text.scanner.Scanner_testIOError.testIOError(_t);
    }
    static public inline function testPos(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.text.scanner.Scanner_testPos.testPos(_t);
    }
    static public inline function testNextEOFHandling(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.text.scanner.Scanner_testNextEOFHandling.testNextEOFHandling(_t);
    }
    static public inline function testScanEOFHandling(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.text.scanner.Scanner_testScanEOFHandling.testScanEOFHandling(_t);
    }
    static public inline function testIssue29723(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.text.scanner.Scanner_testIssue29723.testIssue29723(_t);
    }
    static public inline function testNumbers(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.text.scanner.Scanner_testNumbers.testNumbers(_t);
    }
    static public inline function testIssue30320(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.text.scanner.Scanner_testIssue30320.testIssue30320(_t);
    }
    static public inline function testIssue50909(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.text.scanner.Scanner_testIssue50909.testIssue50909(_t);
    }
}

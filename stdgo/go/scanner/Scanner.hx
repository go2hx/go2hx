package stdgo.go.scanner;
var scanComments : Mode = 1i64;
typedef Error = stdgo._internal.go.scanner.Scanner_error.Error;
typedef Scanner_ = stdgo._internal.go.scanner.Scanner_scanner.Scanner;
typedef ErrorList = stdgo._internal.go.scanner.Scanner_errorlist.ErrorList;
typedef ErrorHandler = stdgo._internal.go.scanner.Scanner_errorhandler.ErrorHandler;
typedef Mode = stdgo._internal.go.scanner.Scanner_mode.Mode;
typedef ErrorPointer = stdgo._internal.go.scanner.Scanner_errorpointer.ErrorPointer;
typedef ScannerPointer = stdgo._internal.go.scanner.Scanner_scannerpointer.ScannerPointer;
typedef ErrorListPointer = stdgo._internal.go.scanner.Scanner_errorlistpointer.ErrorListPointer;
typedef ErrorHandlerPointer = stdgo._internal.go.scanner.Scanner_errorhandlerpointer.ErrorHandlerPointer;
typedef ModePointer = stdgo._internal.go.scanner.Scanner_modepointer.ModePointer;
/**
    * Package scanner implements a scanner for Go source text.
    * It takes a []byte as source which can then be tokenized
    * through repeated calls to the Scan method.
**/
class Scanner {
    /**
        * PrintError is a utility function that prints a list of errors to w,
        * one error per line, if the err parameter is an ErrorList. Otherwise
        * it prints the err string.
    **/
    static public inline function printError(_w:stdgo._internal.io.Io_writer.Writer, _err:stdgo.Error):Void stdgo._internal.go.scanner.Scanner_printerror.printError(_w, _err);
    /**
        * Verify that calling Scan() provides the correct results.
    **/
    static public inline function testScan(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.scanner.Scanner_testscan.testScan(_t);
    static public inline function testStripCR(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.scanner.Scanner_teststripcr.testStripCR(_t);
    static public inline function testSemicolons(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.scanner.Scanner_testsemicolons.testSemicolons(_t);
    /**
        * Verify that line directives are interpreted correctly.
    **/
    static public inline function testLineDirectives(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.scanner.Scanner_testlinedirectives.testLineDirectives(_t);
    /**
        * Verify that invalid line directives get the correct error message.
    **/
    static public inline function testInvalidLineDirectives(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.scanner.Scanner_testinvalidlinedirectives.testInvalidLineDirectives(_t);
    /**
        * Verify that initializing the same scanner more than once works correctly.
    **/
    static public inline function testInit(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.scanner.Scanner_testinit.testInit(_t);
    static public inline function testStdErrorHandler(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.scanner.Scanner_teststderrorhandler.testStdErrorHandler(_t);
    static public inline function testScanErrors(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.scanner.Scanner_testscanerrors.testScanErrors(_t);
    /**
        * Verify that no comments show up as literal values when skipping comments.
    **/
    static public inline function testIssue10213(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.scanner.Scanner_testissue10213.testIssue10213(_t);
    static public inline function testIssue28112(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.scanner.Scanner_testissue28112.testIssue28112(_t);
    static public inline function benchmarkScan(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.go.scanner.Scanner_benchmarkscan.benchmarkScan(_b);
    static public inline function benchmarkScanFiles(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.go.scanner.Scanner_benchmarkscanfiles.benchmarkScanFiles(_b);
    static public inline function testNumbers(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.go.scanner.Scanner_testnumbers.testNumbers(_t);
}

package stdgo.text.scanner_test;
import stdgo.text.scanner.Scanner;
/**
    
    
    
**/
var _tests : stdgo.Slice<stdgo.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo.testing.Testing.InternalTest>(
18,
18,
(new stdgo.testing.Testing.InternalTest(("TestNext" : stdgo.GoString), stdgo.text.scanner.Scanner.testNext) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScan" : stdgo.GoString), stdgo.text.scanner.Scanner.testScan) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestInvalidExponent" : stdgo.GoString), stdgo.text.scanner.Scanner.testInvalidExponent) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPosition" : stdgo.GoString), stdgo.text.scanner.Scanner.testPosition) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanZeroMode" : stdgo.GoString), stdgo.text.scanner.Scanner.testScanZeroMode) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanSelectedMask" : stdgo.GoString), stdgo.text.scanner.Scanner.testScanSelectedMask) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanCustomIdent" : stdgo.GoString), stdgo.text.scanner.Scanner.testScanCustomIdent) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanNext" : stdgo.GoString), stdgo.text.scanner.Scanner.testScanNext) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanWhitespace" : stdgo.GoString), stdgo.text.scanner.Scanner.testScanWhitespace) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestError" : stdgo.GoString), stdgo.text.scanner.Scanner.testError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIOError" : stdgo.GoString), stdgo.text.scanner.Scanner.testIOError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPos" : stdgo.GoString), stdgo.text.scanner.Scanner.testPos) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNextEOFHandling" : stdgo.GoString), stdgo.text.scanner.Scanner.testNextEOFHandling) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanEOFHandling" : stdgo.GoString), stdgo.text.scanner.Scanner.testScanEOFHandling) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIssue29723" : stdgo.GoString), stdgo.text.scanner.Scanner.testIssue29723) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNumbers" : stdgo.GoString), stdgo.text.scanner.Scanner.testNumbers) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIssue30320" : stdgo.GoString), stdgo.text.scanner.Scanner.testIssue30320) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIssue50909" : stdgo.GoString), stdgo.text.scanner.Scanner.testIssue50909) : stdgo.testing.Testing.InternalTest)) : stdgo.Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
var _benchmarks : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
var _fuzzTargets : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
var _examples : stdgo.Slice<stdgo.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo.testing.Testing.InternalExample>(4, 4, (new stdgo.testing.Testing.InternalExample(("Example" : stdgo.GoString), stdgo.text.scanner_test.Scanner_test.example, ("example:3:1: if\nexample:3:4: a\nexample:3:6: >\nexample:3:8: 10\nexample:3:11: {\nexample:4:2: someParsable\nexample:4:15: =\nexample:4:17: text\nexample:5:1: }\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("Example_isIdentRune" : stdgo.GoString), stdgo.text.scanner_test.Scanner_test.example_isIdentRune, ("default:1:1: %\ndefault:1:2: var1\ndefault:1:7: var2\ndefault:1:11: %\n\npercent:1:1: %var1\npercent:1:7: var2\npercent:1:11: %\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("Example_mode" : stdgo.GoString), stdgo.text.scanner_test.Scanner_test.example_mode, ("comments:2:5: // Comment begins at column 5.\ncomments:6:1: /*\nThis multiline comment\nshould be extracted in\nits entirety.\n*/\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("Example_whitespace" : stdgo.GoString), stdgo.text.scanner_test.Scanner_test.example_whitespace, ("[[aa ab ac ad] [ba bb bc bd] [ca cb cc cd] [da db dc dd]]\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample)) : stdgo.Slice<stdgo.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("text/scanner" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

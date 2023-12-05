package stdgo.go.printer_test;
import stdgo.go.printer.Printer;
/**
    
    
    
**/
var _tests : stdgo.Slice<stdgo.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo.testing.Testing.InternalTest>(
17,
17,
(new stdgo.testing.Testing.InternalTest(("TestFiles" : stdgo.GoString), stdgo.go.printer.Printer.testFiles) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLineComments" : stdgo.GoString), stdgo.go.printer.Printer.testLineComments) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBadNodes" : stdgo.GoString), stdgo.go.printer.Printer.testBadNodes) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBadComments" : stdgo.GoString), stdgo.go.printer.Printer.testBadComments) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSourcePos" : stdgo.GoString), stdgo.go.printer.Printer.testSourcePos) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIssue5945" : stdgo.GoString), stdgo.go.printer.Printer.testIssue5945) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDeclLists" : stdgo.GoString), stdgo.go.printer.Printer.testDeclLists) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStmtLists" : stdgo.GoString), stdgo.go.printer.Printer.testStmtLists) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBaseIndent" : stdgo.GoString), stdgo.go.printer.Printer.testBaseIndent) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFuncType" : stdgo.GoString), stdgo.go.printer.Printer.testFuncType) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriteErrors" : stdgo.GoString), stdgo.go.printer.Printer.testWriteErrors) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestX" : stdgo.GoString), stdgo.go.printer.Printer.testX) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCommentedNode" : stdgo.GoString), stdgo.go.printer.Printer.testCommentedNode) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIssue11151" : stdgo.GoString), stdgo.go.printer.Printer.testIssue11151) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParenthesizedDecl" : stdgo.GoString), stdgo.go.printer.Printer.testParenthesizedDecl) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIssue32854" : stdgo.GoString), stdgo.go.printer.Printer.testIssue32854) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSourcePosNewline" : stdgo.GoString), stdgo.go.printer.Printer.testSourcePosNewline) : stdgo.testing.Testing.InternalTest)) : stdgo.Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
var _benchmarks : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>(2, 2, (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkPrintFile" : stdgo.GoString), stdgo.go.printer.Printer.benchmarkPrintFile) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkPrintDecl" : stdgo.GoString), stdgo.go.printer.Printer.benchmarkPrintDecl) : stdgo.testing.Testing.InternalBenchmark)) : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
var _fuzzTargets : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
var _examples : stdgo.Slice<stdgo.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo.testing.Testing.InternalExample>(1, 1, (new stdgo.testing.Testing.InternalExample(("ExampleFprint" : stdgo.GoString), stdgo.go.printer_test.Printer_test.exampleFprint, ("funcAST, fset := parseFunc(\"example_test.go\", \"printSelf\")\n\nvar buf bytes.Buffer\nprinter.Fprint(&buf, fset, funcAST.Body)\n\ns := buf.String()\ns = s[1 : len(s)-1]\ns = strings.TrimSpace(strings.ReplaceAll(s, \"\\n\\t\", \"\\n\"))\n\nfmt.Println(s)\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample)) : stdgo.Slice<stdgo.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("go/printer" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

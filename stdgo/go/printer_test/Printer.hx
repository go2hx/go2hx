package stdgo.go.printer_test;
import stdgo._internal.go.printer.Printer;
var _tests : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>(
17,
17,
(new stdgo._internal.testing.Testing.InternalTest(("TestFiles" : stdgo.GoString), stdgo._internal.go.printer.Printer.testFiles) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestLineComments" : stdgo.GoString), stdgo._internal.go.printer.Printer.testLineComments) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestBadNodes" : stdgo.GoString), stdgo._internal.go.printer.Printer.testBadNodes) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestBadComments" : stdgo.GoString), stdgo._internal.go.printer.Printer.testBadComments) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestSourcePos" : stdgo.GoString), stdgo._internal.go.printer.Printer.testSourcePos) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestIssue5945" : stdgo.GoString), stdgo._internal.go.printer.Printer.testIssue5945) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestDeclLists" : stdgo.GoString), stdgo._internal.go.printer.Printer.testDeclLists) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestStmtLists" : stdgo.GoString), stdgo._internal.go.printer.Printer.testStmtLists) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestBaseIndent" : stdgo.GoString), stdgo._internal.go.printer.Printer.testBaseIndent) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestFuncType" : stdgo.GoString), stdgo._internal.go.printer.Printer.testFuncType) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestWriteErrors" : stdgo.GoString), stdgo._internal.go.printer.Printer.testWriteErrors) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestX" : stdgo.GoString), stdgo._internal.go.printer.Printer.testX) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestCommentedNode" : stdgo.GoString), stdgo._internal.go.printer.Printer.testCommentedNode) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestIssue11151" : stdgo.GoString), stdgo._internal.go.printer.Printer.testIssue11151) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestParenthesizedDecl" : stdgo.GoString), stdgo._internal.go.printer.Printer.testParenthesizedDecl) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestIssue32854" : stdgo.GoString), stdgo._internal.go.printer.Printer.testIssue32854) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestSourcePosNewline" : stdgo.GoString), stdgo._internal.go.printer.Printer.testSourcePosNewline) : stdgo._internal.testing.Testing.InternalTest)) : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>);
var _benchmarks : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>(2, 2, (new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkPrintFile" : stdgo.GoString), stdgo._internal.go.printer.Printer.benchmarkPrintFile) : stdgo._internal.testing.Testing.InternalBenchmark), (new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkPrintDecl" : stdgo.GoString), stdgo._internal.go.printer.Printer.benchmarkPrintDecl) : stdgo._internal.testing.Testing.InternalBenchmark)) : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>);
var _fuzzTargets : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>);
var _examples : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>(1, 1, (new stdgo._internal.testing.Testing.InternalExample(("ExampleFprint" : stdgo.GoString), stdgo._internal.go.printer_test.Printer_test.exampleFprint, ("funcAST, fset := parseFunc(\"example_test.go\", \"printSelf\")\n\nvar buf bytes.Buffer\nprinter.Fprint(&buf, fset, funcAST.Body)\n\ns := buf.String()\ns = s[1 : len(s)-1]\ns = strings.TrimSpace(strings.ReplaceAll(s, \"\\n\\t\", \"\\n\"))\n\nfmt.Println(s)\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample)) : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo._internal.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo._internal.testing.internal.testdeps.Testdeps.importPath = ("go/printer" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

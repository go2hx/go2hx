package stdgo.go.printer_test;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
import stdgo.go.printer.Printer;
/**
    
    
    
**/
private var _tests = (new Slice<stdgo.testing.Testing.InternalTest>(
0,
0,
(new stdgo.testing.Testing.InternalTest(("TestFiles" : GoString), stdgo.go.printer.Printer.testFiles) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLineComments" : GoString), stdgo.go.printer.Printer.testLineComments) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBadNodes" : GoString), stdgo.go.printer.Printer.testBadNodes) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBadComments" : GoString), stdgo.go.printer.Printer.testBadComments) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSourcePos" : GoString), stdgo.go.printer.Printer.testSourcePos) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIssue5945" : GoString), stdgo.go.printer.Printer.testIssue5945) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDeclLists" : GoString), stdgo.go.printer.Printer.testDeclLists) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStmtLists" : GoString), stdgo.go.printer.Printer.testStmtLists) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBaseIndent" : GoString), stdgo.go.printer.Printer.testBaseIndent) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFuncType" : GoString), stdgo.go.printer.Printer.testFuncType) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriteErrors" : GoString), stdgo.go.printer.Printer.testWriteErrors) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestX" : GoString), stdgo.go.printer.Printer.testX) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCommentedNode" : GoString), stdgo.go.printer.Printer.testCommentedNode) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIssue11151" : GoString), stdgo.go.printer.Printer.testIssue11151) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParenthesizedDecl" : GoString), stdgo.go.printer.Printer.testParenthesizedDecl) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIssue32854" : GoString), stdgo.go.printer.Printer.testIssue32854) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
private var _benchmarks = (new Slice<stdgo.testing.Testing.InternalBenchmark>(0, 0, (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkPrintFile" : GoString), stdgo.go.printer.Printer.benchmarkPrintFile) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkPrintDecl" : GoString), stdgo.go.printer.Printer.benchmarkPrintDecl) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
private var _fuzzTargets = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
private var _examples = (new Slice<stdgo.testing.Testing.InternalExample>(0, 0, (new stdgo.testing.Testing.InternalExample(("ExampleFprint" : GoString), stdgo.go.printer_test.Printer_test.exampleFprint, ("funcAST, fset := parseFunc(\"example_test.go\", \"printSelf\")\n\nvar buf bytes.Buffer\nprinter.Fprint(&buf, fset, funcAST.Body)\n\ns := buf.String()\ns = s[1 : len(s)-1]\ns = strings.TrimSpace(strings.ReplaceAll(s, \"\\n\\t\", \"\\n\"))\n\nfmt.Println(s)\n" : GoString), false) : stdgo.testing.Testing.InternalExample)) : Slice<stdgo.testing.Testing.InternalExample>);
private function main():Void {
        var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("go/printer" : GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

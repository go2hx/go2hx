package stdgo.regexp.syntax_test;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
import stdgo.regexp.syntax.Syntax;
/**
    
    
    
**/
private var _tests = (new Slice<stdgo.testing.Testing.InternalTest>(
0,
0,
(new stdgo.testing.Testing.InternalTest(("TestParseSimple" : GoString), stdgo.regexp.syntax.Syntax.testParseSimple) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseFoldCase" : GoString), stdgo.regexp.syntax.Syntax.testParseFoldCase) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseLiteral" : GoString), stdgo.regexp.syntax.Syntax.testParseLiteral) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseMatchNL" : GoString), stdgo.regexp.syntax.Syntax.testParseMatchNL) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseNoMatchNL" : GoString), stdgo.regexp.syntax.Syntax.testParseNoMatchNL) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFoldConstants" : GoString), stdgo.regexp.syntax.Syntax.testFoldConstants) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAppendRangeCollapse" : GoString), stdgo.regexp.syntax.Syntax.testAppendRangeCollapse) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseInvalidRegexps" : GoString), stdgo.regexp.syntax.Syntax.testParseInvalidRegexps) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestToStringEquivalentParse" : GoString), stdgo.regexp.syntax.Syntax.testToStringEquivalentParse) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCompile" : GoString), stdgo.regexp.syntax.Syntax.testCompile) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSimplify" : GoString), stdgo.regexp.syntax.Syntax.testSimplify) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
private var _benchmarks = (new Slice<stdgo.testing.Testing.InternalBenchmark>(0, 0, (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkEmptyOpContext" : GoString), stdgo.regexp.syntax.Syntax.benchmarkEmptyOpContext) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
private var _fuzzTargets = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
private var _examples = (new Slice<stdgo.testing.Testing.InternalExample>(0, 0) : Slice<stdgo.testing.Testing.InternalExample>);
private function main():Void {
        var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("regexp/syntax" : GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

package stdgo.regexp.syntax_test;
import stdgo.regexp.syntax.Syntax;
/**
    
    
    
**/
var _tests : stdgo.Slice<stdgo.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo.testing.Testing.InternalTest>(
11,
11,
(new stdgo.testing.Testing.InternalTest(("TestParseSimple" : stdgo.GoString), stdgo.regexp.syntax.Syntax.testParseSimple) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseFoldCase" : stdgo.GoString), stdgo.regexp.syntax.Syntax.testParseFoldCase) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseLiteral" : stdgo.GoString), stdgo.regexp.syntax.Syntax.testParseLiteral) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseMatchNL" : stdgo.GoString), stdgo.regexp.syntax.Syntax.testParseMatchNL) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseNoMatchNL" : stdgo.GoString), stdgo.regexp.syntax.Syntax.testParseNoMatchNL) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFoldConstants" : stdgo.GoString), stdgo.regexp.syntax.Syntax.testFoldConstants) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAppendRangeCollapse" : stdgo.GoString), stdgo.regexp.syntax.Syntax.testAppendRangeCollapse) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParseInvalidRegexps" : stdgo.GoString), stdgo.regexp.syntax.Syntax.testParseInvalidRegexps) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestToStringEquivalentParse" : stdgo.GoString), stdgo.regexp.syntax.Syntax.testToStringEquivalentParse) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCompile" : stdgo.GoString), stdgo.regexp.syntax.Syntax.testCompile) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSimplify" : stdgo.GoString), stdgo.regexp.syntax.Syntax.testSimplify) : stdgo.testing.Testing.InternalTest)) : stdgo.Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
var _benchmarks : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>(2, 2, (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkEmptyOpContext" : stdgo.GoString), stdgo.regexp.syntax.Syntax.benchmarkEmptyOpContext) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkIsWordChar" : stdgo.GoString), stdgo.regexp.syntax.Syntax.benchmarkIsWordChar) : stdgo.testing.Testing.InternalBenchmark)) : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
var _fuzzTargets : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
var _examples : stdgo.Slice<stdgo.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo.testing.Testing.InternalExample>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("regexp/syntax" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

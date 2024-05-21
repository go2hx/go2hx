package stdgo._internal.regexp.syntax_test;
import stdgo._internal.regexp.syntax.Syntax;
var _tests : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>(11, 11, ...[
(new stdgo._internal.testing.Testing.InternalTest(("TestParseSimple" : stdgo.GoString), stdgo._internal.regexp.syntax.Syntax.testParseSimple) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestParseFoldCase" : stdgo.GoString), stdgo._internal.regexp.syntax.Syntax.testParseFoldCase) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestParseLiteral" : stdgo.GoString), stdgo._internal.regexp.syntax.Syntax.testParseLiteral) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestParseMatchNL" : stdgo.GoString), stdgo._internal.regexp.syntax.Syntax.testParseMatchNL) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestParseNoMatchNL" : stdgo.GoString), stdgo._internal.regexp.syntax.Syntax.testParseNoMatchNL) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestFoldConstants" : stdgo.GoString), stdgo._internal.regexp.syntax.Syntax.testFoldConstants) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestAppendRangeCollapse" : stdgo.GoString), stdgo._internal.regexp.syntax.Syntax.testAppendRangeCollapse) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestParseInvalidRegexps" : stdgo.GoString), stdgo._internal.regexp.syntax.Syntax.testParseInvalidRegexps) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestToStringEquivalentParse" : stdgo.GoString), stdgo._internal.regexp.syntax.Syntax.testToStringEquivalentParse) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestCompile" : stdgo.GoString), stdgo._internal.regexp.syntax.Syntax.testCompile) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestSimplify" : stdgo.GoString), stdgo._internal.regexp.syntax.Syntax.testSimplify) : stdgo._internal.testing.Testing.InternalTest)].concat([for (i in 11 ... (11 > 11 ? 11 : 11 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalTest)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>);
var _benchmarks : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>(2, 2, ...[(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkEmptyOpContext" : stdgo.GoString), stdgo._internal.regexp.syntax.Syntax.benchmarkEmptyOpContext) : stdgo._internal.testing.Testing.InternalBenchmark), (new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkIsWordChar" : stdgo.GoString), stdgo._internal.regexp.syntax.Syntax.benchmarkIsWordChar) : stdgo._internal.testing.Testing.InternalBenchmark)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalBenchmark)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>);
var _fuzzTargets : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalFuzzTarget)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>);
var _examples : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalExample)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo._internal.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo._internal.testing.internal.testdeps.Testdeps.importPath = ("regexp/syntax" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

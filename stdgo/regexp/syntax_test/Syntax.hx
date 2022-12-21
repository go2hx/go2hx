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

private var _tests:Slice<stdgo.testing.Testing.InternalTest> = (new Slice<stdgo.testing.Testing.InternalTest>(0, 0,
	(new stdgo.testing.Testing.InternalTest(Go.str("TestParseSimple"), stdgo.regexp.syntax.Syntax.testParseSimple) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestParseFoldCase"), stdgo.regexp.syntax.Syntax.testParseFoldCase) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestParseLiteral"), stdgo.regexp.syntax.Syntax.testParseLiteral) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestParseMatchNL"), stdgo.regexp.syntax.Syntax.testParseMatchNL) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestParseNoMatchNL"), stdgo.regexp.syntax.Syntax.testParseNoMatchNL) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestFoldConstants"), stdgo.regexp.syntax.Syntax.testFoldConstants) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestAppendRangeCollapse"),
		stdgo.regexp.syntax.Syntax.testAppendRangeCollapse) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestParseInvalidRegexps"),
		stdgo.regexp.syntax.Syntax.testParseInvalidRegexps) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestToStringEquivalentParse"),
		stdgo.regexp.syntax.Syntax.testToStringEquivalentParse) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestCompile"), stdgo.regexp.syntax.Syntax.testCompile) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestSimplify"),
		stdgo.regexp.syntax.Syntax.testSimplify) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);

private var _benchmarks:Slice<stdgo.testing.Testing.InternalBenchmark> = (new Slice<stdgo.testing.Testing.InternalBenchmark>(0, 0,
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkEmptyOpContext"),
		stdgo.regexp.syntax.Syntax.benchmarkEmptyOpContext) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);

private var _fuzzTargets:Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0,
	0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);

private var _examples:Slice<stdgo.testing.Testing.InternalExample> = (new Slice<stdgo.testing.Testing.InternalExample>(0,
	0) : Slice<stdgo.testing.Testing.InternalExample>);

function main():Void {
	var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)),
		_tests, _benchmarks,
		_fuzzTargets, _examples);
	Sys.exit(_m.run());
}

@:keep var _ = {
	try {
		stdgo.testing.internal.testdeps.Testdeps.importPath = Go.str("regexp/syntax");
	} catch (__exception__)
		if (__exception__.message != "__return__")
			throw __exception__;
	true;
};

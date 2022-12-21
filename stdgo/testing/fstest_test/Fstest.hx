package stdgo.testing.fstest_test;

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
	(new stdgo.testing.Testing.InternalTest(Go.str("TestMapFS"), stdgo.testing.fstest.Fstest.testMapFS) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestMapFSChmodDot"), stdgo.testing.fstest.Fstest.testMapFSChmodDot) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestSymlink"), stdgo.testing.fstest.Fstest.testSymlink) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestDash"),
		stdgo.testing.fstest.Fstest.testDash) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);

private var _benchmarks:Slice<stdgo.testing.Testing.InternalBenchmark> = (new Slice<stdgo.testing.Testing.InternalBenchmark>(0,
	0) : Slice<stdgo.testing.Testing.InternalBenchmark>);

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
		stdgo.testing.internal.testdeps.Testdeps.importPath = Go.str("testing/fstest");
	} catch (__exception__)
		if (__exception__.message != "__return__")
			throw __exception__;
	true;
};

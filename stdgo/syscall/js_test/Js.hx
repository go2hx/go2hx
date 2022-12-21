package stdgo.syscall.js_test;

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
	(new stdgo.testing.Testing.InternalTest(Go.str("TestBool"), stdgo.syscall.js_test.Js_test.testBool) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestString"), stdgo.syscall.js_test.Js_test.testString) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestInt"), stdgo.syscall.js_test.Js_test.testInt) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestIntConversion"),
		stdgo.syscall.js_test.Js_test.testIntConversion) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestFloat"), stdgo.syscall.js_test.Js_test.testFloat) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestObject"), stdgo.syscall.js_test.Js_test.testObject) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestFrozenObject"), stdgo.syscall.js_test.Js_test.testFrozenObject) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestEqual"), stdgo.syscall.js_test.Js_test.testEqual) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestNaN"), stdgo.syscall.js_test.Js_test.testNaN) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestUndefined"), stdgo.syscall.js_test.Js_test.testUndefined) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestNull"), stdgo.syscall.js_test.Js_test.testNull) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestLength"), stdgo.syscall.js_test.Js_test.testLength) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestGet"), stdgo.syscall.js_test.Js_test.testGet) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestSet"), stdgo.syscall.js_test.Js_test.testSet) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestDelete"), stdgo.syscall.js_test.Js_test.testDelete) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestIndex"), stdgo.syscall.js_test.Js_test.testIndex) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestSetIndex"), stdgo.syscall.js_test.Js_test.testSetIndex) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestCall"), stdgo.syscall.js_test.Js_test.testCall) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestInvoke"), stdgo.syscall.js_test.Js_test.testInvoke) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestNew"), stdgo.syscall.js_test.Js_test.testNew) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestInstanceOf"), stdgo.syscall.js_test.Js_test.testInstanceOf) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestType"), stdgo.syscall.js_test.Js_test.testType) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestValueOf"), stdgo.syscall.js_test.Js_test.testValueOf) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestZeroValue"), stdgo.syscall.js_test.Js_test.testZeroValue) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestFuncOf"), stdgo.syscall.js_test.Js_test.testFuncOf) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestInvokeFunction"),
		stdgo.syscall.js_test.Js_test.testInvokeFunction) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestInterleavedFunctions"),
		stdgo.syscall.js_test.Js_test.testInterleavedFunctions) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestTruthy"), stdgo.syscall.js_test.Js_test.testTruthy) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestCopyBytesToGo"),
		stdgo.syscall.js_test.Js_test.testCopyBytesToGo) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestCopyBytesToJS"),
		stdgo.syscall.js_test.Js_test.testCopyBytesToJS) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestGarbageCollection"),
		stdgo.syscall.js_test.Js_test.testGarbageCollection) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestGlobal"),
		stdgo.syscall.js_test.Js_test.testGlobal) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);

private var _benchmarks:Slice<stdgo.testing.Testing.InternalBenchmark> = (new Slice<stdgo.testing.Testing.InternalBenchmark>(0, 0,
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkDOM"),
		stdgo.syscall.js_test.Js_test.benchmarkDOM) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);

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
		stdgo.testing.internal.testdeps.Testdeps.importPath = Go.str("syscall/js");
	} catch (__exception__)
		if (__exception__.message != "__return__")
			throw __exception__;
	true;
};

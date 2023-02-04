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
	(new stdgo.testing.Testing.InternalTest(("TestBool" : GoString), stdgo.syscall.js_test.Js_test.testBool) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestString" : GoString), stdgo.syscall.js_test.Js_test.testString) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestInt" : GoString), stdgo.syscall.js_test.Js_test.testInt) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestIntConversion" : GoString),
		stdgo.syscall.js_test.Js_test.testIntConversion) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestFloat" : GoString), stdgo.syscall.js_test.Js_test.testFloat) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestObject" : GoString), stdgo.syscall.js_test.Js_test.testObject) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestFrozenObject" : GoString),
		stdgo.syscall.js_test.Js_test.testFrozenObject) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestEqual" : GoString), stdgo.syscall.js_test.Js_test.testEqual) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestNaN" : GoString), stdgo.syscall.js_test.Js_test.testNaN) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestUndefined" : GoString), stdgo.syscall.js_test.Js_test.testUndefined) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestNull" : GoString), stdgo.syscall.js_test.Js_test.testNull) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestLength" : GoString), stdgo.syscall.js_test.Js_test.testLength) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestGet" : GoString), stdgo.syscall.js_test.Js_test.testGet) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestSet" : GoString), stdgo.syscall.js_test.Js_test.testSet) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestDelete" : GoString), stdgo.syscall.js_test.Js_test.testDelete) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestIndex" : GoString), stdgo.syscall.js_test.Js_test.testIndex) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestSetIndex" : GoString), stdgo.syscall.js_test.Js_test.testSetIndex) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestCall" : GoString), stdgo.syscall.js_test.Js_test.testCall) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestInvoke" : GoString), stdgo.syscall.js_test.Js_test.testInvoke) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestNew" : GoString), stdgo.syscall.js_test.Js_test.testNew) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestInstanceOf" : GoString), stdgo.syscall.js_test.Js_test.testInstanceOf) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestType" : GoString), stdgo.syscall.js_test.Js_test.testType) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestValueOf" : GoString), stdgo.syscall.js_test.Js_test.testValueOf) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestZeroValue" : GoString), stdgo.syscall.js_test.Js_test.testZeroValue) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestFuncOf" : GoString), stdgo.syscall.js_test.Js_test.testFuncOf) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestInvokeFunction" : GoString),
		stdgo.syscall.js_test.Js_test.testInvokeFunction) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestInterleavedFunctions" : GoString),
		stdgo.syscall.js_test.Js_test.testInterleavedFunctions) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestTruthy" : GoString), stdgo.syscall.js_test.Js_test.testTruthy) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestCopyBytesToGo" : GoString),
		stdgo.syscall.js_test.Js_test.testCopyBytesToGo) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestCopyBytesToJS" : GoString),
		stdgo.syscall.js_test.Js_test.testCopyBytesToJS) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestGarbageCollection" : GoString),
		stdgo.syscall.js_test.Js_test.testGarbageCollection) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestGlobal" : GoString),
		stdgo.syscall.js_test.Js_test.testGlobal) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);

private var _benchmarks:Slice<stdgo.testing.Testing.InternalBenchmark> = (new Slice<stdgo.testing.Testing.InternalBenchmark>(0, 0,
	(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkDOM" : GoString),
		stdgo.syscall.js_test.Js_test.benchmarkDOM) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);

private var _fuzzTargets:Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0,
	0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);

private var _examples:Slice<stdgo.testing.Testing.InternalExample> = (new Slice<stdgo.testing.Testing.InternalExample>(0,
	0) : Slice<stdgo.testing.Testing.InternalExample>);

private function main():Void {
	var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)),
		_tests, _benchmarks,
		_fuzzTargets, _examples);
	Sys.exit(_m.run());
}

@:keep var _ = {
	try {
		stdgo.testing.internal.testdeps.Testdeps.importPath = ("syscall/js" : GoString);
	} catch (__exception__)
		if (__exception__.message != "__return__")
			throw __exception__;
	true;
};

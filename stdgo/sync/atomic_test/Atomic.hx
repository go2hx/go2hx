package stdgo.sync.atomic_test;

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
	(new stdgo.testing.Testing.InternalTest(Go.str("TestSwapInt32"), stdgo.sync.atomic_test.Atomic_test.testSwapInt32) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestSwapInt32Method"),
		stdgo.sync.atomic_test.Atomic_test.testSwapInt32Method) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestSwapUint32"), stdgo.sync.atomic_test.Atomic_test.testSwapUint32) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestSwapUint32Method"),
		stdgo.sync.atomic_test.Atomic_test.testSwapUint32Method) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestSwapInt64"), stdgo.sync.atomic_test.Atomic_test.testSwapInt64) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestSwapInt64Method"),
		stdgo.sync.atomic_test.Atomic_test.testSwapInt64Method) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestSwapUint64"), stdgo.sync.atomic_test.Atomic_test.testSwapUint64) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestSwapUint64Method"),
		stdgo.sync.atomic_test.Atomic_test.testSwapUint64Method) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestSwapUintptr"),
		stdgo.sync.atomic_test.Atomic_test.testSwapUintptr) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestSwapUintptrMethod"),
		stdgo.sync.atomic_test.Atomic_test.testSwapUintptrMethod) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestSwapPointer"),
		stdgo.sync.atomic_test.Atomic_test.testSwapPointer) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestSwapPointerMethod"),
		stdgo.sync.atomic_test.Atomic_test.testSwapPointerMethod) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestAddInt32"), stdgo.sync.atomic_test.Atomic_test.testAddInt32) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestAddInt32Method"),
		stdgo.sync.atomic_test.Atomic_test.testAddInt32Method) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestAddUint32"), stdgo.sync.atomic_test.Atomic_test.testAddUint32) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestAddUint32Method"),
		stdgo.sync.atomic_test.Atomic_test.testAddUint32Method) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestAddInt64"), stdgo.sync.atomic_test.Atomic_test.testAddInt64) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestAddInt64Method"),
		stdgo.sync.atomic_test.Atomic_test.testAddInt64Method) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestAddUint64"), stdgo.sync.atomic_test.Atomic_test.testAddUint64) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestAddUint64Method"),
		stdgo.sync.atomic_test.Atomic_test.testAddUint64Method) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestAddUintptr"), stdgo.sync.atomic_test.Atomic_test.testAddUintptr) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestAddUintptrMethod"),
		stdgo.sync.atomic_test.Atomic_test.testAddUintptrMethod) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestCompareAndSwapInt32"),
		stdgo.sync.atomic_test.Atomic_test.testCompareAndSwapInt32) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestCompareAndSwapInt32Method"),
		stdgo.sync.atomic_test.Atomic_test.testCompareAndSwapInt32Method) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestCompareAndSwapUint32"),
		stdgo.sync.atomic_test.Atomic_test.testCompareAndSwapUint32) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestCompareAndSwapUint32Method"),
		stdgo.sync.atomic_test.Atomic_test.testCompareAndSwapUint32Method) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestCompareAndSwapInt64"),
		stdgo.sync.atomic_test.Atomic_test.testCompareAndSwapInt64) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestCompareAndSwapInt64Method"),
		stdgo.sync.atomic_test.Atomic_test.testCompareAndSwapInt64Method) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestCompareAndSwapUint64"),
		stdgo.sync.atomic_test.Atomic_test.testCompareAndSwapUint64) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestCompareAndSwapUint64Method"),
		stdgo.sync.atomic_test.Atomic_test.testCompareAndSwapUint64Method) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestCompareAndSwapUintptr"),
		stdgo.sync.atomic_test.Atomic_test.testCompareAndSwapUintptr) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestCompareAndSwapUintptrMethod"),
		stdgo.sync.atomic_test.Atomic_test.testCompareAndSwapUintptrMethod) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestCompareAndSwapPointer"),
		stdgo.sync.atomic_test.Atomic_test.testCompareAndSwapPointer) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestCompareAndSwapPointerMethod"),
		stdgo.sync.atomic_test.Atomic_test.testCompareAndSwapPointerMethod) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestLoadInt32"), stdgo.sync.atomic_test.Atomic_test.testLoadInt32) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestLoadInt32Method"),
		stdgo.sync.atomic_test.Atomic_test.testLoadInt32Method) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestLoadUint32"), stdgo.sync.atomic_test.Atomic_test.testLoadUint32) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestLoadUint32Method"),
		stdgo.sync.atomic_test.Atomic_test.testLoadUint32Method) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestLoadInt64"), stdgo.sync.atomic_test.Atomic_test.testLoadInt64) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestLoadInt64Method"),
		stdgo.sync.atomic_test.Atomic_test.testLoadInt64Method) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestLoadUint64"), stdgo.sync.atomic_test.Atomic_test.testLoadUint64) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestLoadUint64Method"),
		stdgo.sync.atomic_test.Atomic_test.testLoadUint64Method) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestLoadUintptr"),
		stdgo.sync.atomic_test.Atomic_test.testLoadUintptr) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestLoadUintptrMethod"),
		stdgo.sync.atomic_test.Atomic_test.testLoadUintptrMethod) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestLoadPointer"),
		stdgo.sync.atomic_test.Atomic_test.testLoadPointer) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestLoadPointerMethod"),
		stdgo.sync.atomic_test.Atomic_test.testLoadPointerMethod) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestStoreInt32"), stdgo.sync.atomic_test.Atomic_test.testStoreInt32) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestStoreInt32Method"),
		stdgo.sync.atomic_test.Atomic_test.testStoreInt32Method) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestStoreUint32"),
		stdgo.sync.atomic_test.Atomic_test.testStoreUint32) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestStoreUint32Method"),
		stdgo.sync.atomic_test.Atomic_test.testStoreUint32Method) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestStoreInt64"), stdgo.sync.atomic_test.Atomic_test.testStoreInt64) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestStoreInt64Method"),
		stdgo.sync.atomic_test.Atomic_test.testStoreInt64Method) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestStoreUint64"),
		stdgo.sync.atomic_test.Atomic_test.testStoreUint64) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestStoreUint64Method"),
		stdgo.sync.atomic_test.Atomic_test.testStoreUint64Method) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestStoreUintptr"),
		stdgo.sync.atomic_test.Atomic_test.testStoreUintptr) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestStoreUintptrMethod"),
		stdgo.sync.atomic_test.Atomic_test.testStoreUintptrMethod) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestStorePointer"),
		stdgo.sync.atomic_test.Atomic_test.testStorePointer) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestStorePointerMethod"),
		stdgo.sync.atomic_test.Atomic_test.testStorePointerMethod) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestHammer32"), stdgo.sync.atomic_test.Atomic_test.testHammer32) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestHammer64"), stdgo.sync.atomic_test.Atomic_test.testHammer64) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestHammerStoreLoad"),
		stdgo.sync.atomic_test.Atomic_test.testHammerStoreLoad) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestStoreLoadSeqCst32"),
		stdgo.sync.atomic_test.Atomic_test.testStoreLoadSeqCst32) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestStoreLoadSeqCst64"),
		stdgo.sync.atomic_test.Atomic_test.testStoreLoadSeqCst64) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestStoreLoadRelAcq32"),
		stdgo.sync.atomic_test.Atomic_test.testStoreLoadRelAcq32) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestStoreLoadRelAcq64"),
		stdgo.sync.atomic_test.Atomic_test.testStoreLoadRelAcq64) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestUnaligned64"),
		stdgo.sync.atomic_test.Atomic_test.testUnaligned64) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestAutoAligned64"),
		stdgo.sync.atomic_test.Atomic_test.testAutoAligned64) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestNilDeref"), stdgo.sync.atomic_test.Atomic_test.testNilDeref) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestValue"), stdgo.sync.atomic_test.Atomic_test.testValue) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestValueLarge"), stdgo.sync.atomic_test.Atomic_test.testValueLarge) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestValuePanic"), stdgo.sync.atomic_test.Atomic_test.testValuePanic) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestValueConcurrent"),
		stdgo.sync.atomic_test.Atomic_test.testValueConcurrent) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestValue_Swap"), stdgo.sync.atomic_test.Atomic_test.testValue_Swap) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestValueSwapConcurrent"),
		stdgo.sync.atomic_test.Atomic_test.testValueSwapConcurrent) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestValue_CompareAndSwap"),
		stdgo.sync.atomic_test.Atomic_test.testValue_CompareAndSwap) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestValueCompareAndSwapConcurrent"),
		stdgo.sync.atomic_test.Atomic_test.testValueCompareAndSwapConcurrent) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);

private var _benchmarks:Slice<stdgo.testing.Testing.InternalBenchmark> = (new Slice<stdgo.testing.Testing.InternalBenchmark>(0, 0,
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkValueRead"),
		stdgo.sync.atomic_test.Atomic_test.benchmarkValueRead) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);

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
		stdgo.testing.internal.testdeps.Testdeps.importPath = Go.str("sync/atomic");
	} catch (__exception__)
		if (__exception__.message != "__return__")
			throw __exception__;
	true;
};

package stdgo._internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
var _tests : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>(76, 76, ...[
(new stdgo._internal.testing.Testing.InternalTest(("TestSwapInt32" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testSwapInt32) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestSwapInt32Method" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testSwapInt32Method) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestSwapUint32" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testSwapUint32) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestSwapUint32Method" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testSwapUint32Method) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestSwapInt64" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testSwapInt64) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestSwapInt64Method" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testSwapInt64Method) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestSwapUint64" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testSwapUint64) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestSwapUint64Method" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testSwapUint64Method) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestSwapUintptr" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testSwapUintptr) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestSwapUintptrMethod" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testSwapUintptrMethod) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestSwapPointer" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testSwapPointer) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestSwapPointerMethod" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testSwapPointerMethod) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestAddInt32" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testAddInt32) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestAddInt32Method" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testAddInt32Method) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestAddUint32" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testAddUint32) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestAddUint32Method" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testAddUint32Method) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestAddInt64" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testAddInt64) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestAddInt64Method" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testAddInt64Method) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestAddUint64" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testAddUint64) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestAddUint64Method" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testAddUint64Method) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestAddUintptr" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testAddUintptr) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestAddUintptrMethod" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testAddUintptrMethod) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestCompareAndSwapInt32" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testCompareAndSwapInt32) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestCompareAndSwapInt32Method" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testCompareAndSwapInt32Method) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestCompareAndSwapUint32" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testCompareAndSwapUint32) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestCompareAndSwapUint32Method" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testCompareAndSwapUint32Method) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestCompareAndSwapInt64" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testCompareAndSwapInt64) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestCompareAndSwapInt64Method" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testCompareAndSwapInt64Method) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestCompareAndSwapUint64" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testCompareAndSwapUint64) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestCompareAndSwapUint64Method" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testCompareAndSwapUint64Method) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestCompareAndSwapUintptr" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testCompareAndSwapUintptr) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestCompareAndSwapUintptrMethod" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testCompareAndSwapUintptrMethod) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestCompareAndSwapPointer" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testCompareAndSwapPointer) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestCompareAndSwapPointerMethod" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testCompareAndSwapPointerMethod) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestLoadInt32" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testLoadInt32) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestLoadInt32Method" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testLoadInt32Method) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestLoadUint32" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testLoadUint32) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestLoadUint32Method" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testLoadUint32Method) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestLoadInt64" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testLoadInt64) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestLoadInt64Method" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testLoadInt64Method) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestLoadUint64" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testLoadUint64) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestLoadUint64Method" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testLoadUint64Method) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestLoadUintptr" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testLoadUintptr) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestLoadUintptrMethod" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testLoadUintptrMethod) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestLoadPointer" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testLoadPointer) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestLoadPointerMethod" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testLoadPointerMethod) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestStoreInt32" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testStoreInt32) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestStoreInt32Method" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testStoreInt32Method) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestStoreUint32" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testStoreUint32) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestStoreUint32Method" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testStoreUint32Method) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestStoreInt64" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testStoreInt64) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestStoreInt64Method" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testStoreInt64Method) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestStoreUint64" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testStoreUint64) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestStoreUint64Method" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testStoreUint64Method) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestStoreUintptr" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testStoreUintptr) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestStoreUintptrMethod" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testStoreUintptrMethod) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestStorePointer" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testStorePointer) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestStorePointerMethod" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testStorePointerMethod) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestHammer32" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testHammer32) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestHammer64" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testHammer64) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestHammerStoreLoad" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testHammerStoreLoad) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestStoreLoadSeqCst32" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testStoreLoadSeqCst32) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestStoreLoadSeqCst64" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testStoreLoadSeqCst64) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestStoreLoadRelAcq32" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testStoreLoadRelAcq32) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestStoreLoadRelAcq64" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testStoreLoadRelAcq64) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestUnaligned64" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testUnaligned64) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestAutoAligned64" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testAutoAligned64) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestNilDeref" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testNilDeref) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestValue" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testValue) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestValueLarge" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testValueLarge) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestValuePanic" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testValuePanic) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestValueConcurrent" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testValueConcurrent) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestValue_Swap" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testValue_Swap) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestValueSwapConcurrent" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testValueSwapConcurrent) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestValue_CompareAndSwap" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testValue_CompareAndSwap) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestValueCompareAndSwapConcurrent" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.testValueCompareAndSwapConcurrent) : stdgo._internal.testing.Testing.InternalTest)].concat([for (i in 76 ... (76 > 76 ? 76 : 76 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalTest)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>);
var _benchmarks : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>(1, 1, ...[(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkValueRead" : stdgo.GoString), stdgo._internal.sync.atomic_test.Atomic_test.benchmarkValueRead) : stdgo._internal.testing.Testing.InternalBenchmark)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalBenchmark)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>);
var _fuzzTargets : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalFuzzTarget)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>);
var _examples : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalExample)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo._internal.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo._internal.testing.internal.testdeps.Testdeps.importPath = ("sync/atomic" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

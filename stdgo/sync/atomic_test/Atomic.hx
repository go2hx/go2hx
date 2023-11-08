package stdgo.sync.atomic_test;
import stdgo.sync.atomic.Atomic;
/**
    
    
    
**/
var _tests : stdgo.Slice<stdgo.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo.testing.Testing.InternalTest>(
76,
76,
(new stdgo.testing.Testing.InternalTest(("TestSwapInt32" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testSwapInt32) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSwapInt32Method" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testSwapInt32Method) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSwapUint32" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testSwapUint32) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSwapUint32Method" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testSwapUint32Method) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSwapInt64" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testSwapInt64) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSwapInt64Method" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testSwapInt64Method) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSwapUint64" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testSwapUint64) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSwapUint64Method" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testSwapUint64Method) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSwapUintptr" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testSwapUintptr) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSwapUintptrMethod" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testSwapUintptrMethod) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSwapPointer" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testSwapPointer) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSwapPointerMethod" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testSwapPointerMethod) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAddInt32" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testAddInt32) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAddInt32Method" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testAddInt32Method) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAddUint32" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testAddUint32) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAddUint32Method" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testAddUint32Method) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAddInt64" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testAddInt64) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAddInt64Method" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testAddInt64Method) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAddUint64" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testAddUint64) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAddUint64Method" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testAddUint64Method) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAddUintptr" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testAddUintptr) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAddUintptrMethod" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testAddUintptrMethod) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCompareAndSwapInt32" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testCompareAndSwapInt32) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCompareAndSwapInt32Method" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testCompareAndSwapInt32Method) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCompareAndSwapUint32" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testCompareAndSwapUint32) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCompareAndSwapUint32Method" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testCompareAndSwapUint32Method) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCompareAndSwapInt64" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testCompareAndSwapInt64) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCompareAndSwapInt64Method" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testCompareAndSwapInt64Method) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCompareAndSwapUint64" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testCompareAndSwapUint64) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCompareAndSwapUint64Method" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testCompareAndSwapUint64Method) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCompareAndSwapUintptr" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testCompareAndSwapUintptr) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCompareAndSwapUintptrMethod" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testCompareAndSwapUintptrMethod) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCompareAndSwapPointer" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testCompareAndSwapPointer) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCompareAndSwapPointerMethod" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testCompareAndSwapPointerMethod) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLoadInt32" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testLoadInt32) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLoadInt32Method" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testLoadInt32Method) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLoadUint32" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testLoadUint32) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLoadUint32Method" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testLoadUint32Method) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLoadInt64" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testLoadInt64) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLoadInt64Method" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testLoadInt64Method) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLoadUint64" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testLoadUint64) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLoadUint64Method" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testLoadUint64Method) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLoadUintptr" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testLoadUintptr) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLoadUintptrMethod" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testLoadUintptrMethod) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLoadPointer" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testLoadPointer) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLoadPointerMethod" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testLoadPointerMethod) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStoreInt32" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testStoreInt32) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStoreInt32Method" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testStoreInt32Method) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStoreUint32" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testStoreUint32) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStoreUint32Method" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testStoreUint32Method) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStoreInt64" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testStoreInt64) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStoreInt64Method" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testStoreInt64Method) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStoreUint64" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testStoreUint64) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStoreUint64Method" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testStoreUint64Method) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStoreUintptr" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testStoreUintptr) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStoreUintptrMethod" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testStoreUintptrMethod) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStorePointer" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testStorePointer) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStorePointerMethod" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testStorePointerMethod) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestHammer32" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testHammer32) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestHammer64" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testHammer64) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestHammerStoreLoad" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testHammerStoreLoad) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStoreLoadSeqCst32" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testStoreLoadSeqCst32) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStoreLoadSeqCst64" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testStoreLoadSeqCst64) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStoreLoadRelAcq32" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testStoreLoadRelAcq32) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStoreLoadRelAcq64" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testStoreLoadRelAcq64) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnaligned64" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testUnaligned64) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAutoAligned64" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testAutoAligned64) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNilDeref" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testNilDeref) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestValue" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testValue) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestValueLarge" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testValueLarge) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestValuePanic" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testValuePanic) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestValueConcurrent" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testValueConcurrent) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestValue_Swap" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testValue_Swap) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestValueSwapConcurrent" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testValueSwapConcurrent) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestValue_CompareAndSwap" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testValue_CompareAndSwap) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestValueCompareAndSwapConcurrent" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.testValueCompareAndSwapConcurrent) : stdgo.testing.Testing.InternalTest)) : stdgo.Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
var _benchmarks : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>(1, 1, (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkValueRead" : stdgo.GoString), stdgo.sync.atomic_test.Atomic_test.benchmarkValueRead) : stdgo.testing.Testing.InternalBenchmark)) : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>);
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
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("sync/atomic" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

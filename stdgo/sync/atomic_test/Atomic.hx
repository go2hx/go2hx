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
/**
    
    
    
**/
private var _tests = (new Slice<stdgo.testing.Testing.InternalTest>(
0,
0,
(new stdgo.testing.Testing.InternalTest(("TestSwapInt32" : GoString), stdgo.sync.atomic_test.Atomic_test.testSwapInt32) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSwapInt32Method" : GoString), stdgo.sync.atomic_test.Atomic_test.testSwapInt32Method) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSwapUint32" : GoString), stdgo.sync.atomic_test.Atomic_test.testSwapUint32) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSwapUint32Method" : GoString), stdgo.sync.atomic_test.Atomic_test.testSwapUint32Method) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSwapInt64" : GoString), stdgo.sync.atomic_test.Atomic_test.testSwapInt64) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSwapInt64Method" : GoString), stdgo.sync.atomic_test.Atomic_test.testSwapInt64Method) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSwapUint64" : GoString), stdgo.sync.atomic_test.Atomic_test.testSwapUint64) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSwapUint64Method" : GoString), stdgo.sync.atomic_test.Atomic_test.testSwapUint64Method) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSwapUintptr" : GoString), stdgo.sync.atomic_test.Atomic_test.testSwapUintptr) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSwapUintptrMethod" : GoString), stdgo.sync.atomic_test.Atomic_test.testSwapUintptrMethod) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSwapPointer" : GoString), stdgo.sync.atomic_test.Atomic_test.testSwapPointer) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSwapPointerMethod" : GoString), stdgo.sync.atomic_test.Atomic_test.testSwapPointerMethod) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAddInt32" : GoString), stdgo.sync.atomic_test.Atomic_test.testAddInt32) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAddInt32Method" : GoString), stdgo.sync.atomic_test.Atomic_test.testAddInt32Method) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAddUint32" : GoString), stdgo.sync.atomic_test.Atomic_test.testAddUint32) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAddUint32Method" : GoString), stdgo.sync.atomic_test.Atomic_test.testAddUint32Method) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAddInt64" : GoString), stdgo.sync.atomic_test.Atomic_test.testAddInt64) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAddInt64Method" : GoString), stdgo.sync.atomic_test.Atomic_test.testAddInt64Method) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAddUint64" : GoString), stdgo.sync.atomic_test.Atomic_test.testAddUint64) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAddUint64Method" : GoString), stdgo.sync.atomic_test.Atomic_test.testAddUint64Method) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAddUintptr" : GoString), stdgo.sync.atomic_test.Atomic_test.testAddUintptr) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAddUintptrMethod" : GoString), stdgo.sync.atomic_test.Atomic_test.testAddUintptrMethod) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCompareAndSwapInt32" : GoString), stdgo.sync.atomic_test.Atomic_test.testCompareAndSwapInt32) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCompareAndSwapInt32Method" : GoString), stdgo.sync.atomic_test.Atomic_test.testCompareAndSwapInt32Method) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCompareAndSwapUint32" : GoString), stdgo.sync.atomic_test.Atomic_test.testCompareAndSwapUint32) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCompareAndSwapUint32Method" : GoString), stdgo.sync.atomic_test.Atomic_test.testCompareAndSwapUint32Method) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCompareAndSwapInt64" : GoString), stdgo.sync.atomic_test.Atomic_test.testCompareAndSwapInt64) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCompareAndSwapInt64Method" : GoString), stdgo.sync.atomic_test.Atomic_test.testCompareAndSwapInt64Method) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCompareAndSwapUint64" : GoString), stdgo.sync.atomic_test.Atomic_test.testCompareAndSwapUint64) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCompareAndSwapUint64Method" : GoString), stdgo.sync.atomic_test.Atomic_test.testCompareAndSwapUint64Method) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCompareAndSwapUintptr" : GoString), stdgo.sync.atomic_test.Atomic_test.testCompareAndSwapUintptr) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCompareAndSwapUintptrMethod" : GoString), stdgo.sync.atomic_test.Atomic_test.testCompareAndSwapUintptrMethod) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCompareAndSwapPointer" : GoString), stdgo.sync.atomic_test.Atomic_test.testCompareAndSwapPointer) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCompareAndSwapPointerMethod" : GoString), stdgo.sync.atomic_test.Atomic_test.testCompareAndSwapPointerMethod) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLoadInt32" : GoString), stdgo.sync.atomic_test.Atomic_test.testLoadInt32) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLoadInt32Method" : GoString), stdgo.sync.atomic_test.Atomic_test.testLoadInt32Method) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLoadUint32" : GoString), stdgo.sync.atomic_test.Atomic_test.testLoadUint32) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLoadUint32Method" : GoString), stdgo.sync.atomic_test.Atomic_test.testLoadUint32Method) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLoadInt64" : GoString), stdgo.sync.atomic_test.Atomic_test.testLoadInt64) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLoadInt64Method" : GoString), stdgo.sync.atomic_test.Atomic_test.testLoadInt64Method) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLoadUint64" : GoString), stdgo.sync.atomic_test.Atomic_test.testLoadUint64) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLoadUint64Method" : GoString), stdgo.sync.atomic_test.Atomic_test.testLoadUint64Method) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLoadUintptr" : GoString), stdgo.sync.atomic_test.Atomic_test.testLoadUintptr) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLoadUintptrMethod" : GoString), stdgo.sync.atomic_test.Atomic_test.testLoadUintptrMethod) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLoadPointer" : GoString), stdgo.sync.atomic_test.Atomic_test.testLoadPointer) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLoadPointerMethod" : GoString), stdgo.sync.atomic_test.Atomic_test.testLoadPointerMethod) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStoreInt32" : GoString), stdgo.sync.atomic_test.Atomic_test.testStoreInt32) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStoreInt32Method" : GoString), stdgo.sync.atomic_test.Atomic_test.testStoreInt32Method) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStoreUint32" : GoString), stdgo.sync.atomic_test.Atomic_test.testStoreUint32) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStoreUint32Method" : GoString), stdgo.sync.atomic_test.Atomic_test.testStoreUint32Method) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStoreInt64" : GoString), stdgo.sync.atomic_test.Atomic_test.testStoreInt64) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStoreInt64Method" : GoString), stdgo.sync.atomic_test.Atomic_test.testStoreInt64Method) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStoreUint64" : GoString), stdgo.sync.atomic_test.Atomic_test.testStoreUint64) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStoreUint64Method" : GoString), stdgo.sync.atomic_test.Atomic_test.testStoreUint64Method) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStoreUintptr" : GoString), stdgo.sync.atomic_test.Atomic_test.testStoreUintptr) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStoreUintptrMethod" : GoString), stdgo.sync.atomic_test.Atomic_test.testStoreUintptrMethod) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStorePointer" : GoString), stdgo.sync.atomic_test.Atomic_test.testStorePointer) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStorePointerMethod" : GoString), stdgo.sync.atomic_test.Atomic_test.testStorePointerMethod) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestHammer32" : GoString), stdgo.sync.atomic_test.Atomic_test.testHammer32) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestHammer64" : GoString), stdgo.sync.atomic_test.Atomic_test.testHammer64) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestHammerStoreLoad" : GoString), stdgo.sync.atomic_test.Atomic_test.testHammerStoreLoad) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStoreLoadSeqCst32" : GoString), stdgo.sync.atomic_test.Atomic_test.testStoreLoadSeqCst32) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStoreLoadSeqCst64" : GoString), stdgo.sync.atomic_test.Atomic_test.testStoreLoadSeqCst64) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStoreLoadRelAcq32" : GoString), stdgo.sync.atomic_test.Atomic_test.testStoreLoadRelAcq32) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStoreLoadRelAcq64" : GoString), stdgo.sync.atomic_test.Atomic_test.testStoreLoadRelAcq64) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnaligned64" : GoString), stdgo.sync.atomic_test.Atomic_test.testUnaligned64) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAutoAligned64" : GoString), stdgo.sync.atomic_test.Atomic_test.testAutoAligned64) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNilDeref" : GoString), stdgo.sync.atomic_test.Atomic_test.testNilDeref) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestValue" : GoString), stdgo.sync.atomic_test.Atomic_test.testValue) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestValueLarge" : GoString), stdgo.sync.atomic_test.Atomic_test.testValueLarge) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestValuePanic" : GoString), stdgo.sync.atomic_test.Atomic_test.testValuePanic) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestValueConcurrent" : GoString), stdgo.sync.atomic_test.Atomic_test.testValueConcurrent) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestValue_Swap" : GoString), stdgo.sync.atomic_test.Atomic_test.testValue_Swap) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestValueSwapConcurrent" : GoString), stdgo.sync.atomic_test.Atomic_test.testValueSwapConcurrent) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestValue_CompareAndSwap" : GoString), stdgo.sync.atomic_test.Atomic_test.testValue_CompareAndSwap) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestValueCompareAndSwapConcurrent" : GoString), stdgo.sync.atomic_test.Atomic_test.testValueCompareAndSwapConcurrent) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
private var _benchmarks = (new Slice<stdgo.testing.Testing.InternalBenchmark>(0, 0, (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkValueRead" : GoString), stdgo.sync.atomic_test.Atomic_test.benchmarkValueRead) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);
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
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("sync/atomic" : GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

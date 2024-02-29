package stdgo._internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
var _tests : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>(
41,
41,
(new stdgo._internal.testing.Testing.InternalTest(("TestCondSignal" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.testCondSignal) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestCondSignalGenerations" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.testCondSignalGenerations) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestCondBroadcast" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.testCondBroadcast) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestRace" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.testRace) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestCondSignalStealing" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.testCondSignalStealing) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestCondCopy" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.testCondCopy) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestMapMatchesRWMutex" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.testMapMatchesRWMutex) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestMapMatchesDeepCopy" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.testMapMatchesDeepCopy) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestConcurrentRange" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.testConcurrentRange) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestIssue40999" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.testIssue40999) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestMapRangeNestedCall" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.testMapRangeNestedCall) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestCompareAndSwap_NonExistingKey" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.testCompareAndSwap_NonExistingKey) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestSemaphore" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.testSemaphore) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestMutex" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.testMutex) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestMutexMisuse" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.testMutexMisuse) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestMutexFairness" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.testMutexFairness) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestOnce" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.testOnce) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestOncePanic" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.testOncePanic) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestOnceFunc" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.testOnceFunc) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestOnceValue" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.testOnceValue) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestOnceValues" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.testOnceValues) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestOnceFuncPanic" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.testOnceFuncPanic) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestOnceValuePanic" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.testOnceValuePanic) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestOnceValuesPanic" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.testOnceValuesPanic) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestOnceFuncPanicNil" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.testOnceFuncPanicNil) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestOnceFuncGoexit" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.testOnceFuncGoexit) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestOnceFuncPanicTraceback" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.testOnceFuncPanicTraceback) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestPool" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.testPool) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestPoolNew" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.testPoolNew) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestPoolGC" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.testPoolGC) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestPoolRelease" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.testPoolRelease) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestPoolStress" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.testPoolStress) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestPoolDequeue" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.testPoolDequeue) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestPoolChain" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.testPoolChain) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestParallelReaders" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.testParallelReaders) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestRWMutex" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.testRWMutex) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestRLocker" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.testRLocker) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestWaitGroup" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.testWaitGroup) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestWaitGroupMisuse" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.testWaitGroupMisuse) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestWaitGroupRace" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.testWaitGroupRace) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestWaitGroupAlign" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.testWaitGroupAlign) : stdgo._internal.testing.Testing.InternalTest)) : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>);
var _benchmarks : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>(
62,
62,
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkCond1" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkCond1) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkCond2" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkCond2) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkCond4" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkCond4) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkCond8" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkCond8) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkCond16" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkCond16) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkCond32" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkCond32) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkLoadMostlyHits" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkLoadMostlyHits) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkLoadMostlyMisses" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkLoadMostlyMisses) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkLoadOrStoreBalanced" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkLoadOrStoreBalanced) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkLoadOrStoreUnique" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkLoadOrStoreUnique) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkLoadOrStoreCollision" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkLoadOrStoreCollision) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkLoadAndDeleteBalanced" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkLoadAndDeleteBalanced) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkLoadAndDeleteUnique" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkLoadAndDeleteUnique) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkLoadAndDeleteCollision" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkLoadAndDeleteCollision) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkRange" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkRange) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkAdversarialAlloc" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkAdversarialAlloc) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkAdversarialDelete" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkAdversarialDelete) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkDeleteCollision" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkDeleteCollision) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkSwapCollision" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkSwapCollision) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkSwapMostlyHits" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkSwapMostlyHits) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkSwapMostlyMisses" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkSwapMostlyMisses) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkCompareAndSwapCollision" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkCompareAndSwapCollision) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkCompareAndSwapNoExistingKey" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkCompareAndSwapNoExistingKey) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkCompareAndSwapValueNotEqual" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkCompareAndSwapValueNotEqual) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkCompareAndSwapMostlyHits" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkCompareAndSwapMostlyHits) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkCompareAndSwapMostlyMisses" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkCompareAndSwapMostlyMisses) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkCompareAndDeleteCollision" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkCompareAndDeleteCollision) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkCompareAndDeleteMostlyHits" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkCompareAndDeleteMostlyHits) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkCompareAndDeleteMostlyMisses" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkCompareAndDeleteMostlyMisses) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkUncontendedSemaphore" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkUncontendedSemaphore) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkContendedSemaphore" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkContendedSemaphore) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkMutexUncontended" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkMutexUncontended) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkMutex" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkMutex) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkMutexSlack" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkMutexSlack) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkMutexWork" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkMutexWork) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkMutexWorkSlack" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkMutexWorkSlack) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkMutexNoSpin" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkMutexNoSpin) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkMutexSpin" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkMutexSpin) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkOnce" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkOnce) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkOnceFunc" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkOnceFunc) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkOnceValue" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkOnceValue) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkPool" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkPool) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkPoolOverflow" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkPoolOverflow) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkPoolStarvation" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkPoolStarvation) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkPoolSTW" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkPoolSTW) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkPoolExpensiveNew" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkPoolExpensiveNew) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkSemaUncontended" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkSemaUncontended) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkSemaSyntNonblock" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkSemaSyntNonblock) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkSemaSyntBlock" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkSemaSyntBlock) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkSemaWorkNonblock" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkSemaWorkNonblock) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkSemaWorkBlock" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkSemaWorkBlock) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkRWMutexUncontended" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkRWMutexUncontended) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkRWMutexWrite100" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkRWMutexWrite100) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkRWMutexWrite10" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkRWMutexWrite10) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkRWMutexWorkWrite100" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkRWMutexWorkWrite100) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkRWMutexWorkWrite10" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkRWMutexWorkWrite10) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkWaitGroupUncontended" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkWaitGroupUncontended) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkWaitGroupAddDone" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkWaitGroupAddDone) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkWaitGroupAddDoneWork" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkWaitGroupAddDoneWork) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkWaitGroupWait" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkWaitGroupWait) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkWaitGroupWaitWork" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkWaitGroupWaitWork) : stdgo._internal.testing.Testing.InternalBenchmark),
(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkWaitGroupActuallyWait" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.benchmarkWaitGroupActuallyWait) : stdgo._internal.testing.Testing.InternalBenchmark)) : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>);
var _fuzzTargets : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>);
var _examples : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>(2, 2, (new stdgo._internal.testing.Testing.InternalExample(("ExamplePool" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.examplePool, ("2006-01-02T15:04:05Z path=/search?q=flowers\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample), (new stdgo._internal.testing.Testing.InternalExample(("ExampleOnce" : stdgo.GoString), stdgo._internal.sync_test.Sync_test.exampleOnce, ("Only once\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample)) : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo._internal.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo._internal.testing.internal.testdeps.Testdeps.importPath = ("sync" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
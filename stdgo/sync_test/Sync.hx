package stdgo.sync_test;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
import stdgo.sync.Sync;
/**
    
    
    
**/
private var _tests = (new Slice<stdgo.testing.Testing.InternalTest>(
32,
32,
(new stdgo.testing.Testing.InternalTest(("TestCondSignal" : GoString), stdgo.sync_test.Sync_test.testCondSignal) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCondSignalGenerations" : GoString), stdgo.sync_test.Sync_test.testCondSignalGenerations) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCondBroadcast" : GoString), stdgo.sync_test.Sync_test.testCondBroadcast) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRace" : GoString), stdgo.sync_test.Sync_test.testRace) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCondSignalStealing" : GoString), stdgo.sync_test.Sync_test.testCondSignalStealing) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCondCopy" : GoString), stdgo.sync_test.Sync_test.testCondCopy) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMapMatchesRWMutex" : GoString), stdgo.sync_test.Sync_test.testMapMatchesRWMutex) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMapMatchesDeepCopy" : GoString), stdgo.sync_test.Sync_test.testMapMatchesDeepCopy) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestConcurrentRange" : GoString), stdgo.sync_test.Sync_test.testConcurrentRange) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIssue40999" : GoString), stdgo.sync_test.Sync_test.testIssue40999) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMapRangeNestedCall" : GoString), stdgo.sync_test.Sync_test.testMapRangeNestedCall) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCompareAndSwap_NonExistingKey" : GoString), stdgo.sync_test.Sync_test.testCompareAndSwap_NonExistingKey) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSemaphore" : GoString), stdgo.sync_test.Sync_test.testSemaphore) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMutex" : GoString), stdgo.sync_test.Sync_test.testMutex) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMutexMisuse" : GoString), stdgo.sync_test.Sync_test.testMutexMisuse) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMutexFairness" : GoString), stdgo.sync_test.Sync_test.testMutexFairness) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestOnce" : GoString), stdgo.sync_test.Sync_test.testOnce) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestOncePanic" : GoString), stdgo.sync_test.Sync_test.testOncePanic) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPool" : GoString), stdgo.sync_test.Sync_test.testPool) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPoolNew" : GoString), stdgo.sync_test.Sync_test.testPoolNew) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPoolGC" : GoString), stdgo.sync_test.Sync_test.testPoolGC) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPoolRelease" : GoString), stdgo.sync_test.Sync_test.testPoolRelease) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPoolStress" : GoString), stdgo.sync_test.Sync_test.testPoolStress) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPoolDequeue" : GoString), stdgo.sync_test.Sync_test.testPoolDequeue) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPoolChain" : GoString), stdgo.sync_test.Sync_test.testPoolChain) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParallelReaders" : GoString), stdgo.sync_test.Sync_test.testParallelReaders) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRWMutex" : GoString), stdgo.sync_test.Sync_test.testRWMutex) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRLocker" : GoString), stdgo.sync_test.Sync_test.testRLocker) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWaitGroup" : GoString), stdgo.sync_test.Sync_test.testWaitGroup) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWaitGroupMisuse" : GoString), stdgo.sync_test.Sync_test.testWaitGroupMisuse) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWaitGroupRace" : GoString), stdgo.sync_test.Sync_test.testWaitGroupRace) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWaitGroupAlign" : GoString), stdgo.sync_test.Sync_test.testWaitGroupAlign) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
private var _benchmarks = (new Slice<stdgo.testing.Testing.InternalBenchmark>(
60,
60,
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCond1" : GoString), stdgo.sync_test.Sync_test.benchmarkCond1) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCond2" : GoString), stdgo.sync_test.Sync_test.benchmarkCond2) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCond4" : GoString), stdgo.sync_test.Sync_test.benchmarkCond4) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCond8" : GoString), stdgo.sync_test.Sync_test.benchmarkCond8) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCond16" : GoString), stdgo.sync_test.Sync_test.benchmarkCond16) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCond32" : GoString), stdgo.sync_test.Sync_test.benchmarkCond32) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLoadMostlyHits" : GoString), stdgo.sync_test.Sync_test.benchmarkLoadMostlyHits) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLoadMostlyMisses" : GoString), stdgo.sync_test.Sync_test.benchmarkLoadMostlyMisses) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLoadOrStoreBalanced" : GoString), stdgo.sync_test.Sync_test.benchmarkLoadOrStoreBalanced) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLoadOrStoreUnique" : GoString), stdgo.sync_test.Sync_test.benchmarkLoadOrStoreUnique) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLoadOrStoreCollision" : GoString), stdgo.sync_test.Sync_test.benchmarkLoadOrStoreCollision) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLoadAndDeleteBalanced" : GoString), stdgo.sync_test.Sync_test.benchmarkLoadAndDeleteBalanced) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLoadAndDeleteUnique" : GoString), stdgo.sync_test.Sync_test.benchmarkLoadAndDeleteUnique) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLoadAndDeleteCollision" : GoString), stdgo.sync_test.Sync_test.benchmarkLoadAndDeleteCollision) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkRange" : GoString), stdgo.sync_test.Sync_test.benchmarkRange) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAdversarialAlloc" : GoString), stdgo.sync_test.Sync_test.benchmarkAdversarialAlloc) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAdversarialDelete" : GoString), stdgo.sync_test.Sync_test.benchmarkAdversarialDelete) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkDeleteCollision" : GoString), stdgo.sync_test.Sync_test.benchmarkDeleteCollision) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSwapCollision" : GoString), stdgo.sync_test.Sync_test.benchmarkSwapCollision) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSwapMostlyHits" : GoString), stdgo.sync_test.Sync_test.benchmarkSwapMostlyHits) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSwapMostlyMisses" : GoString), stdgo.sync_test.Sync_test.benchmarkSwapMostlyMisses) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCompareAndSwapCollision" : GoString), stdgo.sync_test.Sync_test.benchmarkCompareAndSwapCollision) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCompareAndSwapNoExistingKey" : GoString), stdgo.sync_test.Sync_test.benchmarkCompareAndSwapNoExistingKey) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCompareAndSwapValueNotEqual" : GoString), stdgo.sync_test.Sync_test.benchmarkCompareAndSwapValueNotEqual) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCompareAndSwapMostlyHits" : GoString), stdgo.sync_test.Sync_test.benchmarkCompareAndSwapMostlyHits) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCompareAndSwapMostlyMisses" : GoString), stdgo.sync_test.Sync_test.benchmarkCompareAndSwapMostlyMisses) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCompareAndDeleteCollision" : GoString), stdgo.sync_test.Sync_test.benchmarkCompareAndDeleteCollision) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCompareAndDeleteMostlyHits" : GoString), stdgo.sync_test.Sync_test.benchmarkCompareAndDeleteMostlyHits) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCompareAndDeleteMostlyMisses" : GoString), stdgo.sync_test.Sync_test.benchmarkCompareAndDeleteMostlyMisses) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkUncontendedSemaphore" : GoString), stdgo.sync_test.Sync_test.benchmarkUncontendedSemaphore) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkContendedSemaphore" : GoString), stdgo.sync_test.Sync_test.benchmarkContendedSemaphore) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkMutexUncontended" : GoString), stdgo.sync_test.Sync_test.benchmarkMutexUncontended) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkMutex" : GoString), stdgo.sync_test.Sync_test.benchmarkMutex) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkMutexSlack" : GoString), stdgo.sync_test.Sync_test.benchmarkMutexSlack) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkMutexWork" : GoString), stdgo.sync_test.Sync_test.benchmarkMutexWork) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkMutexWorkSlack" : GoString), stdgo.sync_test.Sync_test.benchmarkMutexWorkSlack) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkMutexNoSpin" : GoString), stdgo.sync_test.Sync_test.benchmarkMutexNoSpin) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkMutexSpin" : GoString), stdgo.sync_test.Sync_test.benchmarkMutexSpin) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkOnce" : GoString), stdgo.sync_test.Sync_test.benchmarkOnce) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkPool" : GoString), stdgo.sync_test.Sync_test.benchmarkPool) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkPoolOverflow" : GoString), stdgo.sync_test.Sync_test.benchmarkPoolOverflow) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkPoolStarvation" : GoString), stdgo.sync_test.Sync_test.benchmarkPoolStarvation) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkPoolSTW" : GoString), stdgo.sync_test.Sync_test.benchmarkPoolSTW) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkPoolExpensiveNew" : GoString), stdgo.sync_test.Sync_test.benchmarkPoolExpensiveNew) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSemaUncontended" : GoString), stdgo.sync_test.Sync_test.benchmarkSemaUncontended) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSemaSyntNonblock" : GoString), stdgo.sync_test.Sync_test.benchmarkSemaSyntNonblock) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSemaSyntBlock" : GoString), stdgo.sync_test.Sync_test.benchmarkSemaSyntBlock) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSemaWorkNonblock" : GoString), stdgo.sync_test.Sync_test.benchmarkSemaWorkNonblock) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSemaWorkBlock" : GoString), stdgo.sync_test.Sync_test.benchmarkSemaWorkBlock) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkRWMutexUncontended" : GoString), stdgo.sync_test.Sync_test.benchmarkRWMutexUncontended) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkRWMutexWrite100" : GoString), stdgo.sync_test.Sync_test.benchmarkRWMutexWrite100) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkRWMutexWrite10" : GoString), stdgo.sync_test.Sync_test.benchmarkRWMutexWrite10) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkRWMutexWorkWrite100" : GoString), stdgo.sync_test.Sync_test.benchmarkRWMutexWorkWrite100) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkRWMutexWorkWrite10" : GoString), stdgo.sync_test.Sync_test.benchmarkRWMutexWorkWrite10) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkWaitGroupUncontended" : GoString), stdgo.sync_test.Sync_test.benchmarkWaitGroupUncontended) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkWaitGroupAddDone" : GoString), stdgo.sync_test.Sync_test.benchmarkWaitGroupAddDone) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkWaitGroupAddDoneWork" : GoString), stdgo.sync_test.Sync_test.benchmarkWaitGroupAddDoneWork) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkWaitGroupWait" : GoString), stdgo.sync_test.Sync_test.benchmarkWaitGroupWait) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkWaitGroupWaitWork" : GoString), stdgo.sync_test.Sync_test.benchmarkWaitGroupWaitWork) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkWaitGroupActuallyWait" : GoString), stdgo.sync_test.Sync_test.benchmarkWaitGroupActuallyWait) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
private var _fuzzTargets = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
private var _examples = (new Slice<stdgo.testing.Testing.InternalExample>(2, 2, (new stdgo.testing.Testing.InternalExample(("ExamplePool" : GoString), stdgo.sync_test.Sync_test.examplePool, ("2006-01-02T15:04:05Z path=/search?q=flowers\n" : GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleOnce" : GoString), stdgo.sync_test.Sync_test.exampleOnce, ("Only once\n" : GoString), false) : stdgo.testing.Testing.InternalExample)) : Slice<stdgo.testing.Testing.InternalExample>);
private function main():Void {
        var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("sync" : GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

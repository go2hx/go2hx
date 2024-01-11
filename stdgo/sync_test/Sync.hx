package stdgo.sync_test;
import stdgo.sync.Sync;
import stdgo.sync.Sync;
/**
    
    
    
**/
var _tests : stdgo.Slice<stdgo.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo.testing.Testing.InternalTest>(
41,
41,
(new stdgo.testing.Testing.InternalTest(("TestCondSignal" : stdgo.GoString), stdgo.sync_test.Sync_test.testCondSignal) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCondSignalGenerations" : stdgo.GoString), stdgo.sync_test.Sync_test.testCondSignalGenerations) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCondBroadcast" : stdgo.GoString), stdgo.sync_test.Sync_test.testCondBroadcast) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRace" : stdgo.GoString), stdgo.sync_test.Sync_test.testRace) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCondSignalStealing" : stdgo.GoString), stdgo.sync_test.Sync_test.testCondSignalStealing) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCondCopy" : stdgo.GoString), stdgo.sync_test.Sync_test.testCondCopy) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMapMatchesRWMutex" : stdgo.GoString), stdgo.sync_test.Sync_test.testMapMatchesRWMutex) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMapMatchesDeepCopy" : stdgo.GoString), stdgo.sync_test.Sync_test.testMapMatchesDeepCopy) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestConcurrentRange" : stdgo.GoString), stdgo.sync_test.Sync_test.testConcurrentRange) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIssue40999" : stdgo.GoString), stdgo.sync_test.Sync_test.testIssue40999) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMapRangeNestedCall" : stdgo.GoString), stdgo.sync_test.Sync_test.testMapRangeNestedCall) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCompareAndSwap_NonExistingKey" : stdgo.GoString), stdgo.sync_test.Sync_test.testCompareAndSwap_NonExistingKey) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSemaphore" : stdgo.GoString), stdgo.sync_test.Sync_test.testSemaphore) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMutex" : stdgo.GoString), stdgo.sync_test.Sync_test.testMutex) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMutexMisuse" : stdgo.GoString), stdgo.sync_test.Sync_test.testMutexMisuse) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMutexFairness" : stdgo.GoString), stdgo.sync_test.Sync_test.testMutexFairness) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestOnce" : stdgo.GoString), stdgo.sync_test.Sync_test.testOnce) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestOncePanic" : stdgo.GoString), stdgo.sync_test.Sync_test.testOncePanic) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestOnceFunc" : stdgo.GoString), stdgo.sync_test.Sync_test.testOnceFunc) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestOnceValue" : stdgo.GoString), stdgo.sync_test.Sync_test.testOnceValue) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestOnceValues" : stdgo.GoString), stdgo.sync_test.Sync_test.testOnceValues) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestOnceFuncPanic" : stdgo.GoString), stdgo.sync_test.Sync_test.testOnceFuncPanic) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestOnceValuePanic" : stdgo.GoString), stdgo.sync_test.Sync_test.testOnceValuePanic) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestOnceValuesPanic" : stdgo.GoString), stdgo.sync_test.Sync_test.testOnceValuesPanic) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestOnceFuncPanicNil" : stdgo.GoString), stdgo.sync_test.Sync_test.testOnceFuncPanicNil) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestOnceFuncGoexit" : stdgo.GoString), stdgo.sync_test.Sync_test.testOnceFuncGoexit) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestOnceFuncPanicTraceback" : stdgo.GoString), stdgo.sync_test.Sync_test.testOnceFuncPanicTraceback) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPool" : stdgo.GoString), stdgo.sync_test.Sync_test.testPool) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPoolNew" : stdgo.GoString), stdgo.sync_test.Sync_test.testPoolNew) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPoolGC" : stdgo.GoString), stdgo.sync_test.Sync_test.testPoolGC) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPoolRelease" : stdgo.GoString), stdgo.sync_test.Sync_test.testPoolRelease) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPoolStress" : stdgo.GoString), stdgo.sync_test.Sync_test.testPoolStress) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPoolDequeue" : stdgo.GoString), stdgo.sync_test.Sync_test.testPoolDequeue) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPoolChain" : stdgo.GoString), stdgo.sync_test.Sync_test.testPoolChain) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestParallelReaders" : stdgo.GoString), stdgo.sync_test.Sync_test.testParallelReaders) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRWMutex" : stdgo.GoString), stdgo.sync_test.Sync_test.testRWMutex) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRLocker" : stdgo.GoString), stdgo.sync_test.Sync_test.testRLocker) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWaitGroup" : stdgo.GoString), stdgo.sync_test.Sync_test.testWaitGroup) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWaitGroupMisuse" : stdgo.GoString), stdgo.sync_test.Sync_test.testWaitGroupMisuse) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWaitGroupRace" : stdgo.GoString), stdgo.sync_test.Sync_test.testWaitGroupRace) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWaitGroupAlign" : stdgo.GoString), stdgo.sync_test.Sync_test.testWaitGroupAlign) : stdgo.testing.Testing.InternalTest)) : stdgo.Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
var _benchmarks : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>(
62,
62,
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCond1" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkCond1) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCond2" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkCond2) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCond4" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkCond4) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCond8" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkCond8) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCond16" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkCond16) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCond32" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkCond32) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLoadMostlyHits" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkLoadMostlyHits) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLoadMostlyMisses" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkLoadMostlyMisses) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLoadOrStoreBalanced" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkLoadOrStoreBalanced) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLoadOrStoreUnique" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkLoadOrStoreUnique) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLoadOrStoreCollision" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkLoadOrStoreCollision) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLoadAndDeleteBalanced" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkLoadAndDeleteBalanced) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLoadAndDeleteUnique" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkLoadAndDeleteUnique) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLoadAndDeleteCollision" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkLoadAndDeleteCollision) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkRange" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkRange) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAdversarialAlloc" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkAdversarialAlloc) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAdversarialDelete" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkAdversarialDelete) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkDeleteCollision" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkDeleteCollision) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSwapCollision" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkSwapCollision) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSwapMostlyHits" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkSwapMostlyHits) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSwapMostlyMisses" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkSwapMostlyMisses) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCompareAndSwapCollision" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkCompareAndSwapCollision) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCompareAndSwapNoExistingKey" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkCompareAndSwapNoExistingKey) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCompareAndSwapValueNotEqual" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkCompareAndSwapValueNotEqual) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCompareAndSwapMostlyHits" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkCompareAndSwapMostlyHits) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCompareAndSwapMostlyMisses" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkCompareAndSwapMostlyMisses) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCompareAndDeleteCollision" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkCompareAndDeleteCollision) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCompareAndDeleteMostlyHits" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkCompareAndDeleteMostlyHits) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCompareAndDeleteMostlyMisses" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkCompareAndDeleteMostlyMisses) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkUncontendedSemaphore" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkUncontendedSemaphore) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkContendedSemaphore" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkContendedSemaphore) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkMutexUncontended" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkMutexUncontended) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkMutex" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkMutex) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkMutexSlack" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkMutexSlack) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkMutexWork" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkMutexWork) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkMutexWorkSlack" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkMutexWorkSlack) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkMutexNoSpin" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkMutexNoSpin) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkMutexSpin" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkMutexSpin) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkOnce" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkOnce) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkOnceFunc" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkOnceFunc) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkOnceValue" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkOnceValue) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkPool" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkPool) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkPoolOverflow" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkPoolOverflow) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkPoolStarvation" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkPoolStarvation) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkPoolSTW" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkPoolSTW) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkPoolExpensiveNew" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkPoolExpensiveNew) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSemaUncontended" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkSemaUncontended) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSemaSyntNonblock" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkSemaSyntNonblock) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSemaSyntBlock" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkSemaSyntBlock) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSemaWorkNonblock" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkSemaWorkNonblock) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSemaWorkBlock" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkSemaWorkBlock) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkRWMutexUncontended" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkRWMutexUncontended) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkRWMutexWrite100" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkRWMutexWrite100) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkRWMutexWrite10" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkRWMutexWrite10) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkRWMutexWorkWrite100" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkRWMutexWorkWrite100) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkRWMutexWorkWrite10" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkRWMutexWorkWrite10) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkWaitGroupUncontended" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkWaitGroupUncontended) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkWaitGroupAddDone" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkWaitGroupAddDone) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkWaitGroupAddDoneWork" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkWaitGroupAddDoneWork) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkWaitGroupWait" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkWaitGroupWait) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkWaitGroupWaitWork" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkWaitGroupWaitWork) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkWaitGroupActuallyWait" : stdgo.GoString), stdgo.sync_test.Sync_test.benchmarkWaitGroupActuallyWait) : stdgo.testing.Testing.InternalBenchmark)) : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
var _fuzzTargets : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
var _examples : stdgo.Slice<stdgo.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo.testing.Testing.InternalExample>(2, 2, (new stdgo.testing.Testing.InternalExample(("ExamplePool" : stdgo.GoString), stdgo.sync_test.Sync_test.examplePool, ("2006-01-02T15:04:05Z path=/search?q=flowers\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleOnce" : stdgo.GoString), stdgo.sync_test.Sync_test.exampleOnce, ("Only once\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample)) : stdgo.Slice<stdgo.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("sync" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

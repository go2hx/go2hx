package stdgo.crypto.sha1_test;
import stdgo.crypto.sha1.Sha1;
/**
    
    
    
**/
var _tests : stdgo.Slice<stdgo.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo.testing.Testing.InternalTest>(7, 7, (new stdgo.testing.Testing.InternalTest(("TestGolden" : stdgo.GoString), stdgo.crypto.sha1.Sha1.testGolden) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestGoldenMarshal" : stdgo.GoString), stdgo.crypto.sha1.Sha1.testGoldenMarshal) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestSize" : stdgo.GoString), stdgo.crypto.sha1.Sha1.testSize) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestBlockSize" : stdgo.GoString), stdgo.crypto.sha1.Sha1.testBlockSize) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestBlockGeneric" : stdgo.GoString), stdgo.crypto.sha1.Sha1.testBlockGeneric) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestLargeHashes" : stdgo.GoString), stdgo.crypto.sha1.Sha1.testLargeHashes) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestAllocations" : stdgo.GoString), stdgo.crypto.sha1.Sha1.testAllocations) : stdgo.testing.Testing.InternalTest)) : stdgo.Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
var _benchmarks : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>(4, 4, (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkHash8Bytes" : stdgo.GoString), stdgo.crypto.sha1.Sha1.benchmarkHash8Bytes) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkHash320Bytes" : stdgo.GoString), stdgo.crypto.sha1.Sha1.benchmarkHash320Bytes) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkHash1K" : stdgo.GoString), stdgo.crypto.sha1.Sha1.benchmarkHash1K) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkHash8K" : stdgo.GoString), stdgo.crypto.sha1.Sha1.benchmarkHash8K) : stdgo.testing.Testing.InternalBenchmark)) : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
var _fuzzTargets : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
var _examples : stdgo.Slice<stdgo.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo.testing.Testing.InternalExample>(2, 2, (new stdgo.testing.Testing.InternalExample(("ExampleNew" : stdgo.GoString), stdgo.crypto.sha1_test.Sha1_test.exampleNew, ("59 7f 6a 54 00 10 f9 4c 15 d7 18 06 a9 9a 2c 87 10 e7 47 bd\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleSum" : stdgo.GoString), stdgo.crypto.sha1_test.Sha1_test.exampleSum, ("af 06 49 23 bb f2 30 15 96 aa c4 c2 73 ba 32 17 8e bc 4a 96\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample)) : stdgo.Slice<stdgo.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("crypto/sha1" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

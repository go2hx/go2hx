package stdgo.crypto.sha1_test;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
import stdgo.crypto.sha1.Sha1;
/**
    
    
    
**/
private var _tests = (new Slice<stdgo.testing.Testing.InternalTest>(7, 7, (new stdgo.testing.Testing.InternalTest(("TestGolden" : GoString), stdgo.crypto.sha1.Sha1.testGolden) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestGoldenMarshal" : GoString), stdgo.crypto.sha1.Sha1.testGoldenMarshal) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestSize" : GoString), stdgo.crypto.sha1.Sha1.testSize) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestBlockSize" : GoString), stdgo.crypto.sha1.Sha1.testBlockSize) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestBlockGeneric" : GoString), stdgo.crypto.sha1.Sha1.testBlockGeneric) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestLargeHashes" : GoString), stdgo.crypto.sha1.Sha1.testLargeHashes) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestAllocations" : GoString), stdgo.crypto.sha1.Sha1.testAllocations) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
private var _benchmarks = (new Slice<stdgo.testing.Testing.InternalBenchmark>(4, 4, (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkHash8Bytes" : GoString), stdgo.crypto.sha1.Sha1.benchmarkHash8Bytes) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkHash320Bytes" : GoString), stdgo.crypto.sha1.Sha1.benchmarkHash320Bytes) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkHash1K" : GoString), stdgo.crypto.sha1.Sha1.benchmarkHash1K) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkHash8K" : GoString), stdgo.crypto.sha1.Sha1.benchmarkHash8K) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
private var _fuzzTargets = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
private var _examples = (new Slice<stdgo.testing.Testing.InternalExample>(2, 2, (new stdgo.testing.Testing.InternalExample(("ExampleNew" : GoString), stdgo.crypto.sha1_test.Sha1_test.exampleNew, ("59 7f 6a 54 00 10 f9 4c 15 d7 18 06 a9 9a 2c 87 10 e7 47 bd\n" : GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleSum" : GoString), stdgo.crypto.sha1_test.Sha1_test.exampleSum, ("af 06 49 23 bb f2 30 15 96 aa c4 c2 73 ba 32 17 8e bc 4a 96\n" : GoString), false) : stdgo.testing.Testing.InternalExample)) : Slice<stdgo.testing.Testing.InternalExample>);
private function main():Void {
        var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("crypto/sha1" : GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

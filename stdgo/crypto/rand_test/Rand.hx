package stdgo.crypto.rand_test;
import stdgo.crypto.rand.Rand;
/**
    
    
    
**/
var _tests : stdgo.Slice<stdgo.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo.testing.Testing.InternalTest>(
10,
10,
(new stdgo.testing.Testing.InternalTest(("TestRead" : stdgo.GoString), stdgo.crypto.rand.Rand.testRead) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadEmpty" : stdgo.GoString), stdgo.crypto.rand.Rand.testReadEmpty) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPrimeSmall" : stdgo.GoString), stdgo.crypto.rand_test.Rand_test.testPrimeSmall) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPrimeBitsLt2" : stdgo.GoString), stdgo.crypto.rand_test.Rand_test.testPrimeBitsLt2) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPrimeNondeterministic" : stdgo.GoString), stdgo.crypto.rand_test.Rand_test.testPrimeNondeterministic) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestInt" : stdgo.GoString), stdgo.crypto.rand_test.Rand_test.testInt) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIntReads" : stdgo.GoString), stdgo.crypto.rand_test.Rand_test.testIntReads) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIntMask" : stdgo.GoString), stdgo.crypto.rand_test.Rand_test.testIntMask) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIntEmptyMaxPanics" : stdgo.GoString), stdgo.crypto.rand_test.Rand_test.testIntEmptyMaxPanics) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIntNegativeMaxPanics" : stdgo.GoString), stdgo.crypto.rand_test.Rand_test.testIntNegativeMaxPanics) : stdgo.testing.Testing.InternalTest)) : stdgo.Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
var _benchmarks : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>(1, 1, (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkPrime" : stdgo.GoString), stdgo.crypto.rand_test.Rand_test.benchmarkPrime) : stdgo.testing.Testing.InternalBenchmark)) : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
var _fuzzTargets : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
var _examples : stdgo.Slice<stdgo.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo.testing.Testing.InternalExample>(1, 1, (new stdgo.testing.Testing.InternalExample(("ExampleRead" : stdgo.GoString), stdgo.crypto.rand_test.Rand_test.exampleRead, ("false\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample)) : stdgo.Slice<stdgo.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("crypto/rand" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

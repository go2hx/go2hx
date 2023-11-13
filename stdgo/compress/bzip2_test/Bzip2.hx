package stdgo.compress.bzip2_test;
import stdgo.compress.bzip2.Bzip2;
/**
    
    
    
**/
var _tests : stdgo.Slice<stdgo.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo.testing.Testing.InternalTest>(4, 4, (new stdgo.testing.Testing.InternalTest(("TestReader" : stdgo.GoString)?.__copy__(), stdgo.compress.bzip2.Bzip2.testReader) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestBitReader" : stdgo.GoString)?.__copy__(), stdgo.compress.bzip2.Bzip2.testBitReader) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestMTF" : stdgo.GoString)?.__copy__(), stdgo.compress.bzip2.Bzip2.testMTF) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestZeroRead" : stdgo.GoString)?.__copy__(), stdgo.compress.bzip2.Bzip2.testZeroRead) : stdgo.testing.Testing.InternalTest)) : stdgo.Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
var _benchmarks : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>(3, 3, (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkDecodeDigits" : stdgo.GoString)?.__copy__(), stdgo.compress.bzip2.Bzip2.benchmarkDecodeDigits) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkDecodeNewton" : stdgo.GoString)?.__copy__(), stdgo.compress.bzip2.Bzip2.benchmarkDecodeNewton) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkDecodeRand" : stdgo.GoString)?.__copy__(), stdgo.compress.bzip2.Bzip2.benchmarkDecodeRand) : stdgo.testing.Testing.InternalBenchmark)) : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>);
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
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("compress/bzip2" : stdgo.GoString)?.__copy__();
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

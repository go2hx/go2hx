package stdgo.compress.bzip2_test;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
import stdgo.compress.bzip2.Bzip2;
/**
    
    
    
**/
private var _tests = (new Slice<stdgo.testing.Testing.InternalTest>(4, 4, (new stdgo.testing.Testing.InternalTest(("TestReader" : GoString), stdgo.compress.bzip2.Bzip2.testReader) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestBitReader" : GoString), stdgo.compress.bzip2.Bzip2.testBitReader) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestMTF" : GoString), stdgo.compress.bzip2.Bzip2.testMTF) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestZeroRead" : GoString), stdgo.compress.bzip2.Bzip2.testZeroRead) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
private var _benchmarks = (new Slice<stdgo.testing.Testing.InternalBenchmark>(3, 3, (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkDecodeDigits" : GoString), stdgo.compress.bzip2.Bzip2.benchmarkDecodeDigits) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkDecodeNewton" : GoString), stdgo.compress.bzip2.Bzip2.benchmarkDecodeNewton) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkDecodeRand" : GoString), stdgo.compress.bzip2.Bzip2.benchmarkDecodeRand) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);
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
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("compress/bzip2" : GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

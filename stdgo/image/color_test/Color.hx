package stdgo.image.color_test;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
import stdgo.image.color.Color;
/**
    
    
    
**/
private var _tests = (new Slice<stdgo.testing.Testing.InternalTest>(
10,
10,
(new stdgo.testing.Testing.InternalTest(("TestSqDiff" : GoString), stdgo.image.color.Color.testSqDiff) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestYCbCrRoundtrip" : GoString), stdgo.image.color.Color.testYCbCrRoundtrip) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestYCbCrToRGBConsistency" : GoString), stdgo.image.color.Color.testYCbCrToRGBConsistency) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestYCbCrGray" : GoString), stdgo.image.color.Color.testYCbCrGray) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNYCbCrAAlpha" : GoString), stdgo.image.color.Color.testNYCbCrAAlpha) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNYCbCrAYCbCr" : GoString), stdgo.image.color.Color.testNYCbCrAYCbCr) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCMYKRoundtrip" : GoString), stdgo.image.color.Color.testCMYKRoundtrip) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCMYKToRGBConsistency" : GoString), stdgo.image.color.Color.testCMYKToRGBConsistency) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCMYKGray" : GoString), stdgo.image.color.Color.testCMYKGray) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPalette" : GoString), stdgo.image.color.Color.testPalette) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
private var _benchmarks = (new Slice<stdgo.testing.Testing.InternalBenchmark>(4, 4, (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkYCbCrToRGB" : GoString), stdgo.image.color.Color.benchmarkYCbCrToRGB) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkRGBToYCbCr" : GoString), stdgo.image.color.Color.benchmarkRGBToYCbCr) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkYCbCrToRGBA" : GoString), stdgo.image.color.Color.benchmarkYCbCrToRGBA) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkNYCbCrAToRGBA" : GoString), stdgo.image.color.Color.benchmarkNYCbCrAToRGBA) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);
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
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("image/color" : GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

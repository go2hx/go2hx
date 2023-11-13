package stdgo.image.color_test;
import stdgo.image.color.Color;
/**
    
    
    
**/
var _tests : stdgo.Slice<stdgo.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo.testing.Testing.InternalTest>(
10,
10,
(new stdgo.testing.Testing.InternalTest(("TestSqDiff" : stdgo.GoString)?.__copy__(), stdgo.image.color.Color.testSqDiff) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestYCbCrRoundtrip" : stdgo.GoString)?.__copy__(), stdgo.image.color.Color.testYCbCrRoundtrip) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestYCbCrToRGBConsistency" : stdgo.GoString)?.__copy__(), stdgo.image.color.Color.testYCbCrToRGBConsistency) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestYCbCrGray" : stdgo.GoString)?.__copy__(), stdgo.image.color.Color.testYCbCrGray) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNYCbCrAAlpha" : stdgo.GoString)?.__copy__(), stdgo.image.color.Color.testNYCbCrAAlpha) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNYCbCrAYCbCr" : stdgo.GoString)?.__copy__(), stdgo.image.color.Color.testNYCbCrAYCbCr) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCMYKRoundtrip" : stdgo.GoString)?.__copy__(), stdgo.image.color.Color.testCMYKRoundtrip) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCMYKToRGBConsistency" : stdgo.GoString)?.__copy__(), stdgo.image.color.Color.testCMYKToRGBConsistency) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCMYKGray" : stdgo.GoString)?.__copy__(), stdgo.image.color.Color.testCMYKGray) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPalette" : stdgo.GoString)?.__copy__(), stdgo.image.color.Color.testPalette) : stdgo.testing.Testing.InternalTest)) : stdgo.Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
var _benchmarks : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>(4, 4, (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkYCbCrToRGB" : stdgo.GoString)?.__copy__(), stdgo.image.color.Color.benchmarkYCbCrToRGB) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkRGBToYCbCr" : stdgo.GoString)?.__copy__(), stdgo.image.color.Color.benchmarkRGBToYCbCr) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkYCbCrToRGBA" : stdgo.GoString)?.__copy__(), stdgo.image.color.Color.benchmarkYCbCrToRGBA) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkNYCbCrAToRGBA" : stdgo.GoString)?.__copy__(), stdgo.image.color.Color.benchmarkNYCbCrAToRGBA) : stdgo.testing.Testing.InternalBenchmark)) : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>);
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
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("image/color" : stdgo.GoString)?.__copy__();
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

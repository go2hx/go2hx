package stdgo.image_test;
import stdgo.image.Image;
/**
    
    
    
**/
var _tests : stdgo.Slice<stdgo.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo.testing.Testing.InternalTest>(8, 8, (new stdgo.testing.Testing.InternalTest(("TestRectangle" : stdgo.GoString), stdgo.image.Image.testRectangle) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestImage" : stdgo.GoString), stdgo.image.Image.testImage) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestNewXxxBadRectangle" : stdgo.GoString), stdgo.image.Image.testNewXxxBadRectangle) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("Test16BitsPerColorChannel" : stdgo.GoString), stdgo.image.Image.test16BitsPerColorChannel) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestRGBA64Image" : stdgo.GoString), stdgo.image.Image.testRGBA64Image) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestYCbCr" : stdgo.GoString), stdgo.image.Image.testYCbCr) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestYCbCrSlicesDontOverlap" : stdgo.GoString), stdgo.image.Image.testYCbCrSlicesDontOverlap) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestDecode" : stdgo.GoString), stdgo.image_test.Image_test.testDecode) : stdgo.testing.Testing.InternalTest)) : stdgo.Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
var _benchmarks : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>(
18,
18,
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAt" : stdgo.GoString), stdgo.image.Image.benchmarkAt) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSet" : stdgo.GoString), stdgo.image.Image.benchmarkSet) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkRGBAAt" : stdgo.GoString), stdgo.image.Image.benchmarkRGBAAt) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkRGBASetRGBA" : stdgo.GoString), stdgo.image.Image.benchmarkRGBASetRGBA) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkRGBA64At" : stdgo.GoString), stdgo.image.Image.benchmarkRGBA64At) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkRGBA64SetRGBA64" : stdgo.GoString), stdgo.image.Image.benchmarkRGBA64SetRGBA64) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkNRGBAAt" : stdgo.GoString), stdgo.image.Image.benchmarkNRGBAAt) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkNRGBASetNRGBA" : stdgo.GoString), stdgo.image.Image.benchmarkNRGBASetNRGBA) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkNRGBA64At" : stdgo.GoString), stdgo.image.Image.benchmarkNRGBA64At) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkNRGBA64SetNRGBA64" : stdgo.GoString), stdgo.image.Image.benchmarkNRGBA64SetNRGBA64) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAlphaAt" : stdgo.GoString), stdgo.image.Image.benchmarkAlphaAt) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAlphaSetAlpha" : stdgo.GoString), stdgo.image.Image.benchmarkAlphaSetAlpha) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAlpha16At" : stdgo.GoString), stdgo.image.Image.benchmarkAlpha16At) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAlphaSetAlpha16" : stdgo.GoString), stdgo.image.Image.benchmarkAlphaSetAlpha16) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkGrayAt" : stdgo.GoString), stdgo.image.Image.benchmarkGrayAt) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkGraySetGray" : stdgo.GoString), stdgo.image.Image.benchmarkGraySetGray) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkGray16At" : stdgo.GoString), stdgo.image.Image.benchmarkGray16At) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkGraySetGray16" : stdgo.GoString), stdgo.image.Image.benchmarkGraySetGray16) : stdgo.testing.Testing.InternalBenchmark)) : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
var _fuzzTargets : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
var _examples : stdgo.Slice<stdgo.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo.testing.Testing.InternalExample>(1, 1, (new stdgo.testing.Testing.InternalExample(("Example" : stdgo.GoString), stdgo.image_test.Image_test.example, ("bin               red  green   blue  alpha\n0x0000-0x0fff:    364    790   7242      0\n0x1000-0x1fff:    645   2967   1039      0\n0x2000-0x2fff:   1072   2299    979      0\n0x3000-0x3fff:    820   2266    980      0\n0x4000-0x4fff:    537   1305    541      0\n0x5000-0x5fff:    319    962    261      0\n0x6000-0x6fff:    322    375    177      0\n0x7000-0x7fff:    601    279    214      0\n0x8000-0x8fff:   3478    227    273      0\n0x9000-0x9fff:   2260    234    329      0\n0xa000-0xafff:    921    282    373      0\n0xb000-0xbfff:    321    335    397      0\n0xc000-0xcfff:    229    388    298      0\n0xd000-0xdfff:    260    414    277      0\n0xe000-0xefff:    516    428    298      0\n0xf000-0xffff:   2785   1899   1772  15450\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample)) : stdgo.Slice<stdgo.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("image" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

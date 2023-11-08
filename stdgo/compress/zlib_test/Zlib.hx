package stdgo.compress.zlib_test;
import stdgo.compress.zlib.Zlib;
/**
    
    
    
**/
var _tests : stdgo.Slice<stdgo.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo.testing.Testing.InternalTest>(6, 6, (new stdgo.testing.Testing.InternalTest(("TestDecompressor" : stdgo.GoString), stdgo.compress.zlib.Zlib.testDecompressor) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestWriter" : stdgo.GoString), stdgo.compress.zlib.Zlib.testWriter) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestWriterBig" : stdgo.GoString), stdgo.compress.zlib.Zlib.testWriterBig) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestWriterDict" : stdgo.GoString), stdgo.compress.zlib.Zlib.testWriterDict) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestWriterReset" : stdgo.GoString), stdgo.compress.zlib.Zlib.testWriterReset) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestWriterDictIsUsed" : stdgo.GoString), stdgo.compress.zlib.Zlib.testWriterDictIsUsed) : stdgo.testing.Testing.InternalTest)) : stdgo.Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
var _benchmarks : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
var _fuzzTargets : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
var _examples : stdgo.Slice<stdgo.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo.testing.Testing.InternalExample>(2, 2, (new stdgo.testing.Testing.InternalExample(("ExampleNewWriter" : stdgo.GoString), stdgo.compress.zlib_test.Zlib_test.exampleNewWriter, ("[120 156 202 72 205 201 201 215 81 40 207 47 202 73 225 2 4 0 0 255 255 33 231 4 147]\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleNewReader" : stdgo.GoString), stdgo.compress.zlib_test.Zlib_test.exampleNewReader, ("hello, world\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample)) : stdgo.Slice<stdgo.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("compress/zlib" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

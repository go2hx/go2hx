package stdgo.compress.zlib_test;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
import stdgo.compress.zlib.Zlib;
/**
    
    
    
**/
private var _tests = (new Slice<stdgo.testing.Testing.InternalTest>(0, 0, (new stdgo.testing.Testing.InternalTest(("TestDecompressor" : GoString), stdgo.compress.zlib.Zlib.testDecompressor) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestWriter" : GoString), stdgo.compress.zlib.Zlib.testWriter) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestWriterBig" : GoString), stdgo.compress.zlib.Zlib.testWriterBig) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestWriterDict" : GoString), stdgo.compress.zlib.Zlib.testWriterDict) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestWriterReset" : GoString), stdgo.compress.zlib.Zlib.testWriterReset) : stdgo.testing.Testing.InternalTest), (new stdgo.testing.Testing.InternalTest(("TestWriterDictIsUsed" : GoString), stdgo.compress.zlib.Zlib.testWriterDictIsUsed) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
private var _benchmarks = (new Slice<stdgo.testing.Testing.InternalBenchmark>(0, 0) : Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
private var _fuzzTargets = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
private var _examples = (new Slice<stdgo.testing.Testing.InternalExample>(0, 0, (new stdgo.testing.Testing.InternalExample(("ExampleNewWriter" : GoString), stdgo.compress.zlib_test.Zlib_test.exampleNewWriter, ("[120 156 202 72 205 201 201 215 81 40 207 47 202 73 225 2 4 0 0 255 255 33 231 4 147]\n" : GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleNewReader" : GoString), stdgo.compress.zlib_test.Zlib_test.exampleNewReader, ("hello, world\n" : GoString), false) : stdgo.testing.Testing.InternalExample)) : Slice<stdgo.testing.Testing.InternalExample>);
private function main():Void {
        var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("compress/zlib" : GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

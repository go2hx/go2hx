package stdgo.encoding.hex_test;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
import stdgo.encoding.hex.Hex;
/**
    
    
    
**/
private var _tests = (new Slice<stdgo.testing.Testing.InternalTest>(
12,
12,
(new stdgo.testing.Testing.InternalTest(("TestEncode" : GoString), stdgo.encoding.hex.Hex.testEncode) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDecode" : GoString), stdgo.encoding.hex.Hex.testDecode) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEncodeToString" : GoString), stdgo.encoding.hex.Hex.testEncodeToString) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDecodeString" : GoString), stdgo.encoding.hex.Hex.testDecodeString) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDecodeErr" : GoString), stdgo.encoding.hex.Hex.testDecodeErr) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDecodeStringErr" : GoString), stdgo.encoding.hex.Hex.testDecodeStringErr) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEncoderDecoder" : GoString), stdgo.encoding.hex.Hex.testEncoderDecoder) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDecoderErr" : GoString), stdgo.encoding.hex.Hex.testDecoderErr) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDumper" : GoString), stdgo.encoding.hex.Hex.testDumper) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDumper_doubleclose" : GoString), stdgo.encoding.hex.Hex.testDumper_doubleclose) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDumper_earlyclose" : GoString), stdgo.encoding.hex.Hex.testDumper_earlyclose) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDump" : GoString), stdgo.encoding.hex.Hex.testDump) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
private var _benchmarks = (new Slice<stdgo.testing.Testing.InternalBenchmark>(3, 3, (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkEncode" : GoString), stdgo.encoding.hex.Hex.benchmarkEncode) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkDecode" : GoString), stdgo.encoding.hex.Hex.benchmarkDecode) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkDump" : GoString), stdgo.encoding.hex.Hex.benchmarkDump) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
private var _fuzzTargets = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
private var _examples = (new Slice<stdgo.testing.Testing.InternalExample>(6, 6, (new stdgo.testing.Testing.InternalExample(("ExampleEncode" : GoString), stdgo.encoding.hex_test.Hex_test.exampleEncode, ("48656c6c6f20476f7068657221\n" : GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleDecode" : GoString), stdgo.encoding.hex_test.Hex_test.exampleDecode, ("Hello Gopher!\n" : GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleDecodeString" : GoString), stdgo.encoding.hex_test.Hex_test.exampleDecodeString, ("Hello Gopher!\n" : GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleDump" : GoString), stdgo.encoding.hex_test.Hex_test.exampleDump, ("00000000  47 6f 20 69 73 20 61 6e  20 6f 70 65 6e 20 73 6f  |Go is an open so|\n00000010  75 72 63 65 20 70 72 6f  67 72 61 6d 6d 69 6e 67  |urce programming|\n00000020  20 6c 61 6e 67 75 61 67  65 2e                    | language.|\n" : GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleDumper" : GoString), stdgo.encoding.hex_test.Hex_test.exampleDumper, ("00000000  47 6f 20 69 73 20 61 6e  20 6f 70 65 6e 20 73 6f  |Go is an open so|\n00000010  75 72 63 65 20 70 72 6f  67 72 61 6d 6d 69 6e 67  |urce programming|\n00000020  20 6c 61 6e 67 75 61 67  65 2e 0a 57 65 20 65 6e  | language..We en|\n00000030  63 6f 75 72 61 67 65 20  61 6c 6c 20 47 6f 20 75  |courage all Go u|\n00000040  73 65 72 73 20 74 6f 20  73 75 62 73 63 72 69 62  |sers to subscrib|\n00000050  65 20 74 6f 20 67 6f 6c  61 6e 67 2d 61 6e 6e 6f  |e to golang-anno|\n00000060  75 6e 63 65 2e                                    |unce.|\n" : GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleEncodeToString" : GoString), stdgo.encoding.hex_test.Hex_test.exampleEncodeToString, ("48656c6c6f\n" : GoString), false) : stdgo.testing.Testing.InternalExample)) : Slice<stdgo.testing.Testing.InternalExample>);
private function main():Void {
        var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("encoding/hex" : GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

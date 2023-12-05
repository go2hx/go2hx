package stdgo.encoding.hex_test;
import stdgo.encoding.hex.Hex;
/**
    
    
    
**/
var _tests : stdgo.Slice<stdgo.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo.testing.Testing.InternalTest>(
12,
12,
(new stdgo.testing.Testing.InternalTest(("TestEncode" : stdgo.GoString), stdgo.encoding.hex.Hex.testEncode) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDecode" : stdgo.GoString), stdgo.encoding.hex.Hex.testDecode) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEncodeToString" : stdgo.GoString), stdgo.encoding.hex.Hex.testEncodeToString) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDecodeString" : stdgo.GoString), stdgo.encoding.hex.Hex.testDecodeString) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDecodeErr" : stdgo.GoString), stdgo.encoding.hex.Hex.testDecodeErr) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDecodeStringErr" : stdgo.GoString), stdgo.encoding.hex.Hex.testDecodeStringErr) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEncoderDecoder" : stdgo.GoString), stdgo.encoding.hex.Hex.testEncoderDecoder) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDecoderErr" : stdgo.GoString), stdgo.encoding.hex.Hex.testDecoderErr) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDumper" : stdgo.GoString), stdgo.encoding.hex.Hex.testDumper) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDumper_doubleclose" : stdgo.GoString), stdgo.encoding.hex.Hex.testDumper_doubleclose) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDumper_earlyclose" : stdgo.GoString), stdgo.encoding.hex.Hex.testDumper_earlyclose) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDump" : stdgo.GoString), stdgo.encoding.hex.Hex.testDump) : stdgo.testing.Testing.InternalTest)) : stdgo.Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
var _benchmarks : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>(3, 3, (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkEncode" : stdgo.GoString), stdgo.encoding.hex.Hex.benchmarkEncode) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkDecode" : stdgo.GoString), stdgo.encoding.hex.Hex.benchmarkDecode) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkDump" : stdgo.GoString), stdgo.encoding.hex.Hex.benchmarkDump) : stdgo.testing.Testing.InternalBenchmark)) : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
var _fuzzTargets : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
var _examples : stdgo.Slice<stdgo.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo.testing.Testing.InternalExample>(6, 6, (new stdgo.testing.Testing.InternalExample(("ExampleEncode" : stdgo.GoString), stdgo.encoding.hex_test.Hex_test.exampleEncode, ("48656c6c6f20476f7068657221\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleDecode" : stdgo.GoString), stdgo.encoding.hex_test.Hex_test.exampleDecode, ("Hello Gopher!\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleDecodeString" : stdgo.GoString), stdgo.encoding.hex_test.Hex_test.exampleDecodeString, ("Hello Gopher!\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleDump" : stdgo.GoString), stdgo.encoding.hex_test.Hex_test.exampleDump, ("00000000  47 6f 20 69 73 20 61 6e  20 6f 70 65 6e 20 73 6f  |Go is an open so|\n00000010  75 72 63 65 20 70 72 6f  67 72 61 6d 6d 69 6e 67  |urce programming|\n00000020  20 6c 61 6e 67 75 61 67  65 2e                    | language.|\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleDumper" : stdgo.GoString), stdgo.encoding.hex_test.Hex_test.exampleDumper, ("00000000  47 6f 20 69 73 20 61 6e  20 6f 70 65 6e 20 73 6f  |Go is an open so|\n00000010  75 72 63 65 20 70 72 6f  67 72 61 6d 6d 69 6e 67  |urce programming|\n00000020  20 6c 61 6e 67 75 61 67  65 2e 0a 57 65 20 65 6e  | language..We en|\n00000030  63 6f 75 72 61 67 65 20  61 6c 6c 20 47 6f 20 75  |courage all Go u|\n00000040  73 65 72 73 20 74 6f 20  73 75 62 73 63 72 69 62  |sers to subscrib|\n00000050  65 20 74 6f 20 67 6f 6c  61 6e 67 2d 61 6e 6e 6f  |e to golang-anno|\n00000060  75 6e 63 65 2e                                    |unce.|\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleEncodeToString" : stdgo.GoString), stdgo.encoding.hex_test.Hex_test.exampleEncodeToString, ("48656c6c6f\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample)) : stdgo.Slice<stdgo.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("encoding/hex" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

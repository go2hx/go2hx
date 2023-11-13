package stdgo.encoding.base64_test;
import stdgo.encoding.base64.Base64;
/**
    
    
    
**/
var _tests : stdgo.Slice<stdgo.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo.testing.Testing.InternalTest>(
17,
17,
(new stdgo.testing.Testing.InternalTest(("TestEncode" : stdgo.GoString)?.__copy__(), stdgo.encoding.base64.Base64.testEncode) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEncoder" : stdgo.GoString)?.__copy__(), stdgo.encoding.base64.Base64.testEncoder) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEncoderBuffering" : stdgo.GoString)?.__copy__(), stdgo.encoding.base64.Base64.testEncoderBuffering) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDecode" : stdgo.GoString)?.__copy__(), stdgo.encoding.base64.Base64.testDecode) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDecoder" : stdgo.GoString)?.__copy__(), stdgo.encoding.base64.Base64.testDecoder) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDecoderBuffering" : stdgo.GoString)?.__copy__(), stdgo.encoding.base64.Base64.testDecoderBuffering) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDecodeCorrupt" : stdgo.GoString)?.__copy__(), stdgo.encoding.base64.Base64.testDecodeCorrupt) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDecodeBounds" : stdgo.GoString)?.__copy__(), stdgo.encoding.base64.Base64.testDecodeBounds) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEncodedLen" : stdgo.GoString)?.__copy__(), stdgo.encoding.base64.Base64.testEncodedLen) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDecodedLen" : stdgo.GoString)?.__copy__(), stdgo.encoding.base64.Base64.testDecodedLen) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBig" : stdgo.GoString)?.__copy__(), stdgo.encoding.base64.Base64.testBig) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNewLineCharacters" : stdgo.GoString)?.__copy__(), stdgo.encoding.base64.Base64.testNewLineCharacters) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDecoderIssue3577" : stdgo.GoString)?.__copy__(), stdgo.encoding.base64.Base64.testDecoderIssue3577) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDecoderIssue4779" : stdgo.GoString)?.__copy__(), stdgo.encoding.base64.Base64.testDecoderIssue4779) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDecoderIssue7733" : stdgo.GoString)?.__copy__(), stdgo.encoding.base64.Base64.testDecoderIssue7733) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDecoderIssue15656" : stdgo.GoString)?.__copy__(), stdgo.encoding.base64.Base64.testDecoderIssue15656) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDecoderRaw" : stdgo.GoString)?.__copy__(), stdgo.encoding.base64.Base64.testDecoderRaw) : stdgo.testing.Testing.InternalTest)) : stdgo.Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
var _benchmarks : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>(3, 3, (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkEncodeToString" : stdgo.GoString)?.__copy__(), stdgo.encoding.base64.Base64.benchmarkEncodeToString) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkDecodeString" : stdgo.GoString)?.__copy__(), stdgo.encoding.base64.Base64.benchmarkDecodeString) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkNewEncoding" : stdgo.GoString)?.__copy__(), stdgo.encoding.base64.Base64.benchmarkNewEncoding) : stdgo.testing.Testing.InternalBenchmark)) : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
var _fuzzTargets : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
var _examples : stdgo.Slice<stdgo.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo.testing.Testing.InternalExample>(6, 6, (new stdgo.testing.Testing.InternalExample(("Example" : stdgo.GoString)?.__copy__(), stdgo.encoding.base64_test.Base64_test.example, ("SGVsbG8sIOS4lueVjA==\nHello, 世界\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleEncoding_EncodeToString" : stdgo.GoString)?.__copy__(), stdgo.encoding.base64_test.Base64_test.exampleEncoding_EncodeToString, ("YW55ICsgb2xkICYgZGF0YQ==\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleEncoding_Encode" : stdgo.GoString)?.__copy__(), stdgo.encoding.base64_test.Base64_test.exampleEncoding_Encode, ("SGVsbG8sIHdvcmxkIQ==\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleEncoding_DecodeString" : stdgo.GoString)?.__copy__(), stdgo.encoding.base64_test.Base64_test.exampleEncoding_DecodeString, ("\"some data with \\x00 and \\ufeff\"\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleEncoding_Decode" : stdgo.GoString)?.__copy__(), stdgo.encoding.base64_test.Base64_test.exampleEncoding_Decode, ("\"Hello, world!\"\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleNewEncoder" : stdgo.GoString)?.__copy__(), stdgo.encoding.base64_test.Base64_test.exampleNewEncoder, ("Zm9vAGJhcg==\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample)) : stdgo.Slice<stdgo.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("encoding/base64" : stdgo.GoString)?.__copy__();
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

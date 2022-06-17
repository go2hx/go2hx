package stdgo.encoding.base64_test;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var _tests : Slice<stdgo.testing.Testing.InternalTest> = ((new Slice<stdgo.testing.Testing.InternalTest>(
((new stdgo.testing.Testing.InternalTest(((("TestEncode" : GoString))), stdgo.encoding.base64.Base64.testEncode) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestEncoder" : GoString))), stdgo.encoding.base64.Base64.testEncoder) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestEncoderBuffering" : GoString))), stdgo.encoding.base64.Base64.testEncoderBuffering) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestDecode" : GoString))), stdgo.encoding.base64.Base64.testDecode) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestDecoder" : GoString))), stdgo.encoding.base64.Base64.testDecoder) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestDecoderBuffering" : GoString))), stdgo.encoding.base64.Base64.testDecoderBuffering) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestDecodeCorrupt" : GoString))), stdgo.encoding.base64.Base64.testDecodeCorrupt) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestDecodeBounds" : GoString))), stdgo.encoding.base64.Base64.testDecodeBounds) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestEncodedLen" : GoString))), stdgo.encoding.base64.Base64.testEncodedLen) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestDecodedLen" : GoString))), stdgo.encoding.base64.Base64.testDecodedLen) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestBig" : GoString))), stdgo.encoding.base64.Base64.testBig) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestNewLineCharacters" : GoString))), stdgo.encoding.base64.Base64.testNewLineCharacters) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestDecoderIssue3577" : GoString))), stdgo.encoding.base64.Base64.testDecoderIssue3577) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestDecoderIssue4779" : GoString))), stdgo.encoding.base64.Base64.testDecoderIssue4779) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestDecoderIssue7733" : GoString))), stdgo.encoding.base64.Base64.testDecoderIssue7733) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestDecoderIssue15656" : GoString))), stdgo.encoding.base64.Base64.testDecoderIssue15656) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestDecoderRaw" : GoString))), stdgo.encoding.base64.Base64.testDecoderRaw) : stdgo.testing.Testing.InternalTest))) : Slice<stdgo.testing.Testing.InternalTest>));
var _benchmarks : Slice<stdgo.testing.Testing.InternalBenchmark> = ((new Slice<stdgo.testing.Testing.InternalBenchmark>(((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkEncodeToString" : GoString))), stdgo.encoding.base64.Base64.benchmarkEncodeToString) : stdgo.testing.Testing.InternalBenchmark)), ((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkDecodeString" : GoString))), stdgo.encoding.base64.Base64.benchmarkDecodeString) : stdgo.testing.Testing.InternalBenchmark))) : Slice<stdgo.testing.Testing.InternalBenchmark>));
var _fuzzTargets : Slice<stdgo.testing.Testing.InternalFuzzTarget> = ((new Slice<stdgo.testing.Testing.InternalFuzzTarget>() : Slice<stdgo.testing.Testing.InternalFuzzTarget>));
var _examples : Slice<stdgo.testing.Testing.InternalExample> = ((new Slice<stdgo.testing.Testing.InternalExample>(((new stdgo.testing.Testing.InternalExample(((("Example" : GoString))), stdgo.encoding.base64_test.Base64_test.example, ((("SGVsbG8sIOS4lueVjA==\nHello, 世界\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)), ((new stdgo.testing.Testing.InternalExample(((("ExampleEncoding_EncodeToString" : GoString))), stdgo.encoding.base64_test.Base64_test.exampleEncoding_EncodeToString, ((("YW55ICsgb2xkICYgZGF0YQ==\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)), ((new stdgo.testing.Testing.InternalExample(((("ExampleEncoding_Encode" : GoString))), stdgo.encoding.base64_test.Base64_test.exampleEncoding_Encode, ((("SGVsbG8sIHdvcmxkIQ==\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)), ((new stdgo.testing.Testing.InternalExample(((("ExampleEncoding_DecodeString" : GoString))), stdgo.encoding.base64_test.Base64_test.exampleEncoding_DecodeString, ((("\"some data with \\x00 and \\ufeff\"\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)), ((new stdgo.testing.Testing.InternalExample(((("ExampleEncoding_Decode" : GoString))), stdgo.encoding.base64_test.Base64_test.exampleEncoding_Decode, ((("\"Hello, world!\"\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)), ((new stdgo.testing.Testing.InternalExample(((("ExampleNewEncoder" : GoString))), stdgo.encoding.base64_test.Base64_test.exampleNewEncoder, ((("Zm9vAGJhcg==\n" : GoString))), false) : stdgo.testing.Testing.InternalExample))) : Slice<stdgo.testing.Testing.InternalExample>));
function main():Void {
        var _m:Ref<stdgo.testing.Testing.M> = stdgo.testing.Testing.mainStart(((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        stdgo.os.Os.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ((("encoding/base64" : GoString)));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

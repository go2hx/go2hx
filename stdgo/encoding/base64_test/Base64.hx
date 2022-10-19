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

private var _tests:Slice<stdgo.testing.Testing.InternalTest> = (new Slice<stdgo.testing.Testing.InternalTest>(0, 0,
	(new stdgo.testing.Testing.InternalTest(Go.str("TestEncode"), stdgo.encoding.base64.Base64.testEncode) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestEncoder"), stdgo.encoding.base64.Base64.testEncoder) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestEncoderBuffering"),
		stdgo.encoding.base64.Base64.testEncoderBuffering) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestDecode"), stdgo.encoding.base64.Base64.testDecode) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestDecoder"), stdgo.encoding.base64.Base64.testDecoder) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestDecoderBuffering"),
		stdgo.encoding.base64.Base64.testDecoderBuffering) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestDecodeCorrupt"), stdgo.encoding.base64.Base64.testDecodeCorrupt) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestDecodeBounds"), stdgo.encoding.base64.Base64.testDecodeBounds) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestEncodedLen"), stdgo.encoding.base64.Base64.testEncodedLen) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestDecodedLen"), stdgo.encoding.base64.Base64.testDecodedLen) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestBig"), stdgo.encoding.base64.Base64.testBig) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestNewLineCharacters"),
		stdgo.encoding.base64.Base64.testNewLineCharacters) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestDecoderIssue3577"),
		stdgo.encoding.base64.Base64.testDecoderIssue3577) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestDecoderIssue4779"),
		stdgo.encoding.base64.Base64.testDecoderIssue4779) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestDecoderIssue7733"),
		stdgo.encoding.base64.Base64.testDecoderIssue7733) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestDecoderIssue15656"),
		stdgo.encoding.base64.Base64.testDecoderIssue15656) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestDecoderRaw"),
		stdgo.encoding.base64.Base64.testDecoderRaw) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);

private var _benchmarks:Slice<stdgo.testing.Testing.InternalBenchmark> = (new Slice<stdgo.testing.Testing.InternalBenchmark>(0, 0,
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkEncodeToString"),
		stdgo.encoding.base64.Base64.benchmarkEncodeToString) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkDecodeString"),
		stdgo.encoding.base64.Base64.benchmarkDecodeString) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);

private var _fuzzTargets:Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0,
	0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);

private var _examples:Slice<stdgo.testing.Testing.InternalExample> = (new Slice<stdgo.testing.Testing.InternalExample>(0, 0,
	(new stdgo.testing.Testing.InternalExample(Go.str("Example"), stdgo.encoding.base64_test.Base64_test.example, Go.str("SGVsbG8sIOS4lueVjA==\nHello, 世界\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleEncoding_EncodeToString"),
		stdgo.encoding.base64_test.Base64_test.exampleEncoding_EncodeToString, Go.str("YW55ICsgb2xkICYgZGF0YQ==\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleEncoding_Encode"), stdgo.encoding.base64_test.Base64_test.exampleEncoding_Encode,
		Go.str("SGVsbG8sIHdvcmxkIQ==\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleEncoding_DecodeString"), stdgo.encoding.base64_test.Base64_test.exampleEncoding_DecodeString,
		Go.str("\"some data with \\x00 and \\ufeff\"\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleEncoding_Decode"), stdgo.encoding.base64_test.Base64_test.exampleEncoding_Decode,
		Go.str("\"Hello, world!\"\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleNewEncoder"), stdgo.encoding.base64_test.Base64_test.exampleNewEncoder,
		Go.str("Zm9vAGJhcg==\n"), false) : stdgo.testing.Testing.InternalExample)) : Slice<stdgo.testing.Testing.InternalExample>);

function main():Void {
	var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)),
		_tests, _benchmarks,
		_fuzzTargets, _examples);
	Sys.exit(_m.run());
}

@:keep var _ = {
	try {
		stdgo.testing.internal.testdeps.Testdeps.importPath = Go.str("encoding/base64");
	} catch (__exception__)
		if (__exception__.message != "__return__")
			throw __exception__;
	true;
};

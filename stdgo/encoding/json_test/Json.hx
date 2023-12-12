package stdgo.encoding.json_test;
import stdgo.encoding.json.Json;
/**
    
    
    
**/
var _tests : stdgo.Slice<stdgo.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo.testing.Testing.InternalTest>(
84,
84,
(new stdgo.testing.Testing.InternalTest(("TestMarshal" : stdgo.GoString), stdgo.encoding.json.Json.testMarshal) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMarshalBadUTF8" : stdgo.GoString), stdgo.encoding.json.Json.testMarshalBadUTF8) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMarshalNumberZeroVal" : stdgo.GoString), stdgo.encoding.json.Json.testMarshalNumberZeroVal) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMarshalEmbeds" : stdgo.GoString), stdgo.encoding.json.Json.testMarshalEmbeds) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnmarshal" : stdgo.GoString), stdgo.encoding.json.Json.testUnmarshal) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnmarshalMarshal" : stdgo.GoString), stdgo.encoding.json.Json.testUnmarshalMarshal) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNumberAccessors" : stdgo.GoString), stdgo.encoding.json.Json.testNumberAccessors) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLargeByteSlice" : stdgo.GoString), stdgo.encoding.json.Json.testLargeByteSlice) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnmarshalInterface" : stdgo.GoString), stdgo.encoding.json.Json.testUnmarshalInterface) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnmarshalPtrPtr" : stdgo.GoString), stdgo.encoding.json.Json.testUnmarshalPtrPtr) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEscape" : stdgo.GoString), stdgo.encoding.json.Json.testEscape) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestErrorMessageFromMisusedString" : stdgo.GoString), stdgo.encoding.json.Json.testErrorMessageFromMisusedString) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRefUnmarshal" : stdgo.GoString), stdgo.encoding.json.Json.testRefUnmarshal) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEmptyString" : stdgo.GoString), stdgo.encoding.json.Json.testEmptyString) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNullString" : stdgo.GoString), stdgo.encoding.json.Json.testNullString) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestInterfaceSet" : stdgo.GoString), stdgo.encoding.json.Json.testInterfaceSet) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnmarshalNulls" : stdgo.GoString), stdgo.encoding.json.Json.testUnmarshalNulls) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStringKind" : stdgo.GoString), stdgo.encoding.json.Json.testStringKind) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestByteKind" : stdgo.GoString), stdgo.encoding.json.Json.testByteKind) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSliceOfCustomByte" : stdgo.GoString), stdgo.encoding.json.Json.testSliceOfCustomByte) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnmarshalTypeError" : stdgo.GoString), stdgo.encoding.json.Json.testUnmarshalTypeError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnmarshalSyntax" : stdgo.GoString), stdgo.encoding.json.Json.testUnmarshalSyntax) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnmarshalUnexported" : stdgo.GoString), stdgo.encoding.json.Json.testUnmarshalUnexported) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnmarshalJSONLiteralError" : stdgo.GoString), stdgo.encoding.json.Json.testUnmarshalJSONLiteralError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSkipArrayObjects" : stdgo.GoString), stdgo.encoding.json.Json.testSkipArrayObjects) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPrefilled" : stdgo.GoString), stdgo.encoding.json.Json.testPrefilled) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestInvalidUnmarshal" : stdgo.GoString), stdgo.encoding.json.Json.testInvalidUnmarshal) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestInvalidUnmarshalText" : stdgo.GoString), stdgo.encoding.json.Json.testInvalidUnmarshalText) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestInvalidStringOption" : stdgo.GoString), stdgo.encoding.json.Json.testInvalidStringOption) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnmarshalEmbeddedUnexported" : stdgo.GoString), stdgo.encoding.json.Json.testUnmarshalEmbeddedUnexported) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnmarshalErrorAfterMultipleJSON" : stdgo.GoString), stdgo.encoding.json.Json.testUnmarshalErrorAfterMultipleJSON) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnmarshalPanic" : stdgo.GoString), stdgo.encoding.json.Json.testUnmarshalPanic) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnmarshalRecursivePointer" : stdgo.GoString), stdgo.encoding.json.Json.testUnmarshalRecursivePointer) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnmarshalMapWithTextUnmarshalerStringKey" : stdgo.GoString), stdgo.encoding.json.Json.testUnmarshalMapWithTextUnmarshalerStringKey) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnmarshalRescanLiteralMangledUnquote" : stdgo.GoString), stdgo.encoding.json.Json.testUnmarshalRescanLiteralMangledUnquote) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnmarshalMaxDepth" : stdgo.GoString), stdgo.encoding.json.Json.testUnmarshalMaxDepth) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestOmitEmpty" : stdgo.GoString), stdgo.encoding.json.Json.testOmitEmpty) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRoundtripStringTag" : stdgo.GoString), stdgo.encoding.json.Json.testRoundtripStringTag) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEncodeRenamedByteSlice" : stdgo.GoString), stdgo.encoding.json.Json.testEncodeRenamedByteSlice) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSamePointerNoCycle" : stdgo.GoString), stdgo.encoding.json.Json.testSamePointerNoCycle) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSliceNoCycle" : stdgo.GoString), stdgo.encoding.json.Json.testSliceNoCycle) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnsupportedValues" : stdgo.GoString), stdgo.encoding.json.Json.testUnsupportedValues) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMarshalTextFloatMap" : stdgo.GoString), stdgo.encoding.json.Json.testMarshalTextFloatMap) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRefValMarshal" : stdgo.GoString), stdgo.encoding.json.Json.testRefValMarshal) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMarshalerEscaping" : stdgo.GoString), stdgo.encoding.json.Json.testMarshalerEscaping) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAnonymousFields" : stdgo.GoString), stdgo.encoding.json.Json.testAnonymousFields) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNilMarshal" : stdgo.GoString), stdgo.encoding.json.Json.testNilMarshal) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEmbeddedBug" : stdgo.GoString), stdgo.encoding.json.Json.testEmbeddedBug) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestTaggedFieldDominates" : stdgo.GoString), stdgo.encoding.json.Json.testTaggedFieldDominates) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDuplicatedFieldDisappears" : stdgo.GoString), stdgo.encoding.json.Json.testDuplicatedFieldDisappears) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIssue10281" : stdgo.GoString), stdgo.encoding.json.Json.testIssue10281) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMarshalErrorAndReuseEncodeState" : stdgo.GoString), stdgo.encoding.json.Json.testMarshalErrorAndReuseEncodeState) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestHTMLEscape" : stdgo.GoString), stdgo.encoding.json.Json.testHTMLEscape) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEncodePointerString" : stdgo.GoString), stdgo.encoding.json.Json.testEncodePointerString) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEncodeString" : stdgo.GoString), stdgo.encoding.json.Json.testEncodeString) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEncodeBytekind" : stdgo.GoString), stdgo.encoding.json.Json.testEncodeBytekind) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestTextMarshalerMapKeysAreSorted" : stdgo.GoString), stdgo.encoding.json.Json.testTextMarshalerMapKeysAreSorted) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNilMarshalerTextMapKey" : stdgo.GoString), stdgo.encoding.json.Json.testNilMarshalerTextMapKey) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMarshalFloat" : stdgo.GoString), stdgo.encoding.json.Json.testMarshalFloat) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMarshalRawMessageValue" : stdgo.GoString), stdgo.encoding.json.Json.testMarshalRawMessageValue) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMarshalPanic" : stdgo.GoString), stdgo.encoding.json.Json.testMarshalPanic) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMarshalUncommonFieldNames" : stdgo.GoString), stdgo.encoding.json.Json.testMarshalUncommonFieldNames) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMarshalerError" : stdgo.GoString), stdgo.encoding.json.Json.testMarshalerError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNumberIsValid" : stdgo.GoString), stdgo.encoding.json.Json.testNumberIsValid) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestValid" : stdgo.GoString), stdgo.encoding.json.Json.testValid) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCompact" : stdgo.GoString), stdgo.encoding.json.Json.testCompact) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCompactSeparators" : stdgo.GoString), stdgo.encoding.json.Json.testCompactSeparators) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIndent" : stdgo.GoString), stdgo.encoding.json.Json.testIndent) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCompactBig" : stdgo.GoString), stdgo.encoding.json.Json.testCompactBig) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIndentBig" : stdgo.GoString), stdgo.encoding.json.Json.testIndentBig) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIndentErrors" : stdgo.GoString), stdgo.encoding.json.Json.testIndentErrors) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEncoder" : stdgo.GoString), stdgo.encoding.json.Json.testEncoder) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEncoderErrorAndReuseEncodeState" : stdgo.GoString), stdgo.encoding.json.Json.testEncoderErrorAndReuseEncodeState) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEncoderIndent" : stdgo.GoString), stdgo.encoding.json.Json.testEncoderIndent) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEncoderSetEscapeHTML" : stdgo.GoString), stdgo.encoding.json.Json.testEncoderSetEscapeHTML) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDecoder" : stdgo.GoString), stdgo.encoding.json.Json.testDecoder) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDecoderBuffered" : stdgo.GoString), stdgo.encoding.json.Json.testDecoderBuffered) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRawMessage" : stdgo.GoString), stdgo.encoding.json.Json.testRawMessage) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNullRawMessage" : stdgo.GoString), stdgo.encoding.json.Json.testNullRawMessage) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBlocking" : stdgo.GoString), stdgo.encoding.json.Json.testBlocking) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDecodeInStream" : stdgo.GoString), stdgo.encoding.json.Json.testDecodeInStream) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestHTTPDecoding" : stdgo.GoString), stdgo.encoding.json.Json.testHTTPDecoding) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStructTagObjectKey" : stdgo.GoString), stdgo.encoding.json.Json.testStructTagObjectKey) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestTagParsing" : stdgo.GoString), stdgo.encoding.json.Json.testTagParsing) : stdgo.testing.Testing.InternalTest)) : stdgo.Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
var _benchmarks : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>(
22,
22,
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCodeEncoder" : stdgo.GoString), stdgo.encoding.json.Json.benchmarkCodeEncoder) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCodeEncoderError" : stdgo.GoString), stdgo.encoding.json.Json.benchmarkCodeEncoderError) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCodeMarshal" : stdgo.GoString), stdgo.encoding.json.Json.benchmarkCodeMarshal) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCodeMarshalError" : stdgo.GoString), stdgo.encoding.json.Json.benchmarkCodeMarshalError) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkMarshalBytes" : stdgo.GoString), stdgo.encoding.json.Json.benchmarkMarshalBytes) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkMarshalBytesError" : stdgo.GoString), stdgo.encoding.json.Json.benchmarkMarshalBytesError) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCodeDecoder" : stdgo.GoString), stdgo.encoding.json.Json.benchmarkCodeDecoder) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkUnicodeDecoder" : stdgo.GoString), stdgo.encoding.json.Json.benchmarkUnicodeDecoder) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkDecoderStream" : stdgo.GoString), stdgo.encoding.json.Json.benchmarkDecoderStream) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCodeUnmarshal" : stdgo.GoString), stdgo.encoding.json.Json.benchmarkCodeUnmarshal) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCodeUnmarshalReuse" : stdgo.GoString), stdgo.encoding.json.Json.benchmarkCodeUnmarshalReuse) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkUnmarshalString" : stdgo.GoString), stdgo.encoding.json.Json.benchmarkUnmarshalString) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkUnmarshalFloat64" : stdgo.GoString), stdgo.encoding.json.Json.benchmarkUnmarshalFloat64) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkUnmarshalInt64" : stdgo.GoString), stdgo.encoding.json.Json.benchmarkUnmarshalInt64) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkIssue10335" : stdgo.GoString), stdgo.encoding.json.Json.benchmarkIssue10335) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkIssue34127" : stdgo.GoString), stdgo.encoding.json.Json.benchmarkIssue34127) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkUnmapped" : stdgo.GoString), stdgo.encoding.json.Json.benchmarkUnmapped) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkTypeFieldsCache" : stdgo.GoString), stdgo.encoding.json.Json.benchmarkTypeFieldsCache) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkEncodeMarshaler" : stdgo.GoString), stdgo.encoding.json.Json.benchmarkEncodeMarshaler) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkEncoderEncode" : stdgo.GoString), stdgo.encoding.json.Json.benchmarkEncoderEncode) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkNumberIsValid" : stdgo.GoString), stdgo.encoding.json.Json.benchmarkNumberIsValid) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkNumberIsValidRegexp" : stdgo.GoString), stdgo.encoding.json.Json.benchmarkNumberIsValidRegexp) : stdgo.testing.Testing.InternalBenchmark)) : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
var _fuzzTargets : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>(3, 3, (new stdgo.testing.Testing.InternalFuzzTarget(("FuzzEqualFold" : stdgo.GoString), stdgo.encoding.json.Json.fuzzEqualFold) : stdgo.testing.Testing.InternalFuzzTarget), (new stdgo.testing.Testing.InternalFuzzTarget(("FuzzUnmarshalJSON" : stdgo.GoString), stdgo.encoding.json.Json.fuzzUnmarshalJSON) : stdgo.testing.Testing.InternalFuzzTarget), (new stdgo.testing.Testing.InternalFuzzTarget(("FuzzDecoderToken" : stdgo.GoString), stdgo.encoding.json.Json.fuzzDecoderToken) : stdgo.testing.Testing.InternalFuzzTarget)) : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
var _examples : stdgo.Slice<stdgo.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo.testing.Testing.InternalExample>(
13,
13,
(new stdgo.testing.Testing.InternalExample(("Example_customMarshalJSON" : stdgo.GoString), stdgo.encoding.json_test.Json_test.example_customMarshalJSON, ("Zoo Census:\n* Gophers: 3\n* Zebras:  2\n* Unknown: 3\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleMarshal" : stdgo.GoString), stdgo.encoding.json_test.Json_test.exampleMarshal, ("{\"ID\":1,\"Name\":\"Reds\",\"Colors\":[\"Crimson\",\"Red\",\"Ruby\",\"Maroon\"]}\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleUnmarshal" : stdgo.GoString), stdgo.encoding.json_test.Json_test.exampleUnmarshal, ("[{Name:Platypus Order:Monotremata} {Name:Quoll Order:Dasyuromorphia}]\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleDecoder" : stdgo.GoString), stdgo.encoding.json_test.Json_test.exampleDecoder, ("Ed: Knock knock.\nSam: Who\'s there?\nEd: Go fmt.\nSam: Go fmt who?\nEd: Go fmt yourself!\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleDecoder_Token" : stdgo.GoString), stdgo.encoding.json_test.Json_test.exampleDecoder_Token, ("json.Delim: { (more)\nstring: Message (more)\nstring: Hello (more)\nstring: Array (more)\njson.Delim: [ (more)\nfloat64: 1 (more)\nfloat64: 2 (more)\nfloat64: 3\njson.Delim: ] (more)\nstring: Null (more)\n<nil>: <nil> (more)\nstring: Number (more)\nfloat64: 1.234\njson.Delim: }\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleDecoder_Decode_stream" : stdgo.GoString), stdgo.encoding.json_test.Json_test.exampleDecoder_Decode_stream, ("json.Delim: [\nEd: Knock knock.\nSam: Who\'s there?\nEd: Go fmt.\nSam: Go fmt who?\nEd: Go fmt yourself!\njson.Delim: ]\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRawMessage_unmarshal" : stdgo.GoString), stdgo.encoding.json_test.Json_test.exampleRawMessage_unmarshal, ("YCbCr &{255 0 -10}\nRGB &{98 218 255}\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRawMessage_marshal" : stdgo.GoString), stdgo.encoding.json_test.Json_test.exampleRawMessage_marshal, ("{\n\t\"header\": {\n\t\t\"precomputed\": true\n\t},\n\t\"body\": \"Hello Gophers!\"\n}\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleIndent" : stdgo.GoString), stdgo.encoding.json_test.Json_test.exampleIndent, ("[\n=\t{\n=\t\t\"Name\": \"Diamond Fork\",\n=\t\t\"Number\": 29\n=\t},\n=\t{\n=\t\t\"Name\": \"Sheep Creek\",\n=\t\t\"Number\": 51\n=\t}\n=]\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleMarshalIndent" : stdgo.GoString), stdgo.encoding.json_test.Json_test.exampleMarshalIndent, ("{\n<prefix><indent>\"a\": 1,\n<prefix><indent>\"b\": 2\n<prefix>}\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleValid" : stdgo.GoString), stdgo.encoding.json_test.Json_test.exampleValid, ("true false\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleHTMLEscape" : stdgo.GoString), stdgo.encoding.json_test.Json_test.exampleHTMLEscape, ("{\"Name\":\"\\u003cb\\u003eHTML content\\u003c/b\\u003e\"}\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("Example_textMarshalJSON" : stdgo.GoString), stdgo.encoding.json_test.Json_test.example_textMarshalJSON, ("Inventory Counts:\n* Small:        3\n* Large:        2\n* Unrecognized: 3\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample)) : stdgo.Slice<stdgo.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("encoding/json" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

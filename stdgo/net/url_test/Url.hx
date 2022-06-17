package stdgo.net.url_test;
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
((new stdgo.testing.Testing.InternalTest(((("TestParse" : GoString))), stdgo.net.url.Url.testParse) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestParseRequestURI" : GoString))), stdgo.net.url.Url.testParseRequestURI) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestURLString" : GoString))), stdgo.net.url.Url.testURLString) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestURLRedacted" : GoString))), stdgo.net.url.Url.testURLRedacted) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestUnescape" : GoString))), stdgo.net.url.Url.testUnescape) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestQueryEscape" : GoString))), stdgo.net.url.Url.testQueryEscape) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestPathEscape" : GoString))), stdgo.net.url.Url.testPathEscape) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestEncodeQuery" : GoString))), stdgo.net.url.Url.testEncodeQuery) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestResolvePath" : GoString))), stdgo.net.url.Url.testResolvePath) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestResolveReference" : GoString))), stdgo.net.url.Url.testResolveReference) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestQueryValues" : GoString))), stdgo.net.url.Url.testQueryValues) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestParseQuery" : GoString))), stdgo.net.url.Url.testParseQuery) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestRequestURI" : GoString))), stdgo.net.url.Url.testRequestURI) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestParseFailure" : GoString))), stdgo.net.url.Url.testParseFailure) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestParseErrors" : GoString))), stdgo.net.url.Url.testParseErrors) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestStarRequest" : GoString))), stdgo.net.url.Url.testStarRequest) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestShouldEscape" : GoString))), stdgo.net.url.Url.testShouldEscape) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestURLErrorImplementsNetError" : GoString))), stdgo.net.url.Url.testURLErrorImplementsNetError) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestURLHostnameAndPort" : GoString))), stdgo.net.url.Url.testURLHostnameAndPort) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestJSON" : GoString))), stdgo.net.url.Url.testJSON) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestGob" : GoString))), stdgo.net.url.Url.testGob) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestNilUser" : GoString))), stdgo.net.url.Url.testNilUser) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestInvalidUserPassword" : GoString))), stdgo.net.url.Url.testInvalidUserPassword) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestRejectControlCharacters" : GoString))), stdgo.net.url.Url.testRejectControlCharacters) : stdgo.testing.Testing.InternalTest))) : Slice<stdgo.testing.Testing.InternalTest>));
var _benchmarks : Slice<stdgo.testing.Testing.InternalBenchmark> = ((new Slice<stdgo.testing.Testing.InternalBenchmark>(((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkString" : GoString))), stdgo.net.url.Url.benchmarkString) : stdgo.testing.Testing.InternalBenchmark)), ((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkResolvePath" : GoString))), stdgo.net.url.Url.benchmarkResolvePath) : stdgo.testing.Testing.InternalBenchmark)), ((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkQueryEscape" : GoString))), stdgo.net.url.Url.benchmarkQueryEscape) : stdgo.testing.Testing.InternalBenchmark)), ((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkPathEscape" : GoString))), stdgo.net.url.Url.benchmarkPathEscape) : stdgo.testing.Testing.InternalBenchmark)), ((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkQueryUnescape" : GoString))), stdgo.net.url.Url.benchmarkQueryUnescape) : stdgo.testing.Testing.InternalBenchmark)), ((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkPathUnescape" : GoString))), stdgo.net.url.Url.benchmarkPathUnescape) : stdgo.testing.Testing.InternalBenchmark))) : Slice<stdgo.testing.Testing.InternalBenchmark>));
var _fuzzTargets : Slice<stdgo.testing.Testing.InternalFuzzTarget> = ((new Slice<stdgo.testing.Testing.InternalFuzzTarget>() : Slice<stdgo.testing.Testing.InternalFuzzTarget>));
var _examples : Slice<stdgo.testing.Testing.InternalExample> = ((new Slice<stdgo.testing.Testing.InternalExample>(
((new stdgo.testing.Testing.InternalExample(((("ExamplePathEscape" : GoString))), stdgo.net.url_test.Url_test.examplePathEscape, ((("my%2Fcool+blog&about%2Cstuff\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExamplePathUnescape" : GoString))), stdgo.net.url_test.Url_test.examplePathUnescape, ((("my/cool+blog&about,stuff\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleQueryEscape" : GoString))), stdgo.net.url_test.Url_test.exampleQueryEscape, ((("my%2Fcool%2Bblog%26about%2Cstuff\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleQueryUnescape" : GoString))), stdgo.net.url_test.Url_test.exampleQueryUnescape, ((("my/cool+blog&about,stuff\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleValues" : GoString))), stdgo.net.url_test.Url_test.exampleValues, ((("Ava\nJess\n[Jess Sarah Zoe]\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleValues_Add" : GoString))), stdgo.net.url_test.Url_test.exampleValues_Add, ((("[meow mew mau]\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleValues_Del" : GoString))), stdgo.net.url_test.Url_test.exampleValues_Del, ((("[meow mew mau]\n[]\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleValues_Encode" : GoString))), stdgo.net.url_test.Url_test.exampleValues_Encode, ((("cat+sounds=meow&cat+sounds=mew%2F&cat+sounds=mau%24\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleValues_Get" : GoString))), stdgo.net.url_test.Url_test.exampleValues_Get, ((("\"meow\"\n\"\"\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleValues_Has" : GoString))), stdgo.net.url_test.Url_test.exampleValues_Has, ((("true\nfalse\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleValues_Set" : GoString))), stdgo.net.url_test.Url_test.exampleValues_Set, ((("[meow mew mau]\n[meow]\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleURL" : GoString))), stdgo.net.url_test.Url_test.exampleURL, ((("https://google.com/search?q=golang\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleURL_roundtrip" : GoString))), stdgo.net.url_test.Url_test.exampleURL_roundtrip, ((("/foo/bar\n/foo%2fbar\nhttps://example.com/foo%2fbar\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleURL_ResolveReference" : GoString))), stdgo.net.url_test.Url_test.exampleURL_ResolveReference, ((("http://example.com/search?q=dotnet\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleParseQuery" : GoString))), stdgo.net.url_test.Url_test.exampleParseQuery, ((("{\"x\":[\"1\"], \"y\":[\"2\", \"3\"]}\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleURL_EscapedPath" : GoString))), stdgo.net.url_test.Url_test.exampleURL_EscapedPath, ((("Path: /x/y/z\nRawPath: /x/y%2Fz\nEscapedPath: /x/y%2Fz\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleURL_EscapedFragment" : GoString))), stdgo.net.url_test.Url_test.exampleURL_EscapedFragment, ((("Fragment: x/y/z\nRawFragment: x/y%2Fz\nEscapedFragment: x/y%2Fz\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleURL_Hostname" : GoString))), stdgo.net.url_test.Url_test.exampleURL_Hostname, ((("example.org\n2001:0db8:85a3:0000:0000:8a2e:0370:7334\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleURL_IsAbs" : GoString))), stdgo.net.url_test.Url_test.exampleURL_IsAbs, ((("false\ntrue\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleURL_MarshalBinary" : GoString))), stdgo.net.url_test.Url_test.exampleURL_MarshalBinary, ((("https://example.org\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleURL_Parse" : GoString))), stdgo.net.url_test.Url_test.exampleURL_Parse, ((("https://example.org/foo\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleURL_Port" : GoString))), stdgo.net.url_test.Url_test.exampleURL_Port, ((("\n8080\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleURL_Query" : GoString))), stdgo.net.url_test.Url_test.exampleURL_Query, ((("[1 2]\n\n3\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleURL_String" : GoString))), stdgo.net.url_test.Url_test.exampleURL_String, ((("https://me:pass@example.com/foo/bar?x=1&y=2#anchor\nhttps:opaque?x=1&y=2#anchor\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleURL_UnmarshalBinary" : GoString))), stdgo.net.url_test.Url_test.exampleURL_UnmarshalBinary, ((("https://example.org/foo\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleURL_Redacted" : GoString))), stdgo.net.url_test.Url_test.exampleURL_Redacted, ((("https://user:xxxxx@example.com/foo/bar\nhttps://me:xxxxx@example.com/foo/bar\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((("ExampleURL_RequestURI" : GoString))), stdgo.net.url_test.Url_test.exampleURL_RequestURI, ((("/path?foo=bar\n" : GoString))), false) : stdgo.testing.Testing.InternalExample))) : Slice<stdgo.testing.Testing.InternalExample>));
function main():Void {
        var _m:Ref<stdgo.testing.Testing.M> = stdgo.testing.Testing.mainStart(((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        stdgo.os.Os.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ((("net/url" : GoString)));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

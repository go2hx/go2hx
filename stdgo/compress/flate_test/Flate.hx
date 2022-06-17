package stdgo.compress.flate_test;
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
((new stdgo.testing.Testing.InternalTest(((("TestBulkHash4" : GoString))), compress.flate.Flate.testBulkHash4) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestDeflate" : GoString))), compress.flate.Flate.testDeflate) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestVeryLongSparseChunk" : GoString))), compress.flate.Flate.testVeryLongSparseChunk) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestDeflateInflate" : GoString))), compress.flate.Flate.testDeflateInflate) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestReverseBits" : GoString))), compress.flate.Flate.testReverseBits) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestDeflateInflateString" : GoString))), compress.flate.Flate.testDeflateInflateString) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestReaderDict" : GoString))), compress.flate.Flate.testReaderDict) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestWriterDict" : GoString))), compress.flate.Flate.testWriterDict) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestRegression2508" : GoString))), compress.flate.Flate.testRegression2508) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestWriterReset" : GoString))), compress.flate.Flate.testWriterReset) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestBestSpeed" : GoString))), compress.flate.Flate.testBestSpeed) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestWriterPersistentError" : GoString))), compress.flate.Flate.testWriterPersistentError) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestBestSpeedMatch" : GoString))), compress.flate.Flate.testBestSpeedMatch) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestBestSpeedMaxMatchOffset" : GoString))), compress.flate.Flate.testBestSpeedMaxMatchOffset) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestBestSpeedShiftOffsets" : GoString))), compress.flate.Flate.testBestSpeedShiftOffsets) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestMaxStackSize" : GoString))), compress.flate.Flate.testMaxStackSize) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestDictDecoder" : GoString))), compress.flate.Flate.testDictDecoder) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestIssue5915" : GoString))), compress.flate.Flate.testIssue5915) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestIssue5962" : GoString))), compress.flate.Flate.testIssue5962) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestIssue6255" : GoString))), compress.flate.Flate.testIssue6255) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestInvalidEncoding" : GoString))), compress.flate.Flate.testInvalidEncoding) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestInvalidBits" : GoString))), compress.flate.Flate.testInvalidBits) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestStreams" : GoString))), compress.flate.Flate.testStreams) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestTruncatedStreams" : GoString))), compress.flate.Flate.testTruncatedStreams) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestReaderEarlyEOF" : GoString))), compress.flate.Flate.testReaderEarlyEOF) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestBlockHuff" : GoString))), compress.flate.Flate.testBlockHuff) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestWriteBlock" : GoString))), compress.flate.Flate.testWriteBlock) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestWriteBlockDynamic" : GoString))), compress.flate.Flate.testWriteBlockDynamic) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestReset" : GoString))), compress.flate.Flate.testReset) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestReaderTruncated" : GoString))), compress.flate.Flate.testReaderTruncated) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestResetDict" : GoString))), compress.flate.Flate.testResetDict) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestNlitOutOfRange" : GoString))), compress.flate.Flate.testNlitOutOfRange) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestWriteError" : GoString))), compress.flate.Flate.testWriteError) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestDeterministic" : GoString))), compress.flate.Flate.testDeterministic) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestDeflateFast_Reset" : GoString))), compress.flate.Flate.testDeflateFast_Reset) : stdgo.testing.Testing.InternalTest))) : Slice<stdgo.testing.Testing.InternalTest>));
var _benchmarks : Slice<stdgo.testing.Testing.InternalBenchmark> = ((new Slice<stdgo.testing.Testing.InternalBenchmark>(((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkDecode" : GoString))), compress.flate.Flate.benchmarkDecode) : stdgo.testing.Testing.InternalBenchmark)), ((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkEncode" : GoString))), compress.flate.Flate.benchmarkEncode) : stdgo.testing.Testing.InternalBenchmark))) : Slice<stdgo.testing.Testing.InternalBenchmark>));
var _fuzzTargets : Slice<stdgo.testing.Testing.InternalFuzzTarget> = ((new Slice<stdgo.testing.Testing.InternalFuzzTarget>() : Slice<stdgo.testing.Testing.InternalFuzzTarget>));
var _examples : Slice<stdgo.testing.Testing.InternalExample> = ((new Slice<stdgo.testing.Testing.InternalExample>(((new stdgo.testing.Testing.InternalExample(((("Example_reset" : GoString))), stdgo.compress.flate_test.Flate_test.example_reset, ((("Don\'t communicate by sharing memory, share memory by communicating.\nConcurrency is not parallelism.\nThe bigger the interface, the weaker the abstraction.\nDocumentation is for users.\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)), ((new stdgo.testing.Testing.InternalExample(((("Example_dictionary" : GoString))), stdgo.compress.flate_test.Flate_test.example_dictionary, ((("Decompressed output using the dictionary:\n<?xml version=\"1.0\"?>\n<book>\n\t<meta name=\"title\" content=\"The Go Programming Language\"/>\n\t<meta name=\"authors\" content=\"Alan Donovan and Brian Kernighan\"/>\n\t<meta name=\"published\" content=\"2015-10-26\"/>\n\t<meta name=\"isbn\" content=\"978-0134190440\"/>\n\t<data>...</data>\n</book>\n\nSubstrings matched by the dictionary are marked with #:\n#####################\n######\n\t############title###########The Go Programming Language\"/#\n\t############authors###########Alan Donovan and Brian Kernighan\"/#\n\t############published###########2015-10-26\"/#\n\t############isbn###########978-0134190440\"/#\n\t######...</#####\n</#####\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)), ((new stdgo.testing.Testing.InternalExample(((("Example_synchronization" : GoString))), stdgo.compress.flate_test.Flate_test.example_synchronization, ((("Received 1 bytes: A\nReceived 4 bytes: long\nReceived 4 bytes: time\nReceived 3 bytes: ago\nReceived 2 bytes: in\nReceived 1 bytes: a\nReceived 6 bytes: galaxy\nReceived 4 bytes: far,\nReceived 3 bytes: far\nReceived 7 bytes: away...\n" : GoString))), false) : stdgo.testing.Testing.InternalExample))) : Slice<stdgo.testing.Testing.InternalExample>));
function main():Void {
        var _m:Ref<stdgo.testing.Testing.M> = stdgo.testing.Testing.mainStart(((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        stdgo.os.Os.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ((("compress/flate" : GoString)));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

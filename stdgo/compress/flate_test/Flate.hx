package stdgo.compress.flate_test;
import stdgo.compress.flate.Flate;
/**
    
    
    
**/
var _tests : stdgo.Slice<stdgo.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo.testing.Testing.InternalTest>(
39,
39,
(new stdgo.testing.Testing.InternalTest(("TestBulkHash4" : stdgo.GoString), stdgo.compress.flate.Flate.testBulkHash4) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDeflate" : stdgo.GoString), stdgo.compress.flate.Flate.testDeflate) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriterClose" : stdgo.GoString), stdgo.compress.flate.Flate.testWriterClose) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestVeryLongSparseChunk" : stdgo.GoString), stdgo.compress.flate.Flate.testVeryLongSparseChunk) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDeflateInflate" : stdgo.GoString), stdgo.compress.flate.Flate.testDeflateInflate) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReverseBits" : stdgo.GoString), stdgo.compress.flate.Flate.testReverseBits) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDeflateInflateString" : stdgo.GoString), stdgo.compress.flate.Flate.testDeflateInflateString) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReaderDict" : stdgo.GoString), stdgo.compress.flate.Flate.testReaderDict) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriterDict" : stdgo.GoString), stdgo.compress.flate.Flate.testWriterDict) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRegression2508" : stdgo.GoString), stdgo.compress.flate.Flate.testRegression2508) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriterReset" : stdgo.GoString), stdgo.compress.flate.Flate.testWriterReset) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBestSpeed" : stdgo.GoString), stdgo.compress.flate.Flate.testBestSpeed) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriterPersistentWriteError" : stdgo.GoString), stdgo.compress.flate.Flate.testWriterPersistentWriteError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriterPersistentFlushError" : stdgo.GoString), stdgo.compress.flate.Flate.testWriterPersistentFlushError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriterPersistentCloseError" : stdgo.GoString), stdgo.compress.flate.Flate.testWriterPersistentCloseError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBestSpeedMatch" : stdgo.GoString), stdgo.compress.flate.Flate.testBestSpeedMatch) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBestSpeedMaxMatchOffset" : stdgo.GoString), stdgo.compress.flate.Flate.testBestSpeedMaxMatchOffset) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBestSpeedShiftOffsets" : stdgo.GoString), stdgo.compress.flate.Flate.testBestSpeedShiftOffsets) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMaxStackSize" : stdgo.GoString), stdgo.compress.flate.Flate.testMaxStackSize) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDictDecoder" : stdgo.GoString), stdgo.compress.flate.Flate.testDictDecoder) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIssue5915" : stdgo.GoString), stdgo.compress.flate.Flate.testIssue5915) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIssue5962" : stdgo.GoString), stdgo.compress.flate.Flate.testIssue5962) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIssue6255" : stdgo.GoString), stdgo.compress.flate.Flate.testIssue6255) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestInvalidEncoding" : stdgo.GoString), stdgo.compress.flate.Flate.testInvalidEncoding) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestInvalidBits" : stdgo.GoString), stdgo.compress.flate.Flate.testInvalidBits) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStreams" : stdgo.GoString), stdgo.compress.flate.Flate.testStreams) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestTruncatedStreams" : stdgo.GoString), stdgo.compress.flate.Flate.testTruncatedStreams) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReaderEarlyEOF" : stdgo.GoString), stdgo.compress.flate.Flate.testReaderEarlyEOF) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBlockHuff" : stdgo.GoString), stdgo.compress.flate.Flate.testBlockHuff) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriteBlock" : stdgo.GoString), stdgo.compress.flate.Flate.testWriteBlock) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriteBlockDynamic" : stdgo.GoString), stdgo.compress.flate.Flate.testWriteBlockDynamic) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReset" : stdgo.GoString), stdgo.compress.flate.Flate.testReset) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReaderTruncated" : stdgo.GoString), stdgo.compress.flate.Flate.testReaderTruncated) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestResetDict" : stdgo.GoString), stdgo.compress.flate.Flate.testResetDict) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReaderReusesReaderBuffer" : stdgo.GoString), stdgo.compress.flate.Flate.testReaderReusesReaderBuffer) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNlitOutOfRange" : stdgo.GoString), stdgo.compress.flate.Flate.testNlitOutOfRange) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriteError" : stdgo.GoString), stdgo.compress.flate.Flate.testWriteError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDeterministic" : stdgo.GoString), stdgo.compress.flate.Flate.testDeterministic) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDeflateFast_Reset" : stdgo.GoString), stdgo.compress.flate.Flate.testDeflateFast_Reset) : stdgo.testing.Testing.InternalTest)) : stdgo.Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
var _benchmarks : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>(2, 2, (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkDecode" : stdgo.GoString), stdgo.compress.flate.Flate.benchmarkDecode) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkEncode" : stdgo.GoString), stdgo.compress.flate.Flate.benchmarkEncode) : stdgo.testing.Testing.InternalBenchmark)) : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
var _fuzzTargets : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
var _examples : stdgo.Slice<stdgo.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo.testing.Testing.InternalExample>(3, 3, (new stdgo.testing.Testing.InternalExample(("Example_reset" : stdgo.GoString), stdgo.compress.flate_test.Flate_test.example_reset, ("Don\'t communicate by sharing memory, share memory by communicating.\nConcurrency is not parallelism.\nThe bigger the interface, the weaker the abstraction.\nDocumentation is for users.\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("Example_dictionary" : stdgo.GoString), stdgo.compress.flate_test.Flate_test.example_dictionary, ("Decompressed output using the dictionary:\n<?xml version=\"1.0\"?>\n<book>\n\t<meta name=\"title\" content=\"The Go Programming Language\"/>\n\t<meta name=\"authors\" content=\"Alan Donovan and Brian Kernighan\"/>\n\t<meta name=\"published\" content=\"2015-10-26\"/>\n\t<meta name=\"isbn\" content=\"978-0134190440\"/>\n\t<data>...</data>\n</book>\n\nSubstrings matched by the dictionary are marked with #:\n#####################\n######\n\t############title###########The Go Programming Language\"/#\n\t############authors###########Alan Donovan and Brian Kernighan\"/#\n\t############published###########2015-10-26\"/#\n\t############isbn###########978-0134190440\"/#\n\t######...</#####\n</#####\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("Example_synchronization" : stdgo.GoString), stdgo.compress.flate_test.Flate_test.example_synchronization, ("Received 1 bytes: A\nReceived 4 bytes: long\nReceived 4 bytes: time\nReceived 3 bytes: ago\nReceived 2 bytes: in\nReceived 1 bytes: a\nReceived 6 bytes: galaxy\nReceived 4 bytes: far,\nReceived 3 bytes: far\nReceived 7 bytes: away...\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample)) : stdgo.Slice<stdgo.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("compress/flate" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

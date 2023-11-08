package stdgo.bufio_test;
import stdgo.bufio.Bufio;
/**
    
    
    
**/
var _tests : stdgo.Slice<stdgo.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo.testing.Testing.InternalTest>(
79,
79,
(new stdgo.testing.Testing.InternalTest(("TestReaderSimple" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testReaderSimple) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReader" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testReader) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestZeroReader" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testZeroReader) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadRune" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testReadRune) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnreadRune" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testUnreadRune) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNoUnreadRuneAfterPeek" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testNoUnreadRuneAfterPeek) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNoUnreadByteAfterPeek" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testNoUnreadByteAfterPeek) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNoUnreadRuneAfterDiscard" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testNoUnreadRuneAfterDiscard) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNoUnreadByteAfterDiscard" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testNoUnreadByteAfterDiscard) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNoUnreadRuneAfterWriteTo" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testNoUnreadRuneAfterWriteTo) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNoUnreadByteAfterWriteTo" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testNoUnreadByteAfterWriteTo) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnreadByte" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testUnreadByte) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnreadByteMultiple" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testUnreadByteMultiple) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnreadByteOthers" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testUnreadByteOthers) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnreadRuneError" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testUnreadRuneError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnreadRuneAtEOF" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testUnreadRuneAtEOF) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadWriteRune" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testReadWriteRune) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriteInvalidRune" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testWriteInvalidRune) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadStringAllocs" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testReadStringAllocs) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriter" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testWriter) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriterAppend" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testWriterAppend) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriteErrors" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testWriteErrors) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNewReaderSizeIdempotent" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testNewReaderSizeIdempotent) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNewWriterSizeIdempotent" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testNewWriterSizeIdempotent) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriteString" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testWriteString) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriteStringStringWriter" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testWriteStringStringWriter) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBufferFull" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testBufferFull) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPeek" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testPeek) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPeekThenUnreadRune" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testPeekThenUnreadRune) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadLine" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testReadLine) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLineTooLong" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testLineTooLong) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadAfterLines" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testReadAfterLines) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadEmptyBuffer" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testReadEmptyBuffer) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLinesAfterRead" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testLinesAfterRead) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadLineNonNilLineOrError" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testReadLineNonNilLineOrError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadLineNewlines" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testReadLineNewlines) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReaderWriteTo" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testReaderWriteTo) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReaderWriteToErrors" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testReaderWriteToErrors) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriterReadFrom" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testWriterReadFrom) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriterReadFromErrors" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testWriterReadFromErrors) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriterReadFromCounts" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testWriterReadFromCounts) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNegativeRead" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testNegativeRead) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReaderClearError" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testReaderClearError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriterReadFromWhileFull" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testWriterReadFromWhileFull) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriterReadFromUntilEOF" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testWriterReadFromUntilEOF) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriterReadFromErrNoProgress" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testWriterReadFromErrNoProgress) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriterReadFromWithBufferedData" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testWriterReadFromWithBufferedData) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadZero" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testReadZero) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReaderReset" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testReaderReset) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriterReset" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testWriterReset) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReaderDiscard" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testReaderDiscard) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReaderSize" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testReaderSize) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriterSize" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testWriterSize) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPartialReadEOF" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testPartialReadEOF) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriterReadFromMustSetUnderlyingError" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testWriterReadFromMustSetUnderlyingError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriterReadFromMustReturnUnderlyingError" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testWriterReadFromMustReturnUnderlyingError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSpace" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testSpace) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanByte" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testScanByte) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanRune" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testScanRune) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanWords" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testScanWords) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanLongLines" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testScanLongLines) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanLineTooLong" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testScanLineTooLong) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanLineNoNewline" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testScanLineNoNewline) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanLineReturnButNoNewline" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testScanLineReturnButNoNewline) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanLineEmptyFinalLine" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testScanLineEmptyFinalLine) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanLineEmptyFinalLineWithCR" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testScanLineEmptyFinalLineWithCR) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSplitError" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testSplitError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestErrAtEOF" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testErrAtEOF) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNonEOFWithEmptyRead" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testNonEOFWithEmptyRead) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBadReader" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testBadReader) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanWordsExcessiveWhiteSpace" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testScanWordsExcessiveWhiteSpace) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEmptyTokens" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testEmptyTokens) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWithNoEmptyTokens" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testWithNoEmptyTokens) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDontLoopForever" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testDontLoopForever) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBlankLines" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testBlankLines) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEmptyLinesOK" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testEmptyLinesOK) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestHugeBuffer" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testHugeBuffer) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNegativeEOFReader" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testNegativeEOFReader) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLargeReader" : stdgo.GoString), stdgo.bufio_test.Bufio_test.testLargeReader) : stdgo.testing.Testing.InternalTest)) : stdgo.Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
var _benchmarks : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>(
11,
11,
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkReaderCopyOptimal" : stdgo.GoString), stdgo.bufio_test.Bufio_test.benchmarkReaderCopyOptimal) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkReaderCopyUnoptimal" : stdgo.GoString), stdgo.bufio_test.Bufio_test.benchmarkReaderCopyUnoptimal) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkReaderCopyNoWriteTo" : stdgo.GoString), stdgo.bufio_test.Bufio_test.benchmarkReaderCopyNoWriteTo) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkReaderWriteToOptimal" : stdgo.GoString), stdgo.bufio_test.Bufio_test.benchmarkReaderWriteToOptimal) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkReaderReadString" : stdgo.GoString), stdgo.bufio_test.Bufio_test.benchmarkReaderReadString) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkWriterCopyOptimal" : stdgo.GoString), stdgo.bufio_test.Bufio_test.benchmarkWriterCopyOptimal) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkWriterCopyUnoptimal" : stdgo.GoString), stdgo.bufio_test.Bufio_test.benchmarkWriterCopyUnoptimal) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkWriterCopyNoReadFrom" : stdgo.GoString), stdgo.bufio_test.Bufio_test.benchmarkWriterCopyNoReadFrom) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkReaderEmpty" : stdgo.GoString), stdgo.bufio_test.Bufio_test.benchmarkReaderEmpty) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkWriterEmpty" : stdgo.GoString), stdgo.bufio_test.Bufio_test.benchmarkWriterEmpty) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkWriterFlush" : stdgo.GoString), stdgo.bufio_test.Bufio_test.benchmarkWriterFlush) : stdgo.testing.Testing.InternalBenchmark)) : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
var _fuzzTargets : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
var _examples : stdgo.Slice<stdgo.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo.testing.Testing.InternalExample>(6, 6, (new stdgo.testing.Testing.InternalExample(("ExampleWriter" : stdgo.GoString), stdgo.bufio_test.Bufio_test.exampleWriter, ("Hello, world!\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleWriter_AvailableBuffer" : stdgo.GoString), stdgo.bufio_test.Bufio_test.exampleWriter_AvailableBuffer, ("1 2 3 4\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleScanner_Bytes" : stdgo.GoString), stdgo.bufio_test.Bufio_test.exampleScanner_Bytes, ("true\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleScanner_words" : stdgo.GoString), stdgo.bufio_test.Bufio_test.exampleScanner_words, ("15\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleScanner_custom" : stdgo.GoString), stdgo.bufio_test.Bufio_test.exampleScanner_custom, ("1234\n5678\nInvalid input: strconv.ParseInt: parsing \"1234567901234567890\": value out of range\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleScanner_emptyFinalToken" : stdgo.GoString), stdgo.bufio_test.Bufio_test.exampleScanner_emptyFinalToken, ("\"1\" \"2\" \"3\" \"4\" \"\"\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample)) : stdgo.Slice<stdgo.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("bufio" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

package stdgo.bufio_test;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
/**
    
    
    
**/
private var _tests = (new Slice<stdgo.testing.Testing.InternalTest>(
0,
0,
(new stdgo.testing.Testing.InternalTest(("TestReaderSimple" : GoString), stdgo.bufio_test.Bufio_test.testReaderSimple) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReader" : GoString), stdgo.bufio_test.Bufio_test.testReader) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestZeroReader" : GoString), stdgo.bufio_test.Bufio_test.testZeroReader) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadRune" : GoString), stdgo.bufio_test.Bufio_test.testReadRune) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnreadRune" : GoString), stdgo.bufio_test.Bufio_test.testUnreadRune) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNoUnreadRuneAfterPeek" : GoString), stdgo.bufio_test.Bufio_test.testNoUnreadRuneAfterPeek) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNoUnreadByteAfterPeek" : GoString), stdgo.bufio_test.Bufio_test.testNoUnreadByteAfterPeek) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNoUnreadRuneAfterDiscard" : GoString), stdgo.bufio_test.Bufio_test.testNoUnreadRuneAfterDiscard) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNoUnreadByteAfterDiscard" : GoString), stdgo.bufio_test.Bufio_test.testNoUnreadByteAfterDiscard) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNoUnreadRuneAfterWriteTo" : GoString), stdgo.bufio_test.Bufio_test.testNoUnreadRuneAfterWriteTo) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNoUnreadByteAfterWriteTo" : GoString), stdgo.bufio_test.Bufio_test.testNoUnreadByteAfterWriteTo) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnreadByte" : GoString), stdgo.bufio_test.Bufio_test.testUnreadByte) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnreadByteMultiple" : GoString), stdgo.bufio_test.Bufio_test.testUnreadByteMultiple) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnreadByteOthers" : GoString), stdgo.bufio_test.Bufio_test.testUnreadByteOthers) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnreadRuneError" : GoString), stdgo.bufio_test.Bufio_test.testUnreadRuneError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnreadRuneAtEOF" : GoString), stdgo.bufio_test.Bufio_test.testUnreadRuneAtEOF) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadWriteRune" : GoString), stdgo.bufio_test.Bufio_test.testReadWriteRune) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriteInvalidRune" : GoString), stdgo.bufio_test.Bufio_test.testWriteInvalidRune) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadStringAllocs" : GoString), stdgo.bufio_test.Bufio_test.testReadStringAllocs) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriter" : GoString), stdgo.bufio_test.Bufio_test.testWriter) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriterAppend" : GoString), stdgo.bufio_test.Bufio_test.testWriterAppend) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriteErrors" : GoString), stdgo.bufio_test.Bufio_test.testWriteErrors) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNewReaderSizeIdempotent" : GoString), stdgo.bufio_test.Bufio_test.testNewReaderSizeIdempotent) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNewWriterSizeIdempotent" : GoString), stdgo.bufio_test.Bufio_test.testNewWriterSizeIdempotent) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriteString" : GoString), stdgo.bufio_test.Bufio_test.testWriteString) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriteStringStringWriter" : GoString), stdgo.bufio_test.Bufio_test.testWriteStringStringWriter) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBufferFull" : GoString), stdgo.bufio_test.Bufio_test.testBufferFull) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPeek" : GoString), stdgo.bufio_test.Bufio_test.testPeek) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPeekThenUnreadRune" : GoString), stdgo.bufio_test.Bufio_test.testPeekThenUnreadRune) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadLine" : GoString), stdgo.bufio_test.Bufio_test.testReadLine) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLineTooLong" : GoString), stdgo.bufio_test.Bufio_test.testLineTooLong) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadAfterLines" : GoString), stdgo.bufio_test.Bufio_test.testReadAfterLines) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadEmptyBuffer" : GoString), stdgo.bufio_test.Bufio_test.testReadEmptyBuffer) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLinesAfterRead" : GoString), stdgo.bufio_test.Bufio_test.testLinesAfterRead) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadLineNonNilLineOrError" : GoString), stdgo.bufio_test.Bufio_test.testReadLineNonNilLineOrError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadLineNewlines" : GoString), stdgo.bufio_test.Bufio_test.testReadLineNewlines) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReaderWriteTo" : GoString), stdgo.bufio_test.Bufio_test.testReaderWriteTo) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReaderWriteToErrors" : GoString), stdgo.bufio_test.Bufio_test.testReaderWriteToErrors) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriterReadFrom" : GoString), stdgo.bufio_test.Bufio_test.testWriterReadFrom) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriterReadFromErrors" : GoString), stdgo.bufio_test.Bufio_test.testWriterReadFromErrors) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriterReadFromCounts" : GoString), stdgo.bufio_test.Bufio_test.testWriterReadFromCounts) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNegativeRead" : GoString), stdgo.bufio_test.Bufio_test.testNegativeRead) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReaderClearError" : GoString), stdgo.bufio_test.Bufio_test.testReaderClearError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriterReadFromWhileFull" : GoString), stdgo.bufio_test.Bufio_test.testWriterReadFromWhileFull) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriterReadFromUntilEOF" : GoString), stdgo.bufio_test.Bufio_test.testWriterReadFromUntilEOF) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriterReadFromErrNoProgress" : GoString), stdgo.bufio_test.Bufio_test.testWriterReadFromErrNoProgress) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriterReadFromWithBufferedData" : GoString), stdgo.bufio_test.Bufio_test.testWriterReadFromWithBufferedData) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadZero" : GoString), stdgo.bufio_test.Bufio_test.testReadZero) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReaderReset" : GoString), stdgo.bufio_test.Bufio_test.testReaderReset) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriterReset" : GoString), stdgo.bufio_test.Bufio_test.testWriterReset) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReaderDiscard" : GoString), stdgo.bufio_test.Bufio_test.testReaderDiscard) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReaderSize" : GoString), stdgo.bufio_test.Bufio_test.testReaderSize) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriterSize" : GoString), stdgo.bufio_test.Bufio_test.testWriterSize) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPartialReadEOF" : GoString), stdgo.bufio_test.Bufio_test.testPartialReadEOF) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriterReadFromMustSetUnderlyingError" : GoString), stdgo.bufio_test.Bufio_test.testWriterReadFromMustSetUnderlyingError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriterReadFromMustReturnUnderlyingError" : GoString), stdgo.bufio_test.Bufio_test.testWriterReadFromMustReturnUnderlyingError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSpace" : GoString), stdgo.bufio_test.Bufio_test.testSpace) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanByte" : GoString), stdgo.bufio_test.Bufio_test.testScanByte) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanRune" : GoString), stdgo.bufio_test.Bufio_test.testScanRune) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanWords" : GoString), stdgo.bufio_test.Bufio_test.testScanWords) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanLongLines" : GoString), stdgo.bufio_test.Bufio_test.testScanLongLines) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanLineTooLong" : GoString), stdgo.bufio_test.Bufio_test.testScanLineTooLong) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanLineNoNewline" : GoString), stdgo.bufio_test.Bufio_test.testScanLineNoNewline) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanLineReturnButNoNewline" : GoString), stdgo.bufio_test.Bufio_test.testScanLineReturnButNoNewline) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanLineEmptyFinalLine" : GoString), stdgo.bufio_test.Bufio_test.testScanLineEmptyFinalLine) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanLineEmptyFinalLineWithCR" : GoString), stdgo.bufio_test.Bufio_test.testScanLineEmptyFinalLineWithCR) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSplitError" : GoString), stdgo.bufio_test.Bufio_test.testSplitError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestErrAtEOF" : GoString), stdgo.bufio_test.Bufio_test.testErrAtEOF) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNonEOFWithEmptyRead" : GoString), stdgo.bufio_test.Bufio_test.testNonEOFWithEmptyRead) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBadReader" : GoString), stdgo.bufio_test.Bufio_test.testBadReader) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScanWordsExcessiveWhiteSpace" : GoString), stdgo.bufio_test.Bufio_test.testScanWordsExcessiveWhiteSpace) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEmptyTokens" : GoString), stdgo.bufio_test.Bufio_test.testEmptyTokens) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWithNoEmptyTokens" : GoString), stdgo.bufio_test.Bufio_test.testWithNoEmptyTokens) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDontLoopForever" : GoString), stdgo.bufio_test.Bufio_test.testDontLoopForever) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBlankLines" : GoString), stdgo.bufio_test.Bufio_test.testBlankLines) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEmptyLinesOK" : GoString), stdgo.bufio_test.Bufio_test.testEmptyLinesOK) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestHugeBuffer" : GoString), stdgo.bufio_test.Bufio_test.testHugeBuffer) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNegativeEOFReader" : GoString), stdgo.bufio_test.Bufio_test.testNegativeEOFReader) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLargeReader" : GoString), stdgo.bufio_test.Bufio_test.testLargeReader) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
private var _benchmarks = (new Slice<stdgo.testing.Testing.InternalBenchmark>(
0,
0,
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkReaderCopyOptimal" : GoString), stdgo.bufio_test.Bufio_test.benchmarkReaderCopyOptimal) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkReaderCopyUnoptimal" : GoString), stdgo.bufio_test.Bufio_test.benchmarkReaderCopyUnoptimal) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkReaderCopyNoWriteTo" : GoString), stdgo.bufio_test.Bufio_test.benchmarkReaderCopyNoWriteTo) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkReaderWriteToOptimal" : GoString), stdgo.bufio_test.Bufio_test.benchmarkReaderWriteToOptimal) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkReaderReadString" : GoString), stdgo.bufio_test.Bufio_test.benchmarkReaderReadString) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkWriterCopyOptimal" : GoString), stdgo.bufio_test.Bufio_test.benchmarkWriterCopyOptimal) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkWriterCopyUnoptimal" : GoString), stdgo.bufio_test.Bufio_test.benchmarkWriterCopyUnoptimal) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkWriterCopyNoReadFrom" : GoString), stdgo.bufio_test.Bufio_test.benchmarkWriterCopyNoReadFrom) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkReaderEmpty" : GoString), stdgo.bufio_test.Bufio_test.benchmarkReaderEmpty) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkWriterEmpty" : GoString), stdgo.bufio_test.Bufio_test.benchmarkWriterEmpty) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkWriterFlush" : GoString), stdgo.bufio_test.Bufio_test.benchmarkWriterFlush) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
private var _fuzzTargets = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
private var _examples = (new Slice<stdgo.testing.Testing.InternalExample>(0, 0, (new stdgo.testing.Testing.InternalExample(("ExampleWriter" : GoString), stdgo.bufio_test.Bufio_test.exampleWriter, ("Hello, world!\n" : GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleWriter_AvailableBuffer" : GoString), stdgo.bufio_test.Bufio_test.exampleWriter_AvailableBuffer, ("1 2 3 4\n" : GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleScanner_Bytes" : GoString), stdgo.bufio_test.Bufio_test.exampleScanner_Bytes, ("true\n" : GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleScanner_words" : GoString), stdgo.bufio_test.Bufio_test.exampleScanner_words, ("15\n" : GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleScanner_custom" : GoString), stdgo.bufio_test.Bufio_test.exampleScanner_custom, ("1234\n5678\nInvalid input: strconv.ParseInt: parsing \"1234567901234567890\": value out of range\n" : GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("ExampleScanner_emptyFinalToken" : GoString), stdgo.bufio_test.Bufio_test.exampleScanner_emptyFinalToken, ("\"1\" \"2\" \"3\" \"4\" \"\"\n" : GoString), false) : stdgo.testing.Testing.InternalExample)) : Slice<stdgo.testing.Testing.InternalExample>);
private function main():Void {
        var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("bufio" : GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

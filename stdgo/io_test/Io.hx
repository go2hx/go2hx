package stdgo.io_test;
import stdgo.io.Io;
/**
    
    
    
**/
var _tests : stdgo.Slice<stdgo.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo.testing.Testing.InternalTest>(
53,
53,
(new stdgo.testing.Testing.InternalTest(("TestCopy" : stdgo.GoString), stdgo.io_test.Io_test.testCopy) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCopyNegative" : stdgo.GoString), stdgo.io_test.Io_test.testCopyNegative) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCopyBuffer" : stdgo.GoString), stdgo.io_test.Io_test.testCopyBuffer) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCopyBufferNil" : stdgo.GoString), stdgo.io_test.Io_test.testCopyBufferNil) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCopyReadFrom" : stdgo.GoString), stdgo.io_test.Io_test.testCopyReadFrom) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCopyWriteTo" : stdgo.GoString), stdgo.io_test.Io_test.testCopyWriteTo) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCopyPriority" : stdgo.GoString), stdgo.io_test.Io_test.testCopyPriority) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCopyReadErrWriteErr" : stdgo.GoString), stdgo.io_test.Io_test.testCopyReadErrWriteErr) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCopyN" : stdgo.GoString), stdgo.io_test.Io_test.testCopyN) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCopyNReadFrom" : stdgo.GoString), stdgo.io_test.Io_test.testCopyNReadFrom) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCopyNWriteTo" : stdgo.GoString), stdgo.io_test.Io_test.testCopyNWriteTo) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCopyNEOF" : stdgo.GoString), stdgo.io_test.Io_test.testCopyNEOF) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadAtLeast" : stdgo.GoString), stdgo.io_test.Io_test.testReadAtLeast) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadAtLeastWithDataAndEOF" : stdgo.GoString), stdgo.io_test.Io_test.testReadAtLeastWithDataAndEOF) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadAtLeastWithDataAndError" : stdgo.GoString), stdgo.io_test.Io_test.testReadAtLeastWithDataAndError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestTeeReader" : stdgo.GoString), stdgo.io_test.Io_test.testTeeReader) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSectionReader_ReadAt" : stdgo.GoString), stdgo.io_test.Io_test.testSectionReader_ReadAt) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSectionReader_Seek" : stdgo.GoString), stdgo.io_test.Io_test.testSectionReader_Seek) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSectionReader_Size" : stdgo.GoString), stdgo.io_test.Io_test.testSectionReader_Size) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSectionReader_Max" : stdgo.GoString), stdgo.io_test.Io_test.testSectionReader_Max) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCopyLargeWriter" : stdgo.GoString), stdgo.io_test.Io_test.testCopyLargeWriter) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNopCloserWriterToForwarding" : stdgo.GoString), stdgo.io_test.Io_test.testNopCloserWriterToForwarding) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestOffsetWriter_Seek" : stdgo.GoString), stdgo.io_test.Io_test.testOffsetWriter_Seek) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestOffsetWriter_WriteAt" : stdgo.GoString), stdgo.io_test.Io_test.testOffsetWriter_WriteAt) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriteAt_PositionPriorToBase" : stdgo.GoString), stdgo.io_test.Io_test.testWriteAt_PositionPriorToBase) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestOffsetWriter_Write" : stdgo.GoString), stdgo.io_test.Io_test.testOffsetWriter_Write) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMultiReader" : stdgo.GoString), stdgo.io_test.Io_test.testMultiReader) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMultiReaderAsWriterTo" : stdgo.GoString), stdgo.io_test.Io_test.testMultiReaderAsWriterTo) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMultiWriter" : stdgo.GoString), stdgo.io_test.Io_test.testMultiWriter) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMultiWriter_String" : stdgo.GoString), stdgo.io_test.Io_test.testMultiWriter_String) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMultiWriter_WriteStringSingleAlloc" : stdgo.GoString), stdgo.io_test.Io_test.testMultiWriter_WriteStringSingleAlloc) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMultiWriter_StringCheckCall" : stdgo.GoString), stdgo.io_test.Io_test.testMultiWriter_StringCheckCall) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMultiWriterSingleChainFlatten" : stdgo.GoString), stdgo.io_test.Io_test.testMultiWriterSingleChainFlatten) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMultiWriterError" : stdgo.GoString), stdgo.io_test.Io_test.testMultiWriterError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMultiReaderCopy" : stdgo.GoString), stdgo.io_test.Io_test.testMultiReaderCopy) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMultiWriterCopy" : stdgo.GoString), stdgo.io_test.Io_test.testMultiWriterCopy) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMultiReaderFlatten" : stdgo.GoString), stdgo.io_test.Io_test.testMultiReaderFlatten) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMultiReaderSingleByteWithEOF" : stdgo.GoString), stdgo.io_test.Io_test.testMultiReaderSingleByteWithEOF) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMultiReaderFinalEOF" : stdgo.GoString), stdgo.io_test.Io_test.testMultiReaderFinalEOF) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMultiReaderFreesExhaustedReaders" : stdgo.GoString), stdgo.io_test.Io_test.testMultiReaderFreesExhaustedReaders) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestInterleavedMultiReader" : stdgo.GoString), stdgo.io_test.Io_test.testInterleavedMultiReader) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPipe1" : stdgo.GoString), stdgo.io_test.Io_test.testPipe1) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPipe2" : stdgo.GoString), stdgo.io_test.Io_test.testPipe2) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPipe3" : stdgo.GoString), stdgo.io_test.Io_test.testPipe3) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPipeReadClose" : stdgo.GoString), stdgo.io_test.Io_test.testPipeReadClose) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPipeReadClose2" : stdgo.GoString), stdgo.io_test.Io_test.testPipeReadClose2) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPipeWriteClose" : stdgo.GoString), stdgo.io_test.Io_test.testPipeWriteClose) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPipeWriteClose2" : stdgo.GoString), stdgo.io_test.Io_test.testPipeWriteClose2) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriteEmpty" : stdgo.GoString), stdgo.io_test.Io_test.testWriteEmpty) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriteNil" : stdgo.GoString), stdgo.io_test.Io_test.testWriteNil) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriteAfterWriterClose" : stdgo.GoString), stdgo.io_test.Io_test.testWriteAfterWriterClose) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPipeCloseError" : stdgo.GoString), stdgo.io_test.Io_test.testPipeCloseError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPipeConcurrent" : stdgo.GoString), stdgo.io_test.Io_test.testPipeConcurrent) : stdgo.testing.Testing.InternalTest)) : stdgo.Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
var _benchmarks : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>(2, 2, (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCopyNSmall" : stdgo.GoString), stdgo.io_test.Io_test.benchmarkCopyNSmall) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCopyNLarge" : stdgo.GoString), stdgo.io_test.Io_test.benchmarkCopyNLarge) : stdgo.testing.Testing.InternalBenchmark)) : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
var _fuzzTargets : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
var _examples : stdgo.Slice<stdgo.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo.testing.Testing.InternalExample>(
18,
18,
(new stdgo.testing.Testing.InternalExample(("ExampleCopy" : stdgo.GoString), stdgo.io_test.Io_test.exampleCopy, ("some io.Reader stream to be read\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleCopyBuffer" : stdgo.GoString), stdgo.io_test.Io_test.exampleCopyBuffer, ("first reader\nsecond reader\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleCopyN" : stdgo.GoString), stdgo.io_test.Io_test.exampleCopyN, ("some\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleReadAtLeast" : stdgo.GoString), stdgo.io_test.Io_test.exampleReadAtLeast, ("some io.Reader\nerror: short buffer\nerror: unexpected EOF\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleReadFull" : stdgo.GoString), stdgo.io_test.Io_test.exampleReadFull, ("some\nerror: unexpected EOF\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleWriteString" : stdgo.GoString), stdgo.io_test.Io_test.exampleWriteString, ("Hello World\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleLimitReader" : stdgo.GoString), stdgo.io_test.Io_test.exampleLimitReader, ("some\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleMultiReader" : stdgo.GoString), stdgo.io_test.Io_test.exampleMultiReader, ("first reader second reader third reader\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleTeeReader" : stdgo.GoString), stdgo.io_test.Io_test.exampleTeeReader, ("some io.Reader stream to be read\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleSectionReader" : stdgo.GoString), stdgo.io_test.Io_test.exampleSectionReader, ("io.Reader stream\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleSectionReader_Read" : stdgo.GoString), stdgo.io_test.Io_test.exampleSectionReader_Read, ("io.Reader\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleSectionReader_ReadAt" : stdgo.GoString), stdgo.io_test.Io_test.exampleSectionReader_ReadAt, ("stream\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleSectionReader_Seek" : stdgo.GoString), stdgo.io_test.Io_test.exampleSectionReader_Seek, ("stream\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleSectionReader_Size" : stdgo.GoString), stdgo.io_test.Io_test.exampleSectionReader_Size, ("17\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleSeeker_Seek" : stdgo.GoString), stdgo.io_test.Io_test.exampleSeeker_Seek, ("io.Reader stream to be read\nread\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleMultiWriter" : stdgo.GoString), stdgo.io_test.Io_test.exampleMultiWriter, ("some io.Reader stream to be read\nsome io.Reader stream to be read\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExamplePipe" : stdgo.GoString), stdgo.io_test.Io_test.examplePipe, ("some io.Reader stream to be read\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleReadAll" : stdgo.GoString), stdgo.io_test.Io_test.exampleReadAll, ("Go is a general-purpose language designed with systems programming in mind.\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample)) : stdgo.Slice<stdgo.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("io" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

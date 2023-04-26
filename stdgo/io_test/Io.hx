package stdgo.io_test;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
import stdgo.io.Io;
/**
    
    
    
**/
private var _tests = (new Slice<stdgo.testing.Testing.InternalTest>(
52,
52,
(new stdgo.testing.Testing.InternalTest(("TestCopy" : GoString), stdgo.io_test.Io_test.testCopy) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCopyNegative" : GoString), stdgo.io_test.Io_test.testCopyNegative) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCopyBuffer" : GoString), stdgo.io_test.Io_test.testCopyBuffer) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCopyBufferNil" : GoString), stdgo.io_test.Io_test.testCopyBufferNil) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCopyReadFrom" : GoString), stdgo.io_test.Io_test.testCopyReadFrom) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCopyWriteTo" : GoString), stdgo.io_test.Io_test.testCopyWriteTo) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCopyPriority" : GoString), stdgo.io_test.Io_test.testCopyPriority) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCopyReadErrWriteErr" : GoString), stdgo.io_test.Io_test.testCopyReadErrWriteErr) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCopyN" : GoString), stdgo.io_test.Io_test.testCopyN) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCopyNReadFrom" : GoString), stdgo.io_test.Io_test.testCopyNReadFrom) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCopyNWriteTo" : GoString), stdgo.io_test.Io_test.testCopyNWriteTo) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCopyNEOF" : GoString), stdgo.io_test.Io_test.testCopyNEOF) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadAtLeast" : GoString), stdgo.io_test.Io_test.testReadAtLeast) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadAtLeastWithDataAndEOF" : GoString), stdgo.io_test.Io_test.testReadAtLeastWithDataAndEOF) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadAtLeastWithDataAndError" : GoString), stdgo.io_test.Io_test.testReadAtLeastWithDataAndError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestTeeReader" : GoString), stdgo.io_test.Io_test.testTeeReader) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSectionReader_ReadAt" : GoString), stdgo.io_test.Io_test.testSectionReader_ReadAt) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSectionReader_Seek" : GoString), stdgo.io_test.Io_test.testSectionReader_Seek) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSectionReader_Size" : GoString), stdgo.io_test.Io_test.testSectionReader_Size) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSectionReader_Max" : GoString), stdgo.io_test.Io_test.testSectionReader_Max) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCopyLargeWriter" : GoString), stdgo.io_test.Io_test.testCopyLargeWriter) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNopCloserWriterToForwarding" : GoString), stdgo.io_test.Io_test.testNopCloserWriterToForwarding) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestOffsetWriter_Seek" : GoString), stdgo.io_test.Io_test.testOffsetWriter_Seek) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestOffsetWriter_WriteAt" : GoString), stdgo.io_test.Io_test.testOffsetWriter_WriteAt) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestOffsetWriter_Write" : GoString), stdgo.io_test.Io_test.testOffsetWriter_Write) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMultiReader" : GoString), stdgo.io_test.Io_test.testMultiReader) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMultiReaderAsWriterTo" : GoString), stdgo.io_test.Io_test.testMultiReaderAsWriterTo) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMultiWriter" : GoString), stdgo.io_test.Io_test.testMultiWriter) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMultiWriter_String" : GoString), stdgo.io_test.Io_test.testMultiWriter_String) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMultiWriter_WriteStringSingleAlloc" : GoString), stdgo.io_test.Io_test.testMultiWriter_WriteStringSingleAlloc) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMultiWriter_StringCheckCall" : GoString), stdgo.io_test.Io_test.testMultiWriter_StringCheckCall) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMultiWriterSingleChainFlatten" : GoString), stdgo.io_test.Io_test.testMultiWriterSingleChainFlatten) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMultiWriterError" : GoString), stdgo.io_test.Io_test.testMultiWriterError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMultiReaderCopy" : GoString), stdgo.io_test.Io_test.testMultiReaderCopy) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMultiWriterCopy" : GoString), stdgo.io_test.Io_test.testMultiWriterCopy) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMultiReaderFlatten" : GoString), stdgo.io_test.Io_test.testMultiReaderFlatten) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMultiReaderSingleByteWithEOF" : GoString), stdgo.io_test.Io_test.testMultiReaderSingleByteWithEOF) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMultiReaderFinalEOF" : GoString), stdgo.io_test.Io_test.testMultiReaderFinalEOF) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMultiReaderFreesExhaustedReaders" : GoString), stdgo.io_test.Io_test.testMultiReaderFreesExhaustedReaders) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestInterleavedMultiReader" : GoString), stdgo.io_test.Io_test.testInterleavedMultiReader) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPipe1" : GoString), stdgo.io_test.Io_test.testPipe1) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPipe2" : GoString), stdgo.io_test.Io_test.testPipe2) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPipe3" : GoString), stdgo.io_test.Io_test.testPipe3) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPipeReadClose" : GoString), stdgo.io_test.Io_test.testPipeReadClose) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPipeReadClose2" : GoString), stdgo.io_test.Io_test.testPipeReadClose2) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPipeWriteClose" : GoString), stdgo.io_test.Io_test.testPipeWriteClose) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPipeWriteClose2" : GoString), stdgo.io_test.Io_test.testPipeWriteClose2) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriteEmpty" : GoString), stdgo.io_test.Io_test.testWriteEmpty) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriteNil" : GoString), stdgo.io_test.Io_test.testWriteNil) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriteAfterWriterClose" : GoString), stdgo.io_test.Io_test.testWriteAfterWriterClose) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPipeCloseError" : GoString), stdgo.io_test.Io_test.testPipeCloseError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPipeConcurrent" : GoString), stdgo.io_test.Io_test.testPipeConcurrent) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
private var _benchmarks = (new Slice<stdgo.testing.Testing.InternalBenchmark>(2, 2, (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCopyNSmall" : GoString), stdgo.io_test.Io_test.benchmarkCopyNSmall) : stdgo.testing.Testing.InternalBenchmark), (new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCopyNLarge" : GoString), stdgo.io_test.Io_test.benchmarkCopyNLarge) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
private var _fuzzTargets = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
private var _examples = (new Slice<stdgo.testing.Testing.InternalExample>(
18,
18,
(new stdgo.testing.Testing.InternalExample(("ExampleCopy" : GoString), stdgo.io_test.Io_test.exampleCopy, ("some io.Reader stream to be read\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleCopyBuffer" : GoString), stdgo.io_test.Io_test.exampleCopyBuffer, ("first reader\nsecond reader\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleCopyN" : GoString), stdgo.io_test.Io_test.exampleCopyN, ("some\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleReadAtLeast" : GoString), stdgo.io_test.Io_test.exampleReadAtLeast, ("some io.Reader\nerror: short buffer\nerror: unexpected EOF\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleReadFull" : GoString), stdgo.io_test.Io_test.exampleReadFull, ("some\nerror: unexpected EOF\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleWriteString" : GoString), stdgo.io_test.Io_test.exampleWriteString, ("Hello World\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleLimitReader" : GoString), stdgo.io_test.Io_test.exampleLimitReader, ("some\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleMultiReader" : GoString), stdgo.io_test.Io_test.exampleMultiReader, ("first reader second reader third reader\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleTeeReader" : GoString), stdgo.io_test.Io_test.exampleTeeReader, ("some io.Reader stream to be read\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleSectionReader" : GoString), stdgo.io_test.Io_test.exampleSectionReader, ("io.Reader stream\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleSectionReader_Read" : GoString), stdgo.io_test.Io_test.exampleSectionReader_Read, ("io.Reader\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleSectionReader_ReadAt" : GoString), stdgo.io_test.Io_test.exampleSectionReader_ReadAt, ("stream\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleSectionReader_Seek" : GoString), stdgo.io_test.Io_test.exampleSectionReader_Seek, ("stream\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleSectionReader_Size" : GoString), stdgo.io_test.Io_test.exampleSectionReader_Size, ("17\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleSeeker_Seek" : GoString), stdgo.io_test.Io_test.exampleSeeker_Seek, ("io.Reader stream to be read\nread\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleMultiWriter" : GoString), stdgo.io_test.Io_test.exampleMultiWriter, ("some io.Reader stream to be read\nsome io.Reader stream to be read\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExamplePipe" : GoString), stdgo.io_test.Io_test.examplePipe, ("some io.Reader stream to be read\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleReadAll" : GoString), stdgo.io_test.Io_test.exampleReadAll, ("Go is a general-purpose language designed with systems programming in mind.\n" : GoString), false) : stdgo.testing.Testing.InternalExample)) : Slice<stdgo.testing.Testing.InternalExample>);
private function main():Void {
        var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("io" : GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

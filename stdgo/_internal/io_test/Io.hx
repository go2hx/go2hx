package stdgo._internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
var _tests : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>(53, 53, ...[
(new stdgo._internal.testing.Testing.InternalTest(("TestCopy" : stdgo.GoString), stdgo._internal.io_test.Io_test.testCopy) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestCopyNegative" : stdgo.GoString), stdgo._internal.io_test.Io_test.testCopyNegative) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestCopyBuffer" : stdgo.GoString), stdgo._internal.io_test.Io_test.testCopyBuffer) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestCopyBufferNil" : stdgo.GoString), stdgo._internal.io_test.Io_test.testCopyBufferNil) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestCopyReadFrom" : stdgo.GoString), stdgo._internal.io_test.Io_test.testCopyReadFrom) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestCopyWriteTo" : stdgo.GoString), stdgo._internal.io_test.Io_test.testCopyWriteTo) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestCopyPriority" : stdgo.GoString), stdgo._internal.io_test.Io_test.testCopyPriority) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestCopyReadErrWriteErr" : stdgo.GoString), stdgo._internal.io_test.Io_test.testCopyReadErrWriteErr) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestCopyN" : stdgo.GoString), stdgo._internal.io_test.Io_test.testCopyN) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestCopyNReadFrom" : stdgo.GoString), stdgo._internal.io_test.Io_test.testCopyNReadFrom) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestCopyNWriteTo" : stdgo.GoString), stdgo._internal.io_test.Io_test.testCopyNWriteTo) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestCopyNEOF" : stdgo.GoString), stdgo._internal.io_test.Io_test.testCopyNEOF) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestReadAtLeast" : stdgo.GoString), stdgo._internal.io_test.Io_test.testReadAtLeast) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestReadAtLeastWithDataAndEOF" : stdgo.GoString), stdgo._internal.io_test.Io_test.testReadAtLeastWithDataAndEOF) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestReadAtLeastWithDataAndError" : stdgo.GoString), stdgo._internal.io_test.Io_test.testReadAtLeastWithDataAndError) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestTeeReader" : stdgo.GoString), stdgo._internal.io_test.Io_test.testTeeReader) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestSectionReader_ReadAt" : stdgo.GoString), stdgo._internal.io_test.Io_test.testSectionReader_ReadAt) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestSectionReader_Seek" : stdgo.GoString), stdgo._internal.io_test.Io_test.testSectionReader_Seek) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestSectionReader_Size" : stdgo.GoString), stdgo._internal.io_test.Io_test.testSectionReader_Size) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestSectionReader_Max" : stdgo.GoString), stdgo._internal.io_test.Io_test.testSectionReader_Max) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestCopyLargeWriter" : stdgo.GoString), stdgo._internal.io_test.Io_test.testCopyLargeWriter) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestNopCloserWriterToForwarding" : stdgo.GoString), stdgo._internal.io_test.Io_test.testNopCloserWriterToForwarding) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestOffsetWriter_Seek" : stdgo.GoString), stdgo._internal.io_test.Io_test.testOffsetWriter_Seek) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestOffsetWriter_WriteAt" : stdgo.GoString), stdgo._internal.io_test.Io_test.testOffsetWriter_WriteAt) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestWriteAt_PositionPriorToBase" : stdgo.GoString), stdgo._internal.io_test.Io_test.testWriteAt_PositionPriorToBase) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestOffsetWriter_Write" : stdgo.GoString), stdgo._internal.io_test.Io_test.testOffsetWriter_Write) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestMultiReader" : stdgo.GoString), stdgo._internal.io_test.Io_test.testMultiReader) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestMultiReaderAsWriterTo" : stdgo.GoString), stdgo._internal.io_test.Io_test.testMultiReaderAsWriterTo) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestMultiWriter" : stdgo.GoString), stdgo._internal.io_test.Io_test.testMultiWriter) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestMultiWriter_String" : stdgo.GoString), stdgo._internal.io_test.Io_test.testMultiWriter_String) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestMultiWriter_WriteStringSingleAlloc" : stdgo.GoString), stdgo._internal.io_test.Io_test.testMultiWriter_WriteStringSingleAlloc) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestMultiWriter_StringCheckCall" : stdgo.GoString), stdgo._internal.io_test.Io_test.testMultiWriter_StringCheckCall) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestMultiWriterSingleChainFlatten" : stdgo.GoString), stdgo._internal.io_test.Io_test.testMultiWriterSingleChainFlatten) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestMultiWriterError" : stdgo.GoString), stdgo._internal.io_test.Io_test.testMultiWriterError) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestMultiReaderCopy" : stdgo.GoString), stdgo._internal.io_test.Io_test.testMultiReaderCopy) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestMultiWriterCopy" : stdgo.GoString), stdgo._internal.io_test.Io_test.testMultiWriterCopy) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestMultiReaderFlatten" : stdgo.GoString), stdgo._internal.io_test.Io_test.testMultiReaderFlatten) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestMultiReaderSingleByteWithEOF" : stdgo.GoString), stdgo._internal.io_test.Io_test.testMultiReaderSingleByteWithEOF) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestMultiReaderFinalEOF" : stdgo.GoString), stdgo._internal.io_test.Io_test.testMultiReaderFinalEOF) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestMultiReaderFreesExhaustedReaders" : stdgo.GoString), stdgo._internal.io_test.Io_test.testMultiReaderFreesExhaustedReaders) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestInterleavedMultiReader" : stdgo.GoString), stdgo._internal.io_test.Io_test.testInterleavedMultiReader) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestPipe1" : stdgo.GoString), stdgo._internal.io_test.Io_test.testPipe1) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestPipe2" : stdgo.GoString), stdgo._internal.io_test.Io_test.testPipe2) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestPipe3" : stdgo.GoString), stdgo._internal.io_test.Io_test.testPipe3) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestPipeReadClose" : stdgo.GoString), stdgo._internal.io_test.Io_test.testPipeReadClose) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestPipeReadClose2" : stdgo.GoString), stdgo._internal.io_test.Io_test.testPipeReadClose2) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestPipeWriteClose" : stdgo.GoString), stdgo._internal.io_test.Io_test.testPipeWriteClose) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestPipeWriteClose2" : stdgo.GoString), stdgo._internal.io_test.Io_test.testPipeWriteClose2) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestWriteEmpty" : stdgo.GoString), stdgo._internal.io_test.Io_test.testWriteEmpty) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestWriteNil" : stdgo.GoString), stdgo._internal.io_test.Io_test.testWriteNil) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestWriteAfterWriterClose" : stdgo.GoString), stdgo._internal.io_test.Io_test.testWriteAfterWriterClose) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestPipeCloseError" : stdgo.GoString), stdgo._internal.io_test.Io_test.testPipeCloseError) : stdgo._internal.testing.Testing.InternalTest),
(new stdgo._internal.testing.Testing.InternalTest(("TestPipeConcurrent" : stdgo.GoString), stdgo._internal.io_test.Io_test.testPipeConcurrent) : stdgo._internal.testing.Testing.InternalTest)].concat([for (i in 53 ... (53 > 53 ? 53 : 53 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalTest)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalTest>);
var _benchmarks : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>(2, 2, ...[(new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkCopyNSmall" : stdgo.GoString), stdgo._internal.io_test.Io_test.benchmarkCopyNSmall) : stdgo._internal.testing.Testing.InternalBenchmark), (new stdgo._internal.testing.Testing.InternalBenchmark(("BenchmarkCopyNLarge" : stdgo.GoString), stdgo._internal.io_test.Io_test.benchmarkCopyNLarge) : stdgo._internal.testing.Testing.InternalBenchmark)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalBenchmark)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalBenchmark>);
var _fuzzTargets : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalFuzzTarget)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalFuzzTarget>);
var _examples : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>(18, 18, ...[
(new stdgo._internal.testing.Testing.InternalExample(("ExampleCopy" : stdgo.GoString), stdgo._internal.io_test.Io_test.exampleCopy, ("some io.Reader stream to be read\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleCopyBuffer" : stdgo.GoString), stdgo._internal.io_test.Io_test.exampleCopyBuffer, ("first reader\nsecond reader\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleCopyN" : stdgo.GoString), stdgo._internal.io_test.Io_test.exampleCopyN, ("some\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleReadAtLeast" : stdgo.GoString), stdgo._internal.io_test.Io_test.exampleReadAtLeast, ("some io.Reader\nerror: short buffer\nerror: unexpected EOF\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleReadFull" : stdgo.GoString), stdgo._internal.io_test.Io_test.exampleReadFull, ("some\nerror: unexpected EOF\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleWriteString" : stdgo.GoString), stdgo._internal.io_test.Io_test.exampleWriteString, ("Hello World\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleLimitReader" : stdgo.GoString), stdgo._internal.io_test.Io_test.exampleLimitReader, ("some\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleMultiReader" : stdgo.GoString), stdgo._internal.io_test.Io_test.exampleMultiReader, ("first reader second reader third reader\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleTeeReader" : stdgo.GoString), stdgo._internal.io_test.Io_test.exampleTeeReader, ("some io.Reader stream to be read\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleSectionReader" : stdgo.GoString), stdgo._internal.io_test.Io_test.exampleSectionReader, ("io.Reader stream\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleSectionReader_Read" : stdgo.GoString), stdgo._internal.io_test.Io_test.exampleSectionReader_Read, ("io.Reader\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleSectionReader_ReadAt" : stdgo.GoString), stdgo._internal.io_test.Io_test.exampleSectionReader_ReadAt, ("stream\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleSectionReader_Seek" : stdgo.GoString), stdgo._internal.io_test.Io_test.exampleSectionReader_Seek, ("stream\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleSectionReader_Size" : stdgo.GoString), stdgo._internal.io_test.Io_test.exampleSectionReader_Size, ("17\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleSeeker_Seek" : stdgo.GoString), stdgo._internal.io_test.Io_test.exampleSeeker_Seek, ("io.Reader stream to be read\nread\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleMultiWriter" : stdgo.GoString), stdgo._internal.io_test.Io_test.exampleMultiWriter, ("some io.Reader stream to be read\nsome io.Reader stream to be read\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExamplePipe" : stdgo.GoString), stdgo._internal.io_test.Io_test.examplePipe, ("some io.Reader stream to be read\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample),
(new stdgo._internal.testing.Testing.InternalExample(("ExampleReadAll" : stdgo.GoString), stdgo._internal.io_test.Io_test.exampleReadAll, ("Go is a general-purpose language designed with systems programming in mind.\n" : stdgo.GoString), false) : stdgo._internal.testing.Testing.InternalExample)].concat([for (i in 18 ... (18 > 18 ? 18 : 18 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing.InternalExample)])) : stdgo.Slice<stdgo._internal.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo._internal.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo._internal.testing.internal.testdeps.Testdeps.importPath = ("io" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

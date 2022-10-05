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

private var _tests:Slice<stdgo.testing.Testing.InternalTest> = (new Slice<stdgo.testing.Testing.InternalTest>(0, 0,
	(new stdgo.testing.Testing.InternalTest(Go.str("TestCopy"), stdgo.io_test.Io_test.testCopy) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestCopyNegative"), stdgo.io_test.Io_test.testCopyNegative) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestCopyBuffer"), stdgo.io_test.Io_test.testCopyBuffer) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestCopyBufferNil"), stdgo.io_test.Io_test.testCopyBufferNil) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestCopyReadFrom"), stdgo.io_test.Io_test.testCopyReadFrom) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestCopyWriteTo"), stdgo.io_test.Io_test.testCopyWriteTo) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestCopyPriority"), stdgo.io_test.Io_test.testCopyPriority) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestCopyReadErrWriteErr"),
		stdgo.io_test.Io_test.testCopyReadErrWriteErr) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestCopyN"), stdgo.io_test.Io_test.testCopyN) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestCopyNReadFrom"), stdgo.io_test.Io_test.testCopyNReadFrom) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestCopyNWriteTo"), stdgo.io_test.Io_test.testCopyNWriteTo) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestCopyNEOF"), stdgo.io_test.Io_test.testCopyNEOF) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestReadAtLeast"), stdgo.io_test.Io_test.testReadAtLeast) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestReadAtLeastWithDataAndEOF"),
		stdgo.io_test.Io_test.testReadAtLeastWithDataAndEOF) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestReadAtLeastWithDataAndError"),
		stdgo.io_test.Io_test.testReadAtLeastWithDataAndError) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestTeeReader"), stdgo.io_test.Io_test.testTeeReader) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestSectionReader_ReadAt"),
		stdgo.io_test.Io_test.testSectionReader_ReadAt) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestSectionReader_Seek"),
		stdgo.io_test.Io_test.testSectionReader_Seek) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestSectionReader_Size"),
		stdgo.io_test.Io_test.testSectionReader_Size) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestSectionReader_Max"),
		stdgo.io_test.Io_test.testSectionReader_Max) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestCopyLargeWriter"), stdgo.io_test.Io_test.testCopyLargeWriter) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestNopCloserWriterToForwarding"),
		stdgo.io_test.Io_test.testNopCloserWriterToForwarding) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestMultiReader"), stdgo.io_test.Io_test.testMultiReader) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestMultiReaderAsWriterTo"),
		stdgo.io_test.Io_test.testMultiReaderAsWriterTo) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestMultiWriter"), stdgo.io_test.Io_test.testMultiWriter) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestMultiWriter_String"),
		stdgo.io_test.Io_test.testMultiWriter_String) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestMultiWriter_WriteStringSingleAlloc"),
		stdgo.io_test.Io_test.testMultiWriter_WriteStringSingleAlloc) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestMultiWriter_StringCheckCall"),
		stdgo.io_test.Io_test.testMultiWriter_StringCheckCall) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestMultiWriterSingleChainFlatten"),
		stdgo.io_test.Io_test.testMultiWriterSingleChainFlatten) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestMultiWriterError"), stdgo.io_test.Io_test.testMultiWriterError) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestMultiReaderCopy"), stdgo.io_test.Io_test.testMultiReaderCopy) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestMultiWriterCopy"), stdgo.io_test.Io_test.testMultiWriterCopy) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestMultiReaderFlatten"),
		stdgo.io_test.Io_test.testMultiReaderFlatten) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestMultiReaderSingleByteWithEOF"),
		stdgo.io_test.Io_test.testMultiReaderSingleByteWithEOF) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestMultiReaderFinalEOF"),
		stdgo.io_test.Io_test.testMultiReaderFinalEOF) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestMultiReaderFreesExhaustedReaders"),
		stdgo.io_test.Io_test.testMultiReaderFreesExhaustedReaders) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestInterleavedMultiReader"),
		stdgo.io_test.Io_test.testInterleavedMultiReader) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestPipe1"), stdgo.io_test.Io_test.testPipe1) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestPipe2"), stdgo.io_test.Io_test.testPipe2) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestPipe3"), stdgo.io_test.Io_test.testPipe3) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestPipeReadClose"), stdgo.io_test.Io_test.testPipeReadClose) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestPipeReadClose2"), stdgo.io_test.Io_test.testPipeReadClose2) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestPipeWriteClose"), stdgo.io_test.Io_test.testPipeWriteClose) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestPipeWriteClose2"), stdgo.io_test.Io_test.testPipeWriteClose2) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestWriteEmpty"), stdgo.io_test.Io_test.testWriteEmpty) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestWriteNil"), stdgo.io_test.Io_test.testWriteNil) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestWriteAfterWriterClose"),
		stdgo.io_test.Io_test.testWriteAfterWriterClose) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestPipeCloseError"), stdgo.io_test.Io_test.testPipeCloseError) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestPipeConcurrent"),
		stdgo.io_test.Io_test.testPipeConcurrent) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);

private var _benchmarks:Slice<stdgo.testing.Testing.InternalBenchmark> = (new Slice<stdgo.testing.Testing.InternalBenchmark>(0, 0,
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkCopyNSmall"),
		stdgo.io_test.Io_test.benchmarkCopyNSmall) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkCopyNLarge"),
		stdgo.io_test.Io_test.benchmarkCopyNLarge) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);

private var _fuzzTargets:Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0,
	0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);

private var _examples:Slice<stdgo.testing.Testing.InternalExample> = (new Slice<stdgo.testing.Testing.InternalExample>(0, 0,
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleCopy"), stdgo.io_test.Io_test.exampleCopy, Go.str("some io.Reader stream to be read\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleCopyBuffer"), stdgo.io_test.Io_test.exampleCopyBuffer, Go.str("first reader\nsecond reader\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleCopyN"), stdgo.io_test.Io_test.exampleCopyN, Go.str("some\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleReadAtLeast"), stdgo.io_test.Io_test.exampleReadAtLeast,
		Go.str("some io.Reader\nerror: short buffer\nerror: unexpected EOF\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleReadFull"), stdgo.io_test.Io_test.exampleReadFull, Go.str("some\nerror: unexpected EOF\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleWriteString"), stdgo.io_test.Io_test.exampleWriteString, Go.str("Hello World\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleLimitReader"), stdgo.io_test.Io_test.exampleLimitReader, Go.str("some\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleMultiReader"), stdgo.io_test.Io_test.exampleMultiReader,
		Go.str("first reader second reader third reader\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleTeeReader"), stdgo.io_test.Io_test.exampleTeeReader,
		Go.str("some io.Reader stream to be read\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleSectionReader"), stdgo.io_test.Io_test.exampleSectionReader, Go.str("io.Reader stream\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleSectionReader_Read"), stdgo.io_test.Io_test.exampleSectionReader_Read, Go.str("io.Reader\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleSectionReader_ReadAt"), stdgo.io_test.Io_test.exampleSectionReader_ReadAt, Go.str("stream\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleSectionReader_Seek"), stdgo.io_test.Io_test.exampleSectionReader_Seek, Go.str("stream\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleSectionReader_Size"), stdgo.io_test.Io_test.exampleSectionReader_Size, Go.str("17\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleSeeker_Seek"), stdgo.io_test.Io_test.exampleSeeker_Seek,
		Go.str("io.Reader stream to be read\nread\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleMultiWriter"), stdgo.io_test.Io_test.exampleMultiWriter,
		Go.str("some io.Reader stream to be read\nsome io.Reader stream to be read\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExamplePipe"), stdgo.io_test.Io_test.examplePipe, Go.str("some io.Reader stream to be read\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleReadAll"), stdgo.io_test.Io_test.exampleReadAll,
		Go.str("Go is a general-purpose language designed with systems programming in mind.\n"),
		false) : stdgo.testing.Testing.InternalExample)) : Slice<stdgo.testing.Testing.InternalExample>);

function main():Void {
	var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)),
		_tests, _benchmarks,
		_fuzzTargets, _examples);
	Sys.exit(_m.run());
}

@:keep var _ = {
	try {
		stdgo.testing.internal.testdeps.Testdeps.importPath = Go.str("io");
	} catch (__exception__)
		if (__exception__.message != "__return__")
			throw __exception__;
	true;
};

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
	(new stdgo.testing.Testing.InternalTest((Go.str("TestCopy") : GoString), stdgo.io_test.Io_test.testCopy) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestCopyNegative") : GoString),
		stdgo.io_test.Io_test.testCopyNegative) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestCopyBuffer") : GoString), stdgo.io_test.Io_test.testCopyBuffer) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestCopyBufferNil") : GoString),
		stdgo.io_test.Io_test.testCopyBufferNil) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestCopyReadFrom") : GoString),
		stdgo.io_test.Io_test.testCopyReadFrom) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestCopyWriteTo") : GoString),
		stdgo.io_test.Io_test.testCopyWriteTo) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestCopyPriority") : GoString),
		stdgo.io_test.Io_test.testCopyPriority) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestCopyReadErrWriteErr") : GoString),
		stdgo.io_test.Io_test.testCopyReadErrWriteErr) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestCopyN") : GoString), stdgo.io_test.Io_test.testCopyN) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestCopyNReadFrom") : GoString),
		stdgo.io_test.Io_test.testCopyNReadFrom) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestCopyNWriteTo") : GoString),
		stdgo.io_test.Io_test.testCopyNWriteTo) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestCopyNEOF") : GoString), stdgo.io_test.Io_test.testCopyNEOF) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestReadAtLeast") : GoString),
		stdgo.io_test.Io_test.testReadAtLeast) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestReadAtLeastWithDataAndEOF") : GoString),
		stdgo.io_test.Io_test.testReadAtLeastWithDataAndEOF) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestReadAtLeastWithDataAndError") : GoString),
		stdgo.io_test.Io_test.testReadAtLeastWithDataAndError) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestTeeReader") : GoString), stdgo.io_test.Io_test.testTeeReader) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestSectionReader_ReadAt") : GoString),
		stdgo.io_test.Io_test.testSectionReader_ReadAt) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestSectionReader_Seek") : GoString),
		stdgo.io_test.Io_test.testSectionReader_Seek) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestSectionReader_Size") : GoString),
		stdgo.io_test.Io_test.testSectionReader_Size) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestSectionReader_Max") : GoString),
		stdgo.io_test.Io_test.testSectionReader_Max) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestCopyLargeWriter") : GoString),
		stdgo.io_test.Io_test.testCopyLargeWriter) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestNopCloserWriterToForwarding") : GoString),
		stdgo.io_test.Io_test.testNopCloserWriterToForwarding) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestMultiReader") : GoString),
		stdgo.io_test.Io_test.testMultiReader) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestMultiReaderAsWriterTo") : GoString),
		stdgo.io_test.Io_test.testMultiReaderAsWriterTo) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestMultiWriter") : GoString),
		stdgo.io_test.Io_test.testMultiWriter) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestMultiWriter_String") : GoString),
		stdgo.io_test.Io_test.testMultiWriter_String) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestMultiWriter_WriteStringSingleAlloc") : GoString),
		stdgo.io_test.Io_test.testMultiWriter_WriteStringSingleAlloc) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestMultiWriter_StringCheckCall") : GoString),
		stdgo.io_test.Io_test.testMultiWriter_StringCheckCall) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestMultiWriterSingleChainFlatten") : GoString),
		stdgo.io_test.Io_test.testMultiWriterSingleChainFlatten) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestMultiWriterError") : GoString),
		stdgo.io_test.Io_test.testMultiWriterError) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestMultiReaderCopy") : GoString),
		stdgo.io_test.Io_test.testMultiReaderCopy) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestMultiWriterCopy") : GoString),
		stdgo.io_test.Io_test.testMultiWriterCopy) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestMultiReaderFlatten") : GoString),
		stdgo.io_test.Io_test.testMultiReaderFlatten) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestMultiReaderSingleByteWithEOF") : GoString),
		stdgo.io_test.Io_test.testMultiReaderSingleByteWithEOF) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestMultiReaderFinalEOF") : GoString),
		stdgo.io_test.Io_test.testMultiReaderFinalEOF) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestMultiReaderFreesExhaustedReaders") : GoString),
		stdgo.io_test.Io_test.testMultiReaderFreesExhaustedReaders) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestInterleavedMultiReader") : GoString),
		stdgo.io_test.Io_test.testInterleavedMultiReader) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestPipe1") : GoString), stdgo.io_test.Io_test.testPipe1) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestPipe2") : GoString), stdgo.io_test.Io_test.testPipe2) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestPipe3") : GoString), stdgo.io_test.Io_test.testPipe3) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestPipeReadClose") : GoString),
		stdgo.io_test.Io_test.testPipeReadClose) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestPipeReadClose2") : GoString),
		stdgo.io_test.Io_test.testPipeReadClose2) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestPipeWriteClose") : GoString),
		stdgo.io_test.Io_test.testPipeWriteClose) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestPipeWriteClose2") : GoString),
		stdgo.io_test.Io_test.testPipeWriteClose2) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestWriteEmpty") : GoString), stdgo.io_test.Io_test.testWriteEmpty) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestWriteNil") : GoString), stdgo.io_test.Io_test.testWriteNil) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestWriteAfterWriterClose") : GoString),
		stdgo.io_test.Io_test.testWriteAfterWriterClose) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestPipeCloseError") : GoString),
		stdgo.io_test.Io_test.testPipeCloseError) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestPipeConcurrent") : GoString),
		stdgo.io_test.Io_test.testPipeConcurrent) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);

private var _benchmarks:Slice<stdgo.testing.Testing.InternalBenchmark> = (new Slice<stdgo.testing.Testing.InternalBenchmark>(0, 0,
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkCopyNSmall") : GoString),
		stdgo.io_test.Io_test.benchmarkCopyNSmall) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkCopyNLarge") : GoString),
		stdgo.io_test.Io_test.benchmarkCopyNLarge) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);

private var _fuzzTargets:Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0,
	0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);

private var _examples:Slice<stdgo.testing.Testing.InternalExample> = (new Slice<stdgo.testing.Testing.InternalExample>(0, 0,
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleCopy") : GoString), stdgo.io_test.Io_test.exampleCopy,
		(Go.str("some io.Reader stream to be read\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleCopyBuffer") : GoString), stdgo.io_test.Io_test.exampleCopyBuffer,
		(Go.str("first reader\nsecond reader\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleCopyN") : GoString), stdgo.io_test.Io_test.exampleCopyN, (Go.str("some\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleReadAtLeast") : GoString), stdgo.io_test.Io_test.exampleReadAtLeast,
		(Go.str("some io.Reader\nerror: short buffer\nerror: unexpected EOF\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleReadFull") : GoString), stdgo.io_test.Io_test.exampleReadFull,
		(Go.str("some\nerror: unexpected EOF\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleWriteString") : GoString), stdgo.io_test.Io_test.exampleWriteString,
		(Go.str("Hello World\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleLimitReader") : GoString), stdgo.io_test.Io_test.exampleLimitReader,
		(Go.str("some\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleMultiReader") : GoString), stdgo.io_test.Io_test.exampleMultiReader,
		(Go.str("first reader second reader third reader\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleTeeReader") : GoString), stdgo.io_test.Io_test.exampleTeeReader,
		(Go.str("some io.Reader stream to be read\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleSectionReader") : GoString), stdgo.io_test.Io_test.exampleSectionReader,
		(Go.str("io.Reader stream\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleSectionReader_Read") : GoString), stdgo.io_test.Io_test.exampleSectionReader_Read,
		(Go.str("io.Reader\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleSectionReader_ReadAt") : GoString), stdgo.io_test.Io_test.exampleSectionReader_ReadAt,
		(Go.str("stream\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleSectionReader_Seek") : GoString), stdgo.io_test.Io_test.exampleSectionReader_Seek,
		(Go.str("stream\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleSectionReader_Size") : GoString), stdgo.io_test.Io_test.exampleSectionReader_Size,
		(Go.str("17\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleSeeker_Seek") : GoString), stdgo.io_test.Io_test.exampleSeeker_Seek,
		(Go.str("io.Reader stream to be read\nread\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleMultiWriter") : GoString), stdgo.io_test.Io_test.exampleMultiWriter,
		(Go.str("some io.Reader stream to be read\nsome io.Reader stream to be read\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExamplePipe") : GoString), stdgo.io_test.Io_test.examplePipe,
		(Go.str("some io.Reader stream to be read\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleReadAll") : GoString), stdgo.io_test.Io_test.exampleReadAll,
		(Go.str("Go is a general-purpose language designed with systems programming in mind.\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample)) : Slice<stdgo.testing.Testing.InternalExample>);

function main():Void {
	var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)),
		_tests, _benchmarks,
		_fuzzTargets, _examples);
	Sys.exit(_m.run());
}

@:keep var _ = {
	try {
		stdgo.testing.internal.testdeps.Testdeps.importPath = (Go.str("io") : GoString);
	} catch (__exception__)
		if (__exception__.message != "__return__")
			throw __exception__;
	true;
};

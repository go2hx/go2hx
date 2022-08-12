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
var _tests : Slice<stdgo.testing.Testing.InternalTest> = ((new Slice<stdgo.testing.Testing.InternalTest>(
((new stdgo.testing.Testing.InternalTest(((((("TestCopy" : GoString))) : GoString)), stdgo.io_test.Io_test.testCopy) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestCopyNegative" : GoString))) : GoString)), stdgo.io_test.Io_test.testCopyNegative) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestCopyBuffer" : GoString))) : GoString)), stdgo.io_test.Io_test.testCopyBuffer) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestCopyBufferNil" : GoString))) : GoString)), stdgo.io_test.Io_test.testCopyBufferNil) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestCopyReadFrom" : GoString))) : GoString)), stdgo.io_test.Io_test.testCopyReadFrom) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestCopyWriteTo" : GoString))) : GoString)), stdgo.io_test.Io_test.testCopyWriteTo) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestCopyPriority" : GoString))) : GoString)), stdgo.io_test.Io_test.testCopyPriority) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestCopyReadErrWriteErr" : GoString))) : GoString)), stdgo.io_test.Io_test.testCopyReadErrWriteErr) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestCopyN" : GoString))) : GoString)), stdgo.io_test.Io_test.testCopyN) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestCopyNReadFrom" : GoString))) : GoString)), stdgo.io_test.Io_test.testCopyNReadFrom) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestCopyNWriteTo" : GoString))) : GoString)), stdgo.io_test.Io_test.testCopyNWriteTo) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestCopyNEOF" : GoString))) : GoString)), stdgo.io_test.Io_test.testCopyNEOF) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestReadAtLeast" : GoString))) : GoString)), stdgo.io_test.Io_test.testReadAtLeast) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestReadAtLeastWithDataAndEOF" : GoString))) : GoString)), stdgo.io_test.Io_test.testReadAtLeastWithDataAndEOF) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestReadAtLeastWithDataAndError" : GoString))) : GoString)), stdgo.io_test.Io_test.testReadAtLeastWithDataAndError) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestTeeReader" : GoString))) : GoString)), stdgo.io_test.Io_test.testTeeReader) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestSectionReader_ReadAt" : GoString))) : GoString)), stdgo.io_test.Io_test.testSectionReader_ReadAt) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestSectionReader_Seek" : GoString))) : GoString)), stdgo.io_test.Io_test.testSectionReader_Seek) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestSectionReader_Size" : GoString))) : GoString)), stdgo.io_test.Io_test.testSectionReader_Size) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestSectionReader_Max" : GoString))) : GoString)), stdgo.io_test.Io_test.testSectionReader_Max) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestCopyLargeWriter" : GoString))) : GoString)), stdgo.io_test.Io_test.testCopyLargeWriter) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestNopCloserWriterToForwarding" : GoString))) : GoString)), stdgo.io_test.Io_test.testNopCloserWriterToForwarding) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestMultiReader" : GoString))) : GoString)), stdgo.io_test.Io_test.testMultiReader) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestMultiReaderAsWriterTo" : GoString))) : GoString)), stdgo.io_test.Io_test.testMultiReaderAsWriterTo) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestMultiWriter" : GoString))) : GoString)), stdgo.io_test.Io_test.testMultiWriter) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestMultiWriter_String" : GoString))) : GoString)), stdgo.io_test.Io_test.testMultiWriter_String) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestMultiWriter_WriteStringSingleAlloc" : GoString))) : GoString)), stdgo.io_test.Io_test.testMultiWriter_WriteStringSingleAlloc) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestMultiWriter_StringCheckCall" : GoString))) : GoString)), stdgo.io_test.Io_test.testMultiWriter_StringCheckCall) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestMultiWriterSingleChainFlatten" : GoString))) : GoString)), stdgo.io_test.Io_test.testMultiWriterSingleChainFlatten) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestMultiWriterError" : GoString))) : GoString)), stdgo.io_test.Io_test.testMultiWriterError) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestMultiReaderCopy" : GoString))) : GoString)), stdgo.io_test.Io_test.testMultiReaderCopy) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestMultiWriterCopy" : GoString))) : GoString)), stdgo.io_test.Io_test.testMultiWriterCopy) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestMultiReaderFlatten" : GoString))) : GoString)), stdgo.io_test.Io_test.testMultiReaderFlatten) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestMultiReaderSingleByteWithEOF" : GoString))) : GoString)), stdgo.io_test.Io_test.testMultiReaderSingleByteWithEOF) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestMultiReaderFinalEOF" : GoString))) : GoString)), stdgo.io_test.Io_test.testMultiReaderFinalEOF) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestMultiReaderFreesExhaustedReaders" : GoString))) : GoString)), stdgo.io_test.Io_test.testMultiReaderFreesExhaustedReaders) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestInterleavedMultiReader" : GoString))) : GoString)), stdgo.io_test.Io_test.testInterleavedMultiReader) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestPipe1" : GoString))) : GoString)), stdgo.io_test.Io_test.testPipe1) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestPipe2" : GoString))) : GoString)), stdgo.io_test.Io_test.testPipe2) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestPipe3" : GoString))) : GoString)), stdgo.io_test.Io_test.testPipe3) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestPipeReadClose" : GoString))) : GoString)), stdgo.io_test.Io_test.testPipeReadClose) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestPipeReadClose2" : GoString))) : GoString)), stdgo.io_test.Io_test.testPipeReadClose2) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestPipeWriteClose" : GoString))) : GoString)), stdgo.io_test.Io_test.testPipeWriteClose) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestPipeWriteClose2" : GoString))) : GoString)), stdgo.io_test.Io_test.testPipeWriteClose2) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestWriteEmpty" : GoString))) : GoString)), stdgo.io_test.Io_test.testWriteEmpty) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestWriteNil" : GoString))) : GoString)), stdgo.io_test.Io_test.testWriteNil) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestWriteAfterWriterClose" : GoString))) : GoString)), stdgo.io_test.Io_test.testWriteAfterWriterClose) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestPipeCloseError" : GoString))) : GoString)), stdgo.io_test.Io_test.testPipeCloseError) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestPipeConcurrent" : GoString))) : GoString)), stdgo.io_test.Io_test.testPipeConcurrent) : stdgo.testing.Testing.InternalTest))) : Slice<stdgo.testing.Testing.InternalTest>));
var _benchmarks : Slice<stdgo.testing.Testing.InternalBenchmark> = ((new Slice<stdgo.testing.Testing.InternalBenchmark>(((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkCopyNSmall" : GoString))) : GoString)), stdgo.io_test.Io_test.benchmarkCopyNSmall) : stdgo.testing.Testing.InternalBenchmark)), ((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkCopyNLarge" : GoString))) : GoString)), stdgo.io_test.Io_test.benchmarkCopyNLarge) : stdgo.testing.Testing.InternalBenchmark))) : Slice<stdgo.testing.Testing.InternalBenchmark>));
var _fuzzTargets : Slice<stdgo.testing.Testing.InternalFuzzTarget> = ((new Slice<stdgo.testing.Testing.InternalFuzzTarget>() : Slice<stdgo.testing.Testing.InternalFuzzTarget>));
var _examples : Slice<stdgo.testing.Testing.InternalExample> = ((new Slice<stdgo.testing.Testing.InternalExample>(
((new stdgo.testing.Testing.InternalExample(((((("ExampleCopy" : GoString))) : GoString)), stdgo.io_test.Io_test.exampleCopy, ((((("some io.Reader stream to be read\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleCopyBuffer" : GoString))) : GoString)), stdgo.io_test.Io_test.exampleCopyBuffer, ((((("first reader\nsecond reader\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleCopyN" : GoString))) : GoString)), stdgo.io_test.Io_test.exampleCopyN, ((((("some\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleReadAtLeast" : GoString))) : GoString)), stdgo.io_test.Io_test.exampleReadAtLeast, ((((("some io.Reader\nerror: short buffer\nerror: unexpected EOF\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleReadFull" : GoString))) : GoString)), stdgo.io_test.Io_test.exampleReadFull, ((((("some\nerror: unexpected EOF\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleWriteString" : GoString))) : GoString)), stdgo.io_test.Io_test.exampleWriteString, ((((("Hello World\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleLimitReader" : GoString))) : GoString)), stdgo.io_test.Io_test.exampleLimitReader, ((((("some\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleMultiReader" : GoString))) : GoString)), stdgo.io_test.Io_test.exampleMultiReader, ((((("first reader second reader third reader\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleTeeReader" : GoString))) : GoString)), stdgo.io_test.Io_test.exampleTeeReader, ((((("some io.Reader stream to be read\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleSectionReader" : GoString))) : GoString)), stdgo.io_test.Io_test.exampleSectionReader, ((((("io.Reader stream\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleSectionReader_Read" : GoString))) : GoString)), stdgo.io_test.Io_test.exampleSectionReader_Read, ((((("io.Reader\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleSectionReader_ReadAt" : GoString))) : GoString)), stdgo.io_test.Io_test.exampleSectionReader_ReadAt, ((((("stream\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleSectionReader_Seek" : GoString))) : GoString)), stdgo.io_test.Io_test.exampleSectionReader_Seek, ((((("stream\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleSectionReader_Size" : GoString))) : GoString)), stdgo.io_test.Io_test.exampleSectionReader_Size, ((((("17\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleSeeker_Seek" : GoString))) : GoString)), stdgo.io_test.Io_test.exampleSeeker_Seek, ((((("io.Reader stream to be read\nread\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleMultiWriter" : GoString))) : GoString)), stdgo.io_test.Io_test.exampleMultiWriter, ((((("some io.Reader stream to be read\nsome io.Reader stream to be read\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExamplePipe" : GoString))) : GoString)), stdgo.io_test.Io_test.examplePipe, ((((("some io.Reader stream to be read\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleReadAll" : GoString))) : GoString)), stdgo.io_test.Io_test.exampleReadAll, ((((("Go is a general-purpose language designed with systems programming in mind.\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample))) : Slice<stdgo.testing.Testing.InternalExample>));
function main():Void {
        var _m = stdgo.testing.Testing.mainStart({
            final __self__ = new stdgo.testing.internal.testdeps.Testdeps.TestDeps_wrapper(((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)));
            __self__.checkCorpus = #if !macro function(__0:Slice<AnyInterface>, __1:Slice<stdgo.reflect.Reflect.Type>):stdgo.Error return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).checkCorpus(__0, __1) #else null #end;
            __self__.coordinateFuzzing = #if !macro function(__0:stdgo.time.Time.Duration, __1:GoInt64, __2:stdgo.time.Time.Duration, __3:GoInt64, __4:GoInt, __5:Slice<{ var parent : GoString; var path : GoString; var data : Slice<GoUInt8>; var values : Slice<AnyInterface>; var generation : GoInt; var isSeed : Bool; }>, __6:Slice<stdgo.reflect.Reflect.Type>, __7:GoString, __8:GoString):stdgo.Error return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).coordinateFuzzing(__0, __1, __2, __3, __4, __5, __6, __7, __8) #else null #end;
            __self__.importPath = #if !macro function():GoString return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).importPath() #else null #end;
            __self__.matchString = #if !macro function(_key:GoString, _value:GoString):{ var _0 : Bool; var _1 : stdgo.Error; } return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).matchString(_key, _value) #else null #end;
            __self__.readCorpus = #if !macro function(__0:GoString, __1:Slice<stdgo.reflect.Reflect.Type>):{ var _0 : Slice<{ var parent : GoString; var path : GoString; var data : Slice<GoUInt8>; var values : Slice<AnyInterface>; var generation : GoInt; var isSeed : Bool; }>; var _1 : stdgo.Error; } return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).readCorpus(__0, __1) #else null #end;
            __self__.resetCoverage = #if !macro function():Void ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).resetCoverage() #else null #end;
            __self__.runFuzzWorker = #if !macro function(__0:({ var parent : GoString; var path : GoString; var data : Slice<GoUInt8>; var values : Slice<AnyInterface>; var generation : GoInt; var isSeed : Bool; }) -> stdgo.Error):stdgo.Error return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).runFuzzWorker(__0) #else null #end;
            __self__.setPanicOnExit0 = #if !macro function(__0:Bool):Void ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).setPanicOnExit0(__0) #else null #end;
            __self__.snapshotCoverage = #if !macro function():Void ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).snapshotCoverage() #else null #end;
            __self__.startCPUProfile = #if !macro function(_w:Writer):stdgo.Error return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).startCPUProfile(_w) #else null #end;
            __self__.startTestLog = #if !macro function(_w:Writer):Void ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).startTestLog(_w) #else null #end;
            __self__.stopCPUProfile = #if !macro function():Void ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).stopCPUProfile() #else null #end;
            __self__.stopTestLog = #if !macro function():stdgo.Error return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).stopTestLog() #else null #end;
            __self__.writeProfileTo = #if !macro function(__0:GoString, __1:Writer, __2:GoInt):stdgo.Error return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).writeProfileTo(__0, __1, __2) #else null #end;
            __self__;
        }, _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ((((("io" : GoString))) : GoString));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

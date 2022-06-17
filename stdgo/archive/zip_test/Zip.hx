package stdgo.archive.zip_test;
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
((new stdgo.testing.Testing.InternalTest(((("TestReader" : GoString))), archive.zip.Zip.testReader) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestInvalidFiles" : GoString))), archive.zip.Zip.testInvalidFiles) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestIssue8186" : GoString))), archive.zip.Zip.testIssue8186) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestIssue10957" : GoString))), archive.zip.Zip.testIssue10957) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestIssue10956" : GoString))), archive.zip.Zip.testIssue10956) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestIssue11146" : GoString))), archive.zip.Zip.testIssue11146) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestIssue12449" : GoString))), archive.zip.Zip.testIssue12449) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestFS" : GoString))), archive.zip.Zip.testFS) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestFSModTime" : GoString))), archive.zip.Zip.testFSModTime) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestCVE202127919" : GoString))), archive.zip.Zip.testCVE202127919) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestCVE202133196" : GoString))), archive.zip.Zip.testCVE202133196) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestCVE202139293" : GoString))), archive.zip.Zip.testCVE202139293) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestCVE202141772" : GoString))), archive.zip.Zip.testCVE202141772) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestWriter" : GoString))), archive.zip.Zip.testWriter) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestWriterComment" : GoString))), archive.zip.Zip.testWriterComment) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestWriterUTF8" : GoString))), archive.zip.Zip.testWriterUTF8) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestWriterTime" : GoString))), archive.zip.Zip.testWriterTime) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestWriterOffset" : GoString))), archive.zip.Zip.testWriterOffset) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestWriterFlush" : GoString))), archive.zip.Zip.testWriterFlush) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestWriterDir" : GoString))), archive.zip.Zip.testWriterDir) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestWriterDirAttributes" : GoString))), archive.zip.Zip.testWriterDirAttributes) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestWriterCopy" : GoString))), archive.zip.Zip.testWriterCopy) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestWriterCreateRaw" : GoString))), archive.zip.Zip.testWriterCreateRaw) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestOver65kFiles" : GoString))), archive.zip.Zip.testOver65kFiles) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestModTime" : GoString))), archive.zip.Zip.testModTime) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestFileHeaderRoundTrip" : GoString))), archive.zip.Zip.testFileHeaderRoundTrip) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestFileHeaderRoundTrip64" : GoString))), archive.zip.Zip.testFileHeaderRoundTrip64) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestFileHeaderRoundTripModified" : GoString))), archive.zip.Zip.testFileHeaderRoundTripModified) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestFileHeaderRoundTripWithoutModified" : GoString))), archive.zip.Zip.testFileHeaderRoundTripWithoutModified) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestRLEBuffer" : GoString))), archive.zip.Zip.testRLEBuffer) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestZip64" : GoString))), archive.zip.Zip.testZip64) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestZip64EdgeCase" : GoString))), archive.zip.Zip.testZip64EdgeCase) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestZip64DirectoryOffset" : GoString))), archive.zip.Zip.testZip64DirectoryOffset) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestZip64ManyRecords" : GoString))), archive.zip.Zip.testZip64ManyRecords) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestZip64LargeDirectory" : GoString))), archive.zip.Zip.testZip64LargeDirectory) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestHeaderInvalidTagAndSize" : GoString))), archive.zip.Zip.testHeaderInvalidTagAndSize) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestHeaderTooShort" : GoString))), archive.zip.Zip.testHeaderTooShort) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestHeaderTooLongErr" : GoString))), archive.zip.Zip.testHeaderTooLongErr) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestHeaderIgnoredSize" : GoString))), archive.zip.Zip.testHeaderIgnoredSize) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestZeroLengthHeader" : GoString))), archive.zip.Zip.testZeroLengthHeader) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestSuffixSaver" : GoString))), archive.zip.Zip.testSuffixSaver) : stdgo.testing.Testing.InternalTest))) : Slice<stdgo.testing.Testing.InternalTest>));
var _benchmarks : Slice<stdgo.testing.Testing.InternalBenchmark> = ((new Slice<stdgo.testing.Testing.InternalBenchmark>(((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkCompressedZipGarbage" : GoString))), archive.zip.Zip.benchmarkCompressedZipGarbage) : stdgo.testing.Testing.InternalBenchmark)), ((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkZip64Test" : GoString))), archive.zip.Zip.benchmarkZip64Test) : stdgo.testing.Testing.InternalBenchmark)), ((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkZip64TestSizes" : GoString))), archive.zip.Zip.benchmarkZip64TestSizes) : stdgo.testing.Testing.InternalBenchmark))) : Slice<stdgo.testing.Testing.InternalBenchmark>));
var _fuzzTargets : Slice<stdgo.testing.Testing.InternalFuzzTarget> = ((new Slice<stdgo.testing.Testing.InternalFuzzTarget>(((new stdgo.testing.Testing.InternalFuzzTarget(((("FuzzReader" : GoString))), archive.zip.Zip.fuzzReader) : stdgo.testing.Testing.InternalFuzzTarget))) : Slice<stdgo.testing.Testing.InternalFuzzTarget>));
var _examples : Slice<stdgo.testing.Testing.InternalExample> = ((new Slice<stdgo.testing.Testing.InternalExample>(((new stdgo.testing.Testing.InternalExample(((("ExampleReader" : GoString))), stdgo.archive.zip_test.Zip_test.exampleReader, ((("Contents of README:\nThis is the source code repository for the Go programming language.\n" : GoString))), false) : stdgo.testing.Testing.InternalExample))) : Slice<stdgo.testing.Testing.InternalExample>));
function main():Void {
        var _m:Ref<stdgo.testing.Testing.M> = stdgo.testing.Testing.mainStart(((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        stdgo.os.Os.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ((("archive/zip" : GoString)));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

package stdgo.archive.tar_test;
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
((new stdgo.testing.Testing.InternalTest(((("TestReader" : GoString))), archive.tar.Tar.testReader) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestPartialRead" : GoString))), archive.tar.Tar.testPartialRead) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestUninitializedRead" : GoString))), archive.tar.Tar.testUninitializedRead) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestReadTruncation" : GoString))), archive.tar.Tar.testReadTruncation) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestReadHeaderOnly" : GoString))), archive.tar.Tar.testReadHeaderOnly) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestMergePAX" : GoString))), archive.tar.Tar.testMergePAX) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestParsePAX" : GoString))), archive.tar.Tar.testParsePAX) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestReadOldGNUSparseMap" : GoString))), archive.tar.Tar.testReadOldGNUSparseMap) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestReadGNUSparsePAXHeaders" : GoString))), archive.tar.Tar.testReadGNUSparsePAXHeaders) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestFileReader" : GoString))), archive.tar.Tar.testFileReader) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestFitsInBase256" : GoString))), archive.tar.Tar.testFitsInBase256) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestParseNumeric" : GoString))), archive.tar.Tar.testParseNumeric) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestFormatNumeric" : GoString))), archive.tar.Tar.testFormatNumeric) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestFitsInOctal" : GoString))), archive.tar.Tar.testFitsInOctal) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestParsePAXTime" : GoString))), archive.tar.Tar.testParsePAXTime) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestFormatPAXTime" : GoString))), archive.tar.Tar.testFormatPAXTime) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestParsePAXRecord" : GoString))), archive.tar.Tar.testParsePAXRecord) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestFormatPAXRecord" : GoString))), archive.tar.Tar.testFormatPAXRecord) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestSparseEntries" : GoString))), archive.tar.Tar.testSparseEntries) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestFileInfoHeader" : GoString))), archive.tar.Tar.testFileInfoHeader) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestFileInfoHeaderDir" : GoString))), archive.tar.Tar.testFileInfoHeaderDir) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestFileInfoHeaderSymlink" : GoString))), archive.tar.Tar.testFileInfoHeaderSymlink) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestRoundTrip" : GoString))), archive.tar.Tar.testRoundTrip) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestHeaderRoundTrip" : GoString))), archive.tar.Tar.testHeaderRoundTrip) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestHeaderAllowedFormats" : GoString))), archive.tar.Tar.testHeaderAllowedFormats) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestWriter" : GoString))), archive.tar.Tar.testWriter) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestPax" : GoString))), archive.tar.Tar.testPax) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestPaxSymlink" : GoString))), archive.tar.Tar.testPaxSymlink) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestPaxNonAscii" : GoString))), archive.tar.Tar.testPaxNonAscii) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestPaxXattrs" : GoString))), archive.tar.Tar.testPaxXattrs) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestPaxHeadersSorted" : GoString))), archive.tar.Tar.testPaxHeadersSorted) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestUSTARLongName" : GoString))), archive.tar.Tar.testUSTARLongName) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestValidTypeflagWithPAXHeader" : GoString))), archive.tar.Tar.testValidTypeflagWithPAXHeader) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestWriterErrors" : GoString))), archive.tar.Tar.testWriterErrors) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestSplitUSTARPath" : GoString))), archive.tar.Tar.testSplitUSTARPath) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestIssue12594" : GoString))), archive.tar.Tar.testIssue12594) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestFileWriter" : GoString))), archive.tar.Tar.testFileWriter) : stdgo.testing.Testing.InternalTest))) : Slice<stdgo.testing.Testing.InternalTest>));
var _benchmarks : Slice<stdgo.testing.Testing.InternalBenchmark> = ((new Slice<stdgo.testing.Testing.InternalBenchmark>(((new stdgo.testing.Testing.InternalBenchmark(((("Benchmark" : GoString))), archive.tar.Tar.benchmark) : stdgo.testing.Testing.InternalBenchmark))) : Slice<stdgo.testing.Testing.InternalBenchmark>));
var _fuzzTargets : Slice<stdgo.testing.Testing.InternalFuzzTarget> = ((new Slice<stdgo.testing.Testing.InternalFuzzTarget>(((new stdgo.testing.Testing.InternalFuzzTarget(((("FuzzReader" : GoString))), archive.tar.Tar.fuzzReader) : stdgo.testing.Testing.InternalFuzzTarget))) : Slice<stdgo.testing.Testing.InternalFuzzTarget>));
var _examples : Slice<stdgo.testing.Testing.InternalExample> = ((new Slice<stdgo.testing.Testing.InternalExample>(((new stdgo.testing.Testing.InternalExample(((("Example_minimal" : GoString))), stdgo.archive.tar_test.Tar_test.example_minimal, ((("Contents of readme.txt:\nThis archive contains some text files.\nContents of gopher.txt:\nGopher names:\nGeorge\nGeoffrey\nGonzo\nContents of todo.txt:\nGet animal handling license.\n" : GoString))), false) : stdgo.testing.Testing.InternalExample))) : Slice<stdgo.testing.Testing.InternalExample>));
function main():Void {
        var _m:Ref<stdgo.testing.Testing.M> = stdgo.testing.Testing.mainStart(((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        stdgo.os.Os.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ((("archive/tar" : GoString)));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

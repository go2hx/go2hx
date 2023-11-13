package stdgo.encoding.binary_test;
import stdgo.encoding.binary.Binary;
/**
    
    
    
**/
var _tests : stdgo.Slice<stdgo.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo.testing.Testing.InternalTest>(
30,
30,
(new stdgo.testing.Testing.InternalTest(("TestLittleEndianRead" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.testLittleEndianRead) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLittleEndianWrite" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.testLittleEndianWrite) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLittleEndianPtrWrite" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.testLittleEndianPtrWrite) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBigEndianRead" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.testBigEndianRead) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBigEndianWrite" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.testBigEndianWrite) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBigEndianPtrWrite" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.testBigEndianPtrWrite) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadSlice" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.testReadSlice) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriteSlice" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.testWriteSlice) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadBool" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.testReadBool) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadBoolSlice" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.testReadBoolSlice) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSliceRoundTrip" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.testSliceRoundTrip) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWriteT" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.testWriteT) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBlankFields" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.testBlankFields) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSizeStructCache" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.testSizeStructCache) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSizeInvalid" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.testSizeInvalid) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnexportedRead" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.testUnexportedRead) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadErrorMsg" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.testReadErrorMsg) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadTruncated" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.testReadTruncated) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestByteOrder" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.testByteOrder) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEarlyBoundsChecks" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.testEarlyBoundsChecks) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReadInvalidDestination" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.testReadInvalidDestination) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNoFixedSize" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.testNoFixedSize) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNativeEndian" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.testNativeEndian) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestConstants" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.testConstants) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestVarint" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.testVarint) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUvarint" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.testUvarint) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBufferTooSmall" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.testBufferTooSmall) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBufferTooBigWithOverflow" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.testBufferTooBigWithOverflow) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestOverflow" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.testOverflow) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNonCanonicalZero" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.testNonCanonicalZero) : stdgo.testing.Testing.InternalTest)) : stdgo.Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
var _benchmarks : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>(
26,
26,
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkReadSlice1000Int32s" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.benchmarkReadSlice1000Int32s) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkReadStruct" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.benchmarkReadStruct) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkWriteStruct" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.benchmarkWriteStruct) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkReadInts" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.benchmarkReadInts) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkWriteInts" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.benchmarkWriteInts) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkWriteSlice1000Int32s" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.benchmarkWriteSlice1000Int32s) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkPutUint16" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.benchmarkPutUint16) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAppendUint16" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.benchmarkAppendUint16) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkPutUint32" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.benchmarkPutUint32) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAppendUint32" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.benchmarkAppendUint32) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkPutUint64" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.benchmarkPutUint64) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkAppendUint64" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.benchmarkAppendUint64) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLittleEndianPutUint16" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.benchmarkLittleEndianPutUint16) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLittleEndianAppendUint16" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.benchmarkLittleEndianAppendUint16) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLittleEndianPutUint32" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.benchmarkLittleEndianPutUint32) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLittleEndianAppendUint32" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.benchmarkLittleEndianAppendUint32) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLittleEndianPutUint64" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.benchmarkLittleEndianPutUint64) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkLittleEndianAppendUint64" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.benchmarkLittleEndianAppendUint64) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkReadFloats" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.benchmarkReadFloats) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkWriteFloats" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.benchmarkWriteFloats) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkReadSlice1000Float32s" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.benchmarkReadSlice1000Float32s) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkWriteSlice1000Float32s" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.benchmarkWriteSlice1000Float32s) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkReadSlice1000Uint8s" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.benchmarkReadSlice1000Uint8s) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkWriteSlice1000Uint8s" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.benchmarkWriteSlice1000Uint8s) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkPutUvarint32" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.benchmarkPutUvarint32) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkPutUvarint64" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary.Binary.benchmarkPutUvarint64) : stdgo.testing.Testing.InternalBenchmark)) : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
var _fuzzTargets : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
var _examples : stdgo.Slice<stdgo.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo.testing.Testing.InternalExample>(
10,
10,
(new stdgo.testing.Testing.InternalExample(("ExampleWrite" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary_test.Binary_test.exampleWrite, ("18 2d 44 54 fb 21 09 40\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleWrite_multi" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary_test.Binary_test.exampleWrite_multi, ("beefcafe\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRead" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary_test.Binary_test.exampleRead, ("3.141592653589793\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleRead_multi" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary_test.Binary_test.exampleRead_multi, ("3.141592653589793\n255\n01 02 03\n61374\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleByteOrder_put" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary_test.Binary_test.exampleByteOrder_put, ("e8 03 d0 07\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleByteOrder_get" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary_test.Binary_test.exampleByteOrder_get, ("0x03e8 0x07d0\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExamplePutUvarint" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary_test.Binary_test.examplePutUvarint, ("01\n02\n7f\n8001\nff01\n8002\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExamplePutVarint" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary_test.Binary_test.examplePutVarint, ("8101\n7f\n03\n01\n00\n02\n04\n7e\n8001\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleUvarint" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary_test.Binary_test.exampleUvarint, ("1\n2\n127\n128\n255\n256\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleVarint" : stdgo.GoString)?.__copy__(), stdgo.encoding.binary_test.Binary_test.exampleVarint, ("-65\n-64\n-2\n-1\n0\n1\n2\n63\n64\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample)) : stdgo.Slice<stdgo.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("encoding/binary" : stdgo.GoString)?.__copy__();
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

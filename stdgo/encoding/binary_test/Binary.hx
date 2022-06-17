package stdgo.encoding.binary_test;
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
((new stdgo.testing.Testing.InternalTest(((("TestLittleEndianRead" : GoString))), stdgo.encoding.binary.Binary.testLittleEndianRead) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestLittleEndianWrite" : GoString))), stdgo.encoding.binary.Binary.testLittleEndianWrite) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestLittleEndianPtrWrite" : GoString))), stdgo.encoding.binary.Binary.testLittleEndianPtrWrite) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestBigEndianRead" : GoString))), stdgo.encoding.binary.Binary.testBigEndianRead) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestBigEndianWrite" : GoString))), stdgo.encoding.binary.Binary.testBigEndianWrite) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestBigEndianPtrWrite" : GoString))), stdgo.encoding.binary.Binary.testBigEndianPtrWrite) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestReadSlice" : GoString))), stdgo.encoding.binary.Binary.testReadSlice) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestWriteSlice" : GoString))), stdgo.encoding.binary.Binary.testWriteSlice) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestReadBool" : GoString))), stdgo.encoding.binary.Binary.testReadBool) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestReadBoolSlice" : GoString))), stdgo.encoding.binary.Binary.testReadBoolSlice) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestSliceRoundTrip" : GoString))), stdgo.encoding.binary.Binary.testSliceRoundTrip) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestWriteT" : GoString))), stdgo.encoding.binary.Binary.testWriteT) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestBlankFields" : GoString))), stdgo.encoding.binary.Binary.testBlankFields) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestSizeStructCache" : GoString))), stdgo.encoding.binary.Binary.testSizeStructCache) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestUnexportedRead" : GoString))), stdgo.encoding.binary.Binary.testUnexportedRead) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestReadErrorMsg" : GoString))), stdgo.encoding.binary.Binary.testReadErrorMsg) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestReadTruncated" : GoString))), stdgo.encoding.binary.Binary.testReadTruncated) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestEarlyBoundsChecks" : GoString))), stdgo.encoding.binary.Binary.testEarlyBoundsChecks) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestReadInvalidDestination" : GoString))), stdgo.encoding.binary.Binary.testReadInvalidDestination) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestConstants" : GoString))), stdgo.encoding.binary.Binary.testConstants) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestVarint" : GoString))), stdgo.encoding.binary.Binary.testVarint) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestUvarint" : GoString))), stdgo.encoding.binary.Binary.testUvarint) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestBufferTooSmall" : GoString))), stdgo.encoding.binary.Binary.testBufferTooSmall) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestBufferTooBigWithOverflow" : GoString))), stdgo.encoding.binary.Binary.testBufferTooBigWithOverflow) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestOverflow" : GoString))), stdgo.encoding.binary.Binary.testOverflow) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestNonCanonicalZero" : GoString))), stdgo.encoding.binary.Binary.testNonCanonicalZero) : stdgo.testing.Testing.InternalTest))) : Slice<stdgo.testing.Testing.InternalTest>));
var _benchmarks : Slice<stdgo.testing.Testing.InternalBenchmark> = ((new Slice<stdgo.testing.Testing.InternalBenchmark>(
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkReadSlice1000Int32s" : GoString))), stdgo.encoding.binary.Binary.benchmarkReadSlice1000Int32s) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkReadStruct" : GoString))), stdgo.encoding.binary.Binary.benchmarkReadStruct) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkWriteStruct" : GoString))), stdgo.encoding.binary.Binary.benchmarkWriteStruct) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkReadInts" : GoString))), stdgo.encoding.binary.Binary.benchmarkReadInts) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkWriteInts" : GoString))), stdgo.encoding.binary.Binary.benchmarkWriteInts) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkWriteSlice1000Int32s" : GoString))), stdgo.encoding.binary.Binary.benchmarkWriteSlice1000Int32s) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkPutUint16" : GoString))), stdgo.encoding.binary.Binary.benchmarkPutUint16) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkPutUint32" : GoString))), stdgo.encoding.binary.Binary.benchmarkPutUint32) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkPutUint64" : GoString))), stdgo.encoding.binary.Binary.benchmarkPutUint64) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkLittleEndianPutUint16" : GoString))), stdgo.encoding.binary.Binary.benchmarkLittleEndianPutUint16) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkLittleEndianPutUint32" : GoString))), stdgo.encoding.binary.Binary.benchmarkLittleEndianPutUint32) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkLittleEndianPutUint64" : GoString))), stdgo.encoding.binary.Binary.benchmarkLittleEndianPutUint64) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkReadFloats" : GoString))), stdgo.encoding.binary.Binary.benchmarkReadFloats) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkWriteFloats" : GoString))), stdgo.encoding.binary.Binary.benchmarkWriteFloats) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkReadSlice1000Float32s" : GoString))), stdgo.encoding.binary.Binary.benchmarkReadSlice1000Float32s) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkWriteSlice1000Float32s" : GoString))), stdgo.encoding.binary.Binary.benchmarkWriteSlice1000Float32s) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkReadSlice1000Uint8s" : GoString))), stdgo.encoding.binary.Binary.benchmarkReadSlice1000Uint8s) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkWriteSlice1000Uint8s" : GoString))), stdgo.encoding.binary.Binary.benchmarkWriteSlice1000Uint8s) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkPutUvarint32" : GoString))), stdgo.encoding.binary.Binary.benchmarkPutUvarint32) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkPutUvarint64" : GoString))), stdgo.encoding.binary.Binary.benchmarkPutUvarint64) : stdgo.testing.Testing.InternalBenchmark))) : Slice<stdgo.testing.Testing.InternalBenchmark>));
var _fuzzTargets : Slice<stdgo.testing.Testing.InternalFuzzTarget> = ((new Slice<stdgo.testing.Testing.InternalFuzzTarget>() : Slice<stdgo.testing.Testing.InternalFuzzTarget>));
var _examples : Slice<stdgo.testing.Testing.InternalExample> = ((new Slice<stdgo.testing.Testing.InternalExample>(((new stdgo.testing.Testing.InternalExample(((("ExampleWrite" : GoString))), stdgo.encoding.binary_test.Binary_test.exampleWrite, ((("18 2d 44 54 fb 21 09 40\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)), ((new stdgo.testing.Testing.InternalExample(((("ExampleWrite_multi" : GoString))), stdgo.encoding.binary_test.Binary_test.exampleWrite_multi, ((("beefcafe\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)), ((new stdgo.testing.Testing.InternalExample(((("ExampleRead" : GoString))), stdgo.encoding.binary_test.Binary_test.exampleRead, ((("3.141592653589793\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)), ((new stdgo.testing.Testing.InternalExample(((("ExampleRead_multi" : GoString))), stdgo.encoding.binary_test.Binary_test.exampleRead_multi, ((("3.141592653589793\n255\n01 02 03\n61374\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)), ((new stdgo.testing.Testing.InternalExample(((("ExampleByteOrder_put" : GoString))), stdgo.encoding.binary_test.Binary_test.exampleByteOrder_put, ((("e8 03 d0 07\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)), ((new stdgo.testing.Testing.InternalExample(((("ExampleByteOrder_get" : GoString))), stdgo.encoding.binary_test.Binary_test.exampleByteOrder_get, ((("0x03e8 0x07d0\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)), ((new stdgo.testing.Testing.InternalExample(((("ExamplePutUvarint" : GoString))), stdgo.encoding.binary_test.Binary_test.examplePutUvarint, ((("01\n02\n7f\n8001\nff01\n8002\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)), ((new stdgo.testing.Testing.InternalExample(((("ExamplePutVarint" : GoString))), stdgo.encoding.binary_test.Binary_test.examplePutVarint, ((("8101\n7f\n03\n01\n00\n02\n04\n7e\n8001\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)), ((new stdgo.testing.Testing.InternalExample(((("ExampleUvarint" : GoString))), stdgo.encoding.binary_test.Binary_test.exampleUvarint, ((("1\n2\n127\n128\n255\n256\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)), ((new stdgo.testing.Testing.InternalExample(((("ExampleVarint" : GoString))), stdgo.encoding.binary_test.Binary_test.exampleVarint, ((("-65\n-64\n-2\n-1\n0\n1\n2\n63\n64\n" : GoString))), false) : stdgo.testing.Testing.InternalExample))) : Slice<stdgo.testing.Testing.InternalExample>));
function main():Void {
        var _m:Ref<stdgo.testing.Testing.M> = stdgo.testing.Testing.mainStart(((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        stdgo.os.Os.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ((("encoding/binary" : GoString)));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

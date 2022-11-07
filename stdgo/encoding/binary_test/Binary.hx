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

private var _tests:Slice<stdgo.testing.Testing.InternalTest> = (new Slice<stdgo.testing.Testing.InternalTest>(0, 0,
	(new stdgo.testing.Testing.InternalTest(Go.str("TestLittleEndianRead"),
		stdgo.encoding.binary.Binary.testLittleEndianRead) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestLittleEndianWrite"),
		stdgo.encoding.binary.Binary.testLittleEndianWrite) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestLittleEndianPtrWrite"),
		stdgo.encoding.binary.Binary.testLittleEndianPtrWrite) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestBigEndianRead"), stdgo.encoding.binary.Binary.testBigEndianRead) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestBigEndianWrite"),
		stdgo.encoding.binary.Binary.testBigEndianWrite) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestBigEndianPtrWrite"),
		stdgo.encoding.binary.Binary.testBigEndianPtrWrite) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestReadSlice"), stdgo.encoding.binary.Binary.testReadSlice) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestWriteSlice"), stdgo.encoding.binary.Binary.testWriteSlice) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestReadBool"), stdgo.encoding.binary.Binary.testReadBool) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestReadBoolSlice"), stdgo.encoding.binary.Binary.testReadBoolSlice) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestSliceRoundTrip"),
		stdgo.encoding.binary.Binary.testSliceRoundTrip) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestWriteT"), stdgo.encoding.binary.Binary.testWriteT) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestBlankFields"), stdgo.encoding.binary.Binary.testBlankFields) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestSizeStructCache"),
		stdgo.encoding.binary.Binary.testSizeStructCache) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestUnexportedRead"),
		stdgo.encoding.binary.Binary.testUnexportedRead) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestReadErrorMsg"), stdgo.encoding.binary.Binary.testReadErrorMsg) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestReadTruncated"), stdgo.encoding.binary.Binary.testReadTruncated) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestByteOrder"), stdgo.encoding.binary.Binary.testByteOrder) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestEarlyBoundsChecks"),
		stdgo.encoding.binary.Binary.testEarlyBoundsChecks) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestReadInvalidDestination"),
		stdgo.encoding.binary.Binary.testReadInvalidDestination) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestConstants"), stdgo.encoding.binary.Binary.testConstants) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestVarint"), stdgo.encoding.binary.Binary.testVarint) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestUvarint"), stdgo.encoding.binary.Binary.testUvarint) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestBufferTooSmall"),
		stdgo.encoding.binary.Binary.testBufferTooSmall) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestBufferTooBigWithOverflow"),
		stdgo.encoding.binary.Binary.testBufferTooBigWithOverflow) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestOverflow"), stdgo.encoding.binary.Binary.testOverflow) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestNonCanonicalZero"),
		stdgo.encoding.binary.Binary.testNonCanonicalZero) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);

private var _benchmarks:Slice<stdgo.testing.Testing.InternalBenchmark> = (new Slice<stdgo.testing.Testing.InternalBenchmark>(0, 0,
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkReadSlice1000Int32s"),
		stdgo.encoding.binary.Binary.benchmarkReadSlice1000Int32s) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkReadStruct"),
		stdgo.encoding.binary.Binary.benchmarkReadStruct) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkWriteStruct"),
		stdgo.encoding.binary.Binary.benchmarkWriteStruct) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkReadInts"),
		stdgo.encoding.binary.Binary.benchmarkReadInts) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkWriteInts"),
		stdgo.encoding.binary.Binary.benchmarkWriteInts) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkWriteSlice1000Int32s"),
		stdgo.encoding.binary.Binary.benchmarkWriteSlice1000Int32s) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkPutUint16"),
		stdgo.encoding.binary.Binary.benchmarkPutUint16) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkAppendUint16"),
		stdgo.encoding.binary.Binary.benchmarkAppendUint16) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkPutUint32"),
		stdgo.encoding.binary.Binary.benchmarkPutUint32) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkAppendUint32"),
		stdgo.encoding.binary.Binary.benchmarkAppendUint32) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkPutUint64"),
		stdgo.encoding.binary.Binary.benchmarkPutUint64) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkAppendUint64"),
		stdgo.encoding.binary.Binary.benchmarkAppendUint64) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkLittleEndianPutUint16"),
		stdgo.encoding.binary.Binary.benchmarkLittleEndianPutUint16) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkLittleEndianAppendUint16"),
		stdgo.encoding.binary.Binary.benchmarkLittleEndianAppendUint16) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkLittleEndianPutUint32"),
		stdgo.encoding.binary.Binary.benchmarkLittleEndianPutUint32) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkLittleEndianAppendUint32"),
		stdgo.encoding.binary.Binary.benchmarkLittleEndianAppendUint32) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkLittleEndianPutUint64"),
		stdgo.encoding.binary.Binary.benchmarkLittleEndianPutUint64) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkLittleEndianAppendUint64"),
		stdgo.encoding.binary.Binary.benchmarkLittleEndianAppendUint64) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkReadFloats"),
		stdgo.encoding.binary.Binary.benchmarkReadFloats) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkWriteFloats"),
		stdgo.encoding.binary.Binary.benchmarkWriteFloats) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkReadSlice1000Float32s"),
		stdgo.encoding.binary.Binary.benchmarkReadSlice1000Float32s) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkWriteSlice1000Float32s"),
		stdgo.encoding.binary.Binary.benchmarkWriteSlice1000Float32s) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkReadSlice1000Uint8s"),
		stdgo.encoding.binary.Binary.benchmarkReadSlice1000Uint8s) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkWriteSlice1000Uint8s"),
		stdgo.encoding.binary.Binary.benchmarkWriteSlice1000Uint8s) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkPutUvarint32"),
		stdgo.encoding.binary.Binary.benchmarkPutUvarint32) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkPutUvarint64"),
		stdgo.encoding.binary.Binary.benchmarkPutUvarint64) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);

private var _fuzzTargets:Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0,
	0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);

private var _examples:Slice<stdgo.testing.Testing.InternalExample> = (new Slice<stdgo.testing.Testing.InternalExample>(0, 0,
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleWrite"), stdgo.encoding.binary_test.Binary_test.exampleWrite,
		Go.str("18 2d 44 54 fb 21 09 40\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleWrite_multi"), stdgo.encoding.binary_test.Binary_test.exampleWrite_multi, Go.str("beefcafe\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleRead"), stdgo.encoding.binary_test.Binary_test.exampleRead, Go.str("3.141592653589793\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleRead_multi"), stdgo.encoding.binary_test.Binary_test.exampleRead_multi,
		Go.str("3.141592653589793\n255\n01 02 03\n61374\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleByteOrder_put"), stdgo.encoding.binary_test.Binary_test.exampleByteOrder_put,
		Go.str("e8 03 d0 07\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleByteOrder_get"), stdgo.encoding.binary_test.Binary_test.exampleByteOrder_get,
		Go.str("0x03e8 0x07d0\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExamplePutUvarint"), stdgo.encoding.binary_test.Binary_test.examplePutUvarint,
		Go.str("01\n02\n7f\n8001\nff01\n8002\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExamplePutVarint"), stdgo.encoding.binary_test.Binary_test.examplePutVarint,
		Go.str("8101\n7f\n03\n01\n00\n02\n04\n7e\n8001\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleUvarint"), stdgo.encoding.binary_test.Binary_test.exampleUvarint,
		Go.str("1\n2\n127\n128\n255\n256\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleVarint"), stdgo.encoding.binary_test.Binary_test.exampleVarint,
		Go.str("-65\n-64\n-2\n-1\n0\n1\n2\n63\n64\n"), false) : stdgo.testing.Testing.InternalExample)) : Slice<stdgo.testing.Testing.InternalExample>);

function main():Void {
	var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)),
		_tests, _benchmarks,
		_fuzzTargets, _examples);
	Sys.exit(_m.run());
}

@:keep var _ = {
	try {
		stdgo.testing.internal.testdeps.Testdeps.importPath = Go.str("encoding/binary");
	} catch (__exception__)
		if (__exception__.message != "__return__")
			throw __exception__;
	true;
};

package stdgo.encoding.gob_test;
import stdgo.encoding.gob.Gob;
/**
    
    
    
**/
var _tests : stdgo.Slice<stdgo.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo.testing.Testing.InternalTest>(
98,
98,
(new stdgo.testing.Testing.InternalTest(("TestUintCodec" : stdgo.GoString), stdgo.encoding.gob.Gob.testUintCodec) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIntCodec" : stdgo.GoString), stdgo.encoding.gob.Gob.testIntCodec) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScalarEncInstructions" : stdgo.GoString), stdgo.encoding.gob.Gob.testScalarEncInstructions) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestScalarDecInstructions" : stdgo.GoString), stdgo.encoding.gob.Gob.testScalarDecInstructions) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEndToEnd" : stdgo.GoString), stdgo.encoding.gob.Gob.testEndToEnd) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestOverflow" : stdgo.GoString), stdgo.encoding.gob.Gob.testOverflow) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNesting" : stdgo.GoString), stdgo.encoding.gob.Gob.testNesting) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAutoIndirection" : stdgo.GoString), stdgo.encoding.gob.Gob.testAutoIndirection) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReorderedFields" : stdgo.GoString), stdgo.encoding.gob.Gob.testReorderedFields) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIgnoredFields" : stdgo.GoString), stdgo.encoding.gob.Gob.testIgnoredFields) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBadRecursiveType" : stdgo.GoString), stdgo.encoding.gob.Gob.testBadRecursiveType) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIndirectSliceMapArray" : stdgo.GoString), stdgo.encoding.gob.Gob.testIndirectSliceMapArray) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestInterface" : stdgo.GoString), stdgo.encoding.gob.Gob.testInterface) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestInterfaceBasic" : stdgo.GoString), stdgo.encoding.gob.Gob.testInterfaceBasic) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestInterfacePointer" : stdgo.GoString), stdgo.encoding.gob.Gob.testInterfacePointer) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIgnoreInterface" : stdgo.GoString), stdgo.encoding.gob.Gob.testIgnoreInterface) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnexportedFields" : stdgo.GoString), stdgo.encoding.gob.Gob.testUnexportedFields) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDebugSingleton" : stdgo.GoString), stdgo.encoding.gob.Gob.testDebugSingleton) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDebugStruct" : stdgo.GoString), stdgo.encoding.gob.Gob.testDebugStruct) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFuzz" : stdgo.GoString), stdgo.encoding.gob.Gob.testFuzz) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFuzzRegressions" : stdgo.GoString), stdgo.encoding.gob.Gob.testFuzzRegressions) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFuzzOneByte" : stdgo.GoString), stdgo.encoding.gob.Gob.testFuzzOneByte) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestErrorInvalidTypeId" : stdgo.GoString), stdgo.encoding.gob.Gob.testErrorInvalidTypeId) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLargeSlice" : stdgo.GoString), stdgo.encoding.gob.Gob.testLargeSlice) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestLocalRemoteTypesMismatch" : stdgo.GoString), stdgo.encoding.gob.Gob.testLocalRemoteTypesMismatch) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBasicEncoderDecoder" : stdgo.GoString), stdgo.encoding.gob.Gob.testBasicEncoderDecoder) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEncodeIntSlice" : stdgo.GoString), stdgo.encoding.gob.Gob.testEncodeIntSlice) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEncoderDecoder" : stdgo.GoString), stdgo.encoding.gob.Gob.testEncoderDecoder) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestWrongTypeDecoder" : stdgo.GoString), stdgo.encoding.gob.Gob.testWrongTypeDecoder) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestUnsupported" : stdgo.GoString), stdgo.encoding.gob.Gob.testUnsupported) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestTypeToPtrType" : stdgo.GoString), stdgo.encoding.gob.Gob.testTypeToPtrType) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPtrTypeToType" : stdgo.GoString), stdgo.encoding.gob.Gob.testPtrTypeToType) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestTypeToPtrPtrPtrPtrType" : stdgo.GoString), stdgo.encoding.gob.Gob.testTypeToPtrPtrPtrPtrType) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSlice" : stdgo.GoString), stdgo.encoding.gob.Gob.testSlice) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestValueError" : stdgo.GoString), stdgo.encoding.gob.Gob.testValueError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestArray" : stdgo.GoString), stdgo.encoding.gob.Gob.testArray) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRecursiveMapType" : stdgo.GoString), stdgo.encoding.gob.Gob.testRecursiveMapType) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRecursiveSliceType" : stdgo.GoString), stdgo.encoding.gob.Gob.testRecursiveSliceType) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDefaultsInArray" : stdgo.GoString), stdgo.encoding.gob.Gob.testDefaultsInArray) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSingletons" : stdgo.GoString), stdgo.encoding.gob.Gob.testSingletons) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStructNonStruct" : stdgo.GoString), stdgo.encoding.gob.Gob.testStructNonStruct) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestInterfaceIndirect" : stdgo.GoString), stdgo.encoding.gob.Gob.testInterfaceIndirect) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDecodeIntoNothing" : stdgo.GoString), stdgo.encoding.gob.Gob.testDecodeIntoNothing) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIgnoreRecursiveType" : stdgo.GoString), stdgo.encoding.gob.Gob.testIgnoreRecursiveType) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNestedInterfaces" : stdgo.GoString), stdgo.encoding.gob.Gob.testNestedInterfaces) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMapBug1" : stdgo.GoString), stdgo.encoding.gob.Gob.testMapBug1) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestGobMapInterfaceEncode" : stdgo.GoString), stdgo.encoding.gob.Gob.testGobMapInterfaceEncode) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSliceReusesMemory" : stdgo.GoString), stdgo.encoding.gob.Gob.testSliceReusesMemory) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBadCount" : stdgo.GoString), stdgo.encoding.gob.Gob.testBadCount) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSequentialDecoder" : stdgo.GoString), stdgo.encoding.gob.Gob.testSequentialDecoder) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestChanFuncIgnored" : stdgo.GoString), stdgo.encoding.gob.Gob.testChanFuncIgnored) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSliceIncompatibility" : stdgo.GoString), stdgo.encoding.gob.Gob.testSliceIncompatibility) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestGobPtrSlices" : stdgo.GoString), stdgo.encoding.gob.Gob.testGobPtrSlices) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestPtrToMapOfMap" : stdgo.GoString), stdgo.encoding.gob.Gob.testPtrToMapOfMap) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCatchInvalidNilValue" : stdgo.GoString), stdgo.encoding.gob.Gob.testCatchInvalidNilValue) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestTopLevelNilPointer" : stdgo.GoString), stdgo.encoding.gob.Gob.testTopLevelNilPointer) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNilPointerPanics" : stdgo.GoString), stdgo.encoding.gob.Gob.testNilPointerPanics) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNilPointerInsideInterface" : stdgo.GoString), stdgo.encoding.gob.Gob.testNilPointerInsideInterface) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMutipleEncodingsOfBadType" : stdgo.GoString), stdgo.encoding.gob.Gob.testMutipleEncodingsOfBadType) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("Test29ElementSlice" : stdgo.GoString), stdgo.encoding.gob.Gob.test29ElementSlice) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestErrorForHugeSlice" : stdgo.GoString), stdgo.encoding.gob.Gob.testErrorForHugeSlice) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBadData" : stdgo.GoString), stdgo.encoding.gob.Gob.testBadData) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDecodeErrorMultipleTypes" : stdgo.GoString), stdgo.encoding.gob.Gob.testDecodeErrorMultipleTypes) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMarshalFloatMap" : stdgo.GoString), stdgo.encoding.gob.Gob.testMarshalFloatMap) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDecodePartial" : stdgo.GoString), stdgo.encoding.gob.Gob.testDecodePartial) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDecoderOverflow" : stdgo.GoString), stdgo.encoding.gob.Gob.testDecoderOverflow) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestGobEncoderField" : stdgo.GoString), stdgo.encoding.gob.Gob.testGobEncoderField) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestGobEncoderValueField" : stdgo.GoString), stdgo.encoding.gob.Gob.testGobEncoderValueField) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestGobEncoderIndirectField" : stdgo.GoString), stdgo.encoding.gob.Gob.testGobEncoderIndirectField) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestGobEncoderArrayField" : stdgo.GoString), stdgo.encoding.gob.Gob.testGobEncoderArrayField) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestGobEncoderIndirectArrayField" : stdgo.GoString), stdgo.encoding.gob.Gob.testGobEncoderIndirectArrayField) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestGobEncoderFieldsOfDifferentType" : stdgo.GoString), stdgo.encoding.gob.Gob.testGobEncoderFieldsOfDifferentType) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestGobEncoderValueEncoder" : stdgo.GoString), stdgo.encoding.gob.Gob.testGobEncoderValueEncoder) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestGobEncoderValueThenPointer" : stdgo.GoString), stdgo.encoding.gob.Gob.testGobEncoderValueThenPointer) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestGobEncoderPointerThenValue" : stdgo.GoString), stdgo.encoding.gob.Gob.testGobEncoderPointerThenValue) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestGobEncoderFieldTypeError" : stdgo.GoString), stdgo.encoding.gob.Gob.testGobEncoderFieldTypeError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestGobEncoderStructSingleton" : stdgo.GoString), stdgo.encoding.gob.Gob.testGobEncoderStructSingleton) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestGobEncoderNonStructSingleton" : stdgo.GoString), stdgo.encoding.gob.Gob.testGobEncoderNonStructSingleton) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestGobEncoderIgnoreStructField" : stdgo.GoString), stdgo.encoding.gob.Gob.testGobEncoderIgnoreStructField) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestGobEncoderIgnoreNonStructField" : stdgo.GoString), stdgo.encoding.gob.Gob.testGobEncoderIgnoreNonStructField) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestGobEncoderIgnoreNilEncoder" : stdgo.GoString), stdgo.encoding.gob.Gob.testGobEncoderIgnoreNilEncoder) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestGobEncoderExtraIndirect" : stdgo.GoString), stdgo.encoding.gob.Gob.testGobEncoderExtraIndirect) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestGobEncodeIsZero" : stdgo.GoString), stdgo.encoding.gob.Gob.testGobEncodeIsZero) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestGobEncodePtrError" : stdgo.GoString), stdgo.encoding.gob.Gob.testGobEncodePtrError) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNetIP" : stdgo.GoString), stdgo.encoding.gob.Gob.testNetIP) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIgnoreDepthLimit" : stdgo.GoString), stdgo.encoding.gob.Gob.testIgnoreDepthLimit) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCountEncodeMallocs" : stdgo.GoString), stdgo.encoding.gob.Gob.testCountEncodeMallocs) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCountDecodeMallocs" : stdgo.GoString), stdgo.encoding.gob.Gob.testCountDecodeMallocs) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBasic" : stdgo.GoString), stdgo.encoding.gob.Gob.testBasic) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReregistration" : stdgo.GoString), stdgo.encoding.gob.Gob.testReregistration) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestArrayType" : stdgo.GoString), stdgo.encoding.gob.Gob.testArrayType) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSliceType" : stdgo.GoString), stdgo.encoding.gob.Gob.testSliceType) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMapType" : stdgo.GoString), stdgo.encoding.gob.Gob.testMapType) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStructType" : stdgo.GoString), stdgo.encoding.gob.Gob.testStructType) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRegistration" : stdgo.GoString), stdgo.encoding.gob.Gob.testRegistration) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRegistrationNaming" : stdgo.GoString), stdgo.encoding.gob.Gob.testRegistrationNaming) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStressParallel" : stdgo.GoString), stdgo.encoding.gob.Gob.testStressParallel) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestTypeRace" : stdgo.GoString), stdgo.encoding.gob.Gob.testTypeRace) : stdgo.testing.Testing.InternalTest)) : stdgo.Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
var _benchmarks : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>(
16,
16,
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkEndToEndPipe" : stdgo.GoString), stdgo.encoding.gob.Gob.benchmarkEndToEndPipe) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkEndToEndByteBuffer" : stdgo.GoString), stdgo.encoding.gob.Gob.benchmarkEndToEndByteBuffer) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkEndToEndSliceByteBuffer" : stdgo.GoString), stdgo.encoding.gob.Gob.benchmarkEndToEndSliceByteBuffer) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkEncodeComplex128Slice" : stdgo.GoString), stdgo.encoding.gob.Gob.benchmarkEncodeComplex128Slice) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkEncodeFloat64Slice" : stdgo.GoString), stdgo.encoding.gob.Gob.benchmarkEncodeFloat64Slice) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkEncodeInt32Slice" : stdgo.GoString), stdgo.encoding.gob.Gob.benchmarkEncodeInt32Slice) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkEncodeStringSlice" : stdgo.GoString), stdgo.encoding.gob.Gob.benchmarkEncodeStringSlice) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkEncodeInterfaceSlice" : stdgo.GoString), stdgo.encoding.gob.Gob.benchmarkEncodeInterfaceSlice) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkDecodeComplex128Slice" : stdgo.GoString), stdgo.encoding.gob.Gob.benchmarkDecodeComplex128Slice) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkDecodeFloat64Slice" : stdgo.GoString), stdgo.encoding.gob.Gob.benchmarkDecodeFloat64Slice) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkDecodeInt32Slice" : stdgo.GoString), stdgo.encoding.gob.Gob.benchmarkDecodeInt32Slice) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkDecodeStringSlice" : stdgo.GoString), stdgo.encoding.gob.Gob.benchmarkDecodeStringSlice) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkDecodeStringsSlice" : stdgo.GoString), stdgo.encoding.gob.Gob.benchmarkDecodeStringsSlice) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkDecodeBytesSlice" : stdgo.GoString), stdgo.encoding.gob.Gob.benchmarkDecodeBytesSlice) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkDecodeInterfaceSlice" : stdgo.GoString), stdgo.encoding.gob.Gob.benchmarkDecodeInterfaceSlice) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkDecodeMap" : stdgo.GoString), stdgo.encoding.gob.Gob.benchmarkDecodeMap) : stdgo.testing.Testing.InternalBenchmark)) : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
var _fuzzTargets : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
var _examples : stdgo.Slice<stdgo.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo.testing.Testing.InternalExample>(3, 3, (new stdgo.testing.Testing.InternalExample(("Example_encodeDecode" : stdgo.GoString), stdgo.encoding.gob_test.Gob_test.example_encodeDecode, ("{3 4 5}\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("Example_interface" : stdgo.GoString), stdgo.encoding.gob_test.Gob_test.example_interface, ("5\n10\n15\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample), (new stdgo.testing.Testing.InternalExample(("Example_basic" : stdgo.GoString), stdgo.encoding.gob_test.Gob_test.example_basic, ("\"Pythagoras\": {3, 4}\n\"Treehouse\": {1782, 1841}\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample)) : stdgo.Slice<stdgo.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("encoding/gob" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

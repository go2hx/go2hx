package stdgo.encoding.gob_test;
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
((new stdgo.testing.Testing.InternalTest(((("TestUintCodec" : GoString))), encoding.gob.Gob.testUintCodec) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestIntCodec" : GoString))), encoding.gob.Gob.testIntCodec) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestScalarEncInstructions" : GoString))), encoding.gob.Gob.testScalarEncInstructions) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestScalarDecInstructions" : GoString))), encoding.gob.Gob.testScalarDecInstructions) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestEndToEnd" : GoString))), encoding.gob.Gob.testEndToEnd) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestOverflow" : GoString))), encoding.gob.Gob.testOverflow) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestNesting" : GoString))), encoding.gob.Gob.testNesting) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestAutoIndirection" : GoString))), encoding.gob.Gob.testAutoIndirection) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestReorderedFields" : GoString))), encoding.gob.Gob.testReorderedFields) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestIgnoredFields" : GoString))), encoding.gob.Gob.testIgnoredFields) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestBadRecursiveType" : GoString))), encoding.gob.Gob.testBadRecursiveType) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestIndirectSliceMapArray" : GoString))), encoding.gob.Gob.testIndirectSliceMapArray) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestInterface" : GoString))), encoding.gob.Gob.testInterface) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestInterfaceBasic" : GoString))), encoding.gob.Gob.testInterfaceBasic) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestInterfacePointer" : GoString))), encoding.gob.Gob.testInterfacePointer) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestIgnoreInterface" : GoString))), encoding.gob.Gob.testIgnoreInterface) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestUnexportedFields" : GoString))), encoding.gob.Gob.testUnexportedFields) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestDebugSingleton" : GoString))), encoding.gob.Gob.testDebugSingleton) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestDebugStruct" : GoString))), encoding.gob.Gob.testDebugStruct) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestFuzz" : GoString))), encoding.gob.Gob.testFuzz) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestFuzzRegressions" : GoString))), encoding.gob.Gob.testFuzzRegressions) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestFuzzOneByte" : GoString))), encoding.gob.Gob.testFuzzOneByte) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestErrorInvalidTypeId" : GoString))), encoding.gob.Gob.testErrorInvalidTypeId) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestBasicEncoderDecoder" : GoString))), encoding.gob.Gob.testBasicEncoderDecoder) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestEncodeIntSlice" : GoString))), encoding.gob.Gob.testEncodeIntSlice) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestEncoderDecoder" : GoString))), encoding.gob.Gob.testEncoderDecoder) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestWrongTypeDecoder" : GoString))), encoding.gob.Gob.testWrongTypeDecoder) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestUnsupported" : GoString))), encoding.gob.Gob.testUnsupported) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestTypeToPtrType" : GoString))), encoding.gob.Gob.testTypeToPtrType) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestPtrTypeToType" : GoString))), encoding.gob.Gob.testPtrTypeToType) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestTypeToPtrPtrPtrPtrType" : GoString))), encoding.gob.Gob.testTypeToPtrPtrPtrPtrType) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestSlice" : GoString))), encoding.gob.Gob.testSlice) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestValueError" : GoString))), encoding.gob.Gob.testValueError) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestArray" : GoString))), encoding.gob.Gob.testArray) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestRecursiveMapType" : GoString))), encoding.gob.Gob.testRecursiveMapType) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestRecursiveSliceType" : GoString))), encoding.gob.Gob.testRecursiveSliceType) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestDefaultsInArray" : GoString))), encoding.gob.Gob.testDefaultsInArray) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestSingletons" : GoString))), encoding.gob.Gob.testSingletons) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestStructNonStruct" : GoString))), encoding.gob.Gob.testStructNonStruct) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestInterfaceIndirect" : GoString))), encoding.gob.Gob.testInterfaceIndirect) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestDecodeIntoNothing" : GoString))), encoding.gob.Gob.testDecodeIntoNothing) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestIgnoreRecursiveType" : GoString))), encoding.gob.Gob.testIgnoreRecursiveType) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestNestedInterfaces" : GoString))), encoding.gob.Gob.testNestedInterfaces) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestMapBug1" : GoString))), encoding.gob.Gob.testMapBug1) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestGobMapInterfaceEncode" : GoString))), encoding.gob.Gob.testGobMapInterfaceEncode) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestSliceReusesMemory" : GoString))), encoding.gob.Gob.testSliceReusesMemory) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestBadCount" : GoString))), encoding.gob.Gob.testBadCount) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestSequentialDecoder" : GoString))), encoding.gob.Gob.testSequentialDecoder) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestChanFuncIgnored" : GoString))), encoding.gob.Gob.testChanFuncIgnored) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestSliceIncompatibility" : GoString))), encoding.gob.Gob.testSliceIncompatibility) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestGobPtrSlices" : GoString))), encoding.gob.Gob.testGobPtrSlices) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestPtrToMapOfMap" : GoString))), encoding.gob.Gob.testPtrToMapOfMap) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestCatchInvalidNilValue" : GoString))), encoding.gob.Gob.testCatchInvalidNilValue) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestTopLevelNilPointer" : GoString))), encoding.gob.Gob.testTopLevelNilPointer) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestNilPointerPanics" : GoString))), encoding.gob.Gob.testNilPointerPanics) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestNilPointerInsideInterface" : GoString))), encoding.gob.Gob.testNilPointerInsideInterface) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestMutipleEncodingsOfBadType" : GoString))), encoding.gob.Gob.testMutipleEncodingsOfBadType) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("Test29ElementSlice" : GoString))), encoding.gob.Gob.test29ElementSlice) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestErrorForHugeSlice" : GoString))), encoding.gob.Gob.testErrorForHugeSlice) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestBadData" : GoString))), encoding.gob.Gob.testBadData) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestDecodeErrorMultipleTypes" : GoString))), encoding.gob.Gob.testDecodeErrorMultipleTypes) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestMarshalFloatMap" : GoString))), encoding.gob.Gob.testMarshalFloatMap) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestDecodePartial" : GoString))), encoding.gob.Gob.testDecodePartial) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestGobEncoderField" : GoString))), encoding.gob.Gob.testGobEncoderField) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestGobEncoderValueField" : GoString))), encoding.gob.Gob.testGobEncoderValueField) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestGobEncoderIndirectField" : GoString))), encoding.gob.Gob.testGobEncoderIndirectField) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestGobEncoderArrayField" : GoString))), encoding.gob.Gob.testGobEncoderArrayField) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestGobEncoderIndirectArrayField" : GoString))), encoding.gob.Gob.testGobEncoderIndirectArrayField) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestGobEncoderFieldsOfDifferentType" : GoString))), encoding.gob.Gob.testGobEncoderFieldsOfDifferentType) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestGobEncoderValueEncoder" : GoString))), encoding.gob.Gob.testGobEncoderValueEncoder) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestGobEncoderValueThenPointer" : GoString))), encoding.gob.Gob.testGobEncoderValueThenPointer) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestGobEncoderPointerThenValue" : GoString))), encoding.gob.Gob.testGobEncoderPointerThenValue) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestGobEncoderFieldTypeError" : GoString))), encoding.gob.Gob.testGobEncoderFieldTypeError) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestGobEncoderStructSingleton" : GoString))), encoding.gob.Gob.testGobEncoderStructSingleton) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestGobEncoderNonStructSingleton" : GoString))), encoding.gob.Gob.testGobEncoderNonStructSingleton) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestGobEncoderIgnoreStructField" : GoString))), encoding.gob.Gob.testGobEncoderIgnoreStructField) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestGobEncoderIgnoreNonStructField" : GoString))), encoding.gob.Gob.testGobEncoderIgnoreNonStructField) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestGobEncoderIgnoreNilEncoder" : GoString))), encoding.gob.Gob.testGobEncoderIgnoreNilEncoder) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestGobEncoderExtraIndirect" : GoString))), encoding.gob.Gob.testGobEncoderExtraIndirect) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestGobEncodeIsZero" : GoString))), encoding.gob.Gob.testGobEncodeIsZero) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestGobEncodePtrError" : GoString))), encoding.gob.Gob.testGobEncodePtrError) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestNetIP" : GoString))), encoding.gob.Gob.testNetIP) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestCountEncodeMallocs" : GoString))), encoding.gob.Gob.testCountEncodeMallocs) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestCountDecodeMallocs" : GoString))), encoding.gob.Gob.testCountDecodeMallocs) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestBasic" : GoString))), encoding.gob.Gob.testBasic) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestReregistration" : GoString))), encoding.gob.Gob.testReregistration) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestArrayType" : GoString))), encoding.gob.Gob.testArrayType) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestSliceType" : GoString))), encoding.gob.Gob.testSliceType) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestMapType" : GoString))), encoding.gob.Gob.testMapType) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestStructType" : GoString))), encoding.gob.Gob.testStructType) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestRegistration" : GoString))), encoding.gob.Gob.testRegistration) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestRegistrationNaming" : GoString))), encoding.gob.Gob.testRegistrationNaming) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestStressParallel" : GoString))), encoding.gob.Gob.testStressParallel) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestTypeRace" : GoString))), encoding.gob.Gob.testTypeRace) : stdgo.testing.Testing.InternalTest))) : Slice<stdgo.testing.Testing.InternalTest>));
var _benchmarks : Slice<stdgo.testing.Testing.InternalBenchmark> = ((new Slice<stdgo.testing.Testing.InternalBenchmark>(
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkEndToEndPipe" : GoString))), encoding.gob.Gob.benchmarkEndToEndPipe) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkEndToEndByteBuffer" : GoString))), encoding.gob.Gob.benchmarkEndToEndByteBuffer) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkEndToEndSliceByteBuffer" : GoString))), encoding.gob.Gob.benchmarkEndToEndSliceByteBuffer) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkEncodeComplex128Slice" : GoString))), encoding.gob.Gob.benchmarkEncodeComplex128Slice) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkEncodeFloat64Slice" : GoString))), encoding.gob.Gob.benchmarkEncodeFloat64Slice) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkEncodeInt32Slice" : GoString))), encoding.gob.Gob.benchmarkEncodeInt32Slice) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkEncodeStringSlice" : GoString))), encoding.gob.Gob.benchmarkEncodeStringSlice) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkEncodeInterfaceSlice" : GoString))), encoding.gob.Gob.benchmarkEncodeInterfaceSlice) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkDecodeComplex128Slice" : GoString))), encoding.gob.Gob.benchmarkDecodeComplex128Slice) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkDecodeFloat64Slice" : GoString))), encoding.gob.Gob.benchmarkDecodeFloat64Slice) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkDecodeInt32Slice" : GoString))), encoding.gob.Gob.benchmarkDecodeInt32Slice) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkDecodeStringSlice" : GoString))), encoding.gob.Gob.benchmarkDecodeStringSlice) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkDecodeStringsSlice" : GoString))), encoding.gob.Gob.benchmarkDecodeStringsSlice) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkDecodeBytesSlice" : GoString))), encoding.gob.Gob.benchmarkDecodeBytesSlice) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkDecodeInterfaceSlice" : GoString))), encoding.gob.Gob.benchmarkDecodeInterfaceSlice) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkDecodeMap" : GoString))), encoding.gob.Gob.benchmarkDecodeMap) : stdgo.testing.Testing.InternalBenchmark))) : Slice<stdgo.testing.Testing.InternalBenchmark>));
var _fuzzTargets : Slice<stdgo.testing.Testing.InternalFuzzTarget> = ((new Slice<stdgo.testing.Testing.InternalFuzzTarget>() : Slice<stdgo.testing.Testing.InternalFuzzTarget>));
var _examples : Slice<stdgo.testing.Testing.InternalExample> = ((new Slice<stdgo.testing.Testing.InternalExample>(((new stdgo.testing.Testing.InternalExample(((("Example_encodeDecode" : GoString))), stdgo.encoding.gob_test.Gob_test.example_encodeDecode, ((("{3 4 5}\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)), ((new stdgo.testing.Testing.InternalExample(((("Example_interface" : GoString))), stdgo.encoding.gob_test.Gob_test.example_interface, ((("5\n10\n15\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)), ((new stdgo.testing.Testing.InternalExample(((("Example_basic" : GoString))), stdgo.encoding.gob_test.Gob_test.example_basic, ((("\"Pythagoras\": {3, 4}\n\"Treehouse\": {1782, 1841}\n" : GoString))), false) : stdgo.testing.Testing.InternalExample))) : Slice<stdgo.testing.Testing.InternalExample>));
function main():Void {
        var _m:stdgo.testing.Testing.M = stdgo.testing.Testing.mainStart(((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        stdgo.os.Os.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ((("encoding/gob" : GoString)));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

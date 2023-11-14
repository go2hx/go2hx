package stdgo.slices_test;
import stdgo.slices.Slices;
/**
    
    
    
**/
var _tests : stdgo.Slice<stdgo.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo.testing.Testing.InternalTest>(
43,
43,
(new stdgo.testing.Testing.InternalTest(("TestEqual" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.testEqual) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestEqualFunc" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.testEqualFunc) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCompare" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.testCompare) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCompareFunc" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.testCompareFunc) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIndex" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.testIndex) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIndexFunc" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.testIndexFunc) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestContains" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.testContains) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestContainsFunc" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.testContainsFunc) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestInsert" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.testInsert) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestInsertOverlap" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.testInsertOverlap) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDelete" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.testDelete) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDeleteFunc" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.testDeleteFunc) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestDeletePanics" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.testDeletePanics) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestClone" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.testClone) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCompact" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.testCompact) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCompactFunc" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.testCompactFunc) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestGrow" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.testGrow) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestClip" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.testClip) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReverse" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.testReverse) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReplace" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.testReplace) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReplacePanics" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.testReplacePanics) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReplaceOverlap" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.testReplaceOverlap) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestRotate" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.testRotate) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestInsertGrowthRate" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.testInsertGrowthRate) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReplaceGrowthRate" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.testReplaceGrowthRate) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestInference" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.testInference) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestIntSorts" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.testIntSorts) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStringSorts" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.testStringSorts) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStructSorts" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.testStructSorts) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSortIntSlice" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.testSortIntSlice) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSortFuncIntSlice" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.testSortFuncIntSlice) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSortFloat64Slice" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.testSortFloat64Slice) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSortFloat64SliceWithNaNs" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.testSortFloat64SliceWithNaNs) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSortStringSlice" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.testSortStringSlice) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSortLarge_Random" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.testSortLarge_Random) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStability" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.testStability) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMinMax" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.testMinMax) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMinMaxNaNs" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.testMinMaxNaNs) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestMinMaxPanics" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.testMinMaxPanics) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBinarySearch" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.testBinarySearch) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBinarySearchInts" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.testBinarySearchInts) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBinarySearchFloats" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.testBinarySearchFloats) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBinarySearchFunc" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.testBinarySearchFunc) : stdgo.testing.Testing.InternalTest)) : stdgo.Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
var _benchmarks : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>(
21,
21,
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkEqualFunc_Large" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.benchmarkEqualFunc_Large) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkIndex_Large" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.benchmarkIndex_Large) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkIndexFunc_Large" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.benchmarkIndexFunc_Large) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCompact" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.benchmarkCompact) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCompact_Large" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.benchmarkCompact_Large) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkCompactFunc_Large" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.benchmarkCompactFunc_Large) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkReplace" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.benchmarkReplace) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSortInts" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.benchmarkSortInts) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSlicesSortInts" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.benchmarkSlicesSortInts) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSlicesSortInts_Sorted" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.benchmarkSlicesSortInts_Sorted) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSlicesSortInts_Reversed" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.benchmarkSlicesSortInts_Reversed) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkIntsAreSorted" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.benchmarkIntsAreSorted) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkIsSorted" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.benchmarkIsSorted) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSortStrings" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.benchmarkSortStrings) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSortStrings_Sorted" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.benchmarkSortStrings_Sorted) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSlicesSortStrings" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.benchmarkSlicesSortStrings) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSlicesSortStrings_Sorted" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.benchmarkSlicesSortStrings_Sorted) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSortStructs" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.benchmarkSortStructs) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSortFuncStructs" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.benchmarkSortFuncStructs) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkBinarySearchFloats" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.benchmarkBinarySearchFloats) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkBinarySearchFuncStruct" : stdgo.GoString)?.__copy__(), stdgo.slices.Slices.benchmarkBinarySearchFuncStruct) : stdgo.testing.Testing.InternalBenchmark)) : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
var _fuzzTargets : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
var _examples : stdgo.Slice<stdgo.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo.testing.Testing.InternalExample>(
26,
26,
(new stdgo.testing.Testing.InternalExample(("ExampleBinarySearch" : stdgo.GoString)?.__copy__(), stdgo.slices_test.Slices_test.exampleBinarySearch, ("Vera: 2 true\nBill: 1 false\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleBinarySearchFunc" : stdgo.GoString)?.__copy__(), stdgo.slices_test.Slices_test.exampleBinarySearchFunc, ("Bob: 1 true\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleCompact" : stdgo.GoString)?.__copy__(), stdgo.slices_test.Slices_test.exampleCompact, ("[0 1 2 3 5 8]\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleCompactFunc" : stdgo.GoString)?.__copy__(), stdgo.slices_test.Slices_test.exampleCompactFunc, ("[bob alice Vera]\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleCompare" : stdgo.GoString)?.__copy__(), stdgo.slices_test.Slices_test.exampleCompare, ("Equal: 0\nV < X: -1\nV > C: 1\n3 > 2: 1\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleCompareFunc" : stdgo.GoString)?.__copy__(), stdgo.slices_test.Slices_test.exampleCompareFunc, ("1\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleContainsFunc" : stdgo.GoString)?.__copy__(), stdgo.slices_test.Slices_test.exampleContainsFunc, ("Has a negative: true\nHas an odd number: false\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleDelete" : stdgo.GoString)?.__copy__(), stdgo.slices_test.Slices_test.exampleDelete, ("[a e]\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleDeleteFunc" : stdgo.GoString)?.__copy__(), stdgo.slices_test.Slices_test.exampleDeleteFunc, ("[0 2 8]\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleEqual" : stdgo.GoString)?.__copy__(), stdgo.slices_test.Slices_test.exampleEqual, ("true\nfalse\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleEqualFunc" : stdgo.GoString)?.__copy__(), stdgo.slices_test.Slices_test.exampleEqualFunc, ("true\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleIndex" : stdgo.GoString)?.__copy__(), stdgo.slices_test.Slices_test.exampleIndex, ("2\n-1\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleIndexFunc" : stdgo.GoString)?.__copy__(), stdgo.slices_test.Slices_test.exampleIndexFunc, ("First negative at index 2\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleInsert" : stdgo.GoString)?.__copy__(), stdgo.slices_test.Slices_test.exampleInsert, ("[Alice Bill Billie Bob Vera Zac]\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleIsSorted" : stdgo.GoString)?.__copy__(), stdgo.slices_test.Slices_test.exampleIsSorted, ("true\nfalse\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleIsSortedFunc" : stdgo.GoString)?.__copy__(), stdgo.slices_test.Slices_test.exampleIsSortedFunc, ("true\nfalse\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleMax" : stdgo.GoString)?.__copy__(), stdgo.slices_test.Slices_test.exampleMax, ("42\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleMaxFunc" : stdgo.GoString)?.__copy__(), stdgo.slices_test.Slices_test.exampleMaxFunc, ("Alice\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleMin" : stdgo.GoString)?.__copy__(), stdgo.slices_test.Slices_test.exampleMin, ("-10\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleMinFunc" : stdgo.GoString)?.__copy__(), stdgo.slices_test.Slices_test.exampleMinFunc, ("Bob\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleReplace" : stdgo.GoString)?.__copy__(), stdgo.slices_test.Slices_test.exampleReplace, ("[Alice Bill Billie Cat Zac]\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleReverse" : stdgo.GoString)?.__copy__(), stdgo.slices_test.Slices_test.exampleReverse, ("[VERA Bob alice]\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleSort" : stdgo.GoString)?.__copy__(), stdgo.slices_test.Slices_test.exampleSort, ("[-10 0 8 42]\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleSortFunc_caseInsensitive" : stdgo.GoString)?.__copy__(), stdgo.slices_test.Slices_test.exampleSortFunc_caseInsensitive, ("[alice Bob VERA]\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleSortFunc_multiField" : stdgo.GoString)?.__copy__(), stdgo.slices_test.Slices_test.exampleSortFunc_multiField, ("[{Alice 20} {Alice 55} {Bob 24} {Gopher 13}]\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleSortStableFunc" : stdgo.GoString)?.__copy__(), stdgo.slices_test.Slices_test.exampleSortStableFunc, ("[{Alice 20} {Alice 55} {Bob 24} {Gopher 13}]\n" : stdgo.GoString)?.__copy__(), false) : stdgo.testing.Testing.InternalExample)) : stdgo.Slice<stdgo.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("slices" : stdgo.GoString)?.__copy__();
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

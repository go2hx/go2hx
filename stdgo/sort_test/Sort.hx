package stdgo.sort_test;
import stdgo.sort.Sort;
import stdgo.sort.Sort;
/**
    
    
    
**/
var _tests : stdgo.Slice<stdgo.testing.Testing.InternalTest> = (new stdgo.Slice<stdgo.testing.Testing.InternalTest>(
27,
27,
(new stdgo.testing.Testing.InternalTest(("TestSearch" : stdgo.GoString), stdgo.sort_test.Sort_test.testSearch) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFind" : stdgo.GoString), stdgo.sort_test.Sort_test.testFind) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSearchEfficiency" : stdgo.GoString), stdgo.sort_test.Sort_test.testSearchEfficiency) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSearchWrappers" : stdgo.GoString), stdgo.sort_test.Sort_test.testSearchWrappers) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSearchWrappersDontAlloc" : stdgo.GoString), stdgo.sort_test.Sort_test.testSearchWrappersDontAlloc) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSearchExhaustive" : stdgo.GoString), stdgo.sort_test.Sort_test.testSearchExhaustive) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFindExhaustive" : stdgo.GoString), stdgo.sort_test.Sort_test.testFindExhaustive) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSortIntSlice" : stdgo.GoString), stdgo.sort_test.Sort_test.testSortIntSlice) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSortFloat64Slice" : stdgo.GoString), stdgo.sort_test.Sort_test.testSortFloat64Slice) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSortStringSlice" : stdgo.GoString), stdgo.sort_test.Sort_test.testSortStringSlice) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestInts" : stdgo.GoString), stdgo.sort_test.Sort_test.testInts) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestFloat64s" : stdgo.GoString), stdgo.sort_test.Sort_test.testFloat64s) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStrings" : stdgo.GoString), stdgo.sort_test.Sort_test.testStrings) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSlice" : stdgo.GoString), stdgo.sort_test.Sort_test.testSlice) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSortLarge_Random" : stdgo.GoString), stdgo.sort_test.Sort_test.testSortLarge_Random) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReverseSortIntSlice" : stdgo.GoString), stdgo.sort_test.Sort_test.testReverseSortIntSlice) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestBreakPatterns" : stdgo.GoString), stdgo.sort_test.Sort_test.testBreakPatterns) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestReverseRange" : stdgo.GoString), stdgo.sort_test.Sort_test.testReverseRange) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestNonDeterministicComparison" : stdgo.GoString), stdgo.sort_test.Sort_test.testNonDeterministicComparison) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestSortBM" : stdgo.GoString), stdgo.sort_test.Sort_test.testSortBM) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestHeapsortBM" : stdgo.GoString), stdgo.sort_test.Sort_test.testHeapsortBM) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStableBM" : stdgo.GoString), stdgo.sort_test.Sort_test.testStableBM) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestAdversary" : stdgo.GoString), stdgo.sort_test.Sort_test.testAdversary) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStableInts" : stdgo.GoString), stdgo.sort_test.Sort_test.testStableInts) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestStability" : stdgo.GoString), stdgo.sort_test.Sort_test.testStability) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCountStableOps" : stdgo.GoString), stdgo.sort_test.Sort_test.testCountStableOps) : stdgo.testing.Testing.InternalTest),
(new stdgo.testing.Testing.InternalTest(("TestCountSortOps" : stdgo.GoString), stdgo.sort_test.Sort_test.testCountSortOps) : stdgo.testing.Testing.InternalTest)) : stdgo.Slice<stdgo.testing.Testing.InternalTest>);
/**
    
    
    
**/
var _benchmarks : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark> = (new stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>(
19,
19,
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSearchWrappers" : stdgo.GoString), stdgo.sort_test.Sort_test.benchmarkSearchWrappers) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSortString1K" : stdgo.GoString), stdgo.sort_test.Sort_test.benchmarkSortString1K) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSortString1K_Slice" : stdgo.GoString), stdgo.sort_test.Sort_test.benchmarkSortString1K_Slice) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkStableString1K" : stdgo.GoString), stdgo.sort_test.Sort_test.benchmarkStableString1K) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSortInt1K" : stdgo.GoString), stdgo.sort_test.Sort_test.benchmarkSortInt1K) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSortInt1K_Sorted" : stdgo.GoString), stdgo.sort_test.Sort_test.benchmarkSortInt1K_Sorted) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSortInt1K_Reversed" : stdgo.GoString), stdgo.sort_test.Sort_test.benchmarkSortInt1K_Reversed) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSortInt1K_Mod8" : stdgo.GoString), stdgo.sort_test.Sort_test.benchmarkSortInt1K_Mod8) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkStableInt1K" : stdgo.GoString), stdgo.sort_test.Sort_test.benchmarkStableInt1K) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkStableInt1K_Slice" : stdgo.GoString), stdgo.sort_test.Sort_test.benchmarkStableInt1K_Slice) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSortInt64K" : stdgo.GoString), stdgo.sort_test.Sort_test.benchmarkSortInt64K) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSortInt64K_Slice" : stdgo.GoString), stdgo.sort_test.Sort_test.benchmarkSortInt64K_Slice) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkStableInt64K" : stdgo.GoString), stdgo.sort_test.Sort_test.benchmarkStableInt64K) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSort1e2" : stdgo.GoString), stdgo.sort_test.Sort_test.benchmarkSort1e2) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkStable1e2" : stdgo.GoString), stdgo.sort_test.Sort_test.benchmarkStable1e2) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSort1e4" : stdgo.GoString), stdgo.sort_test.Sort_test.benchmarkSort1e4) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkStable1e4" : stdgo.GoString), stdgo.sort_test.Sort_test.benchmarkStable1e4) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSort1e6" : stdgo.GoString), stdgo.sort_test.Sort_test.benchmarkSort1e6) : stdgo.testing.Testing.InternalBenchmark),
(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkStable1e6" : stdgo.GoString), stdgo.sort_test.Sort_test.benchmarkStable1e6) : stdgo.testing.Testing.InternalBenchmark)) : stdgo.Slice<stdgo.testing.Testing.InternalBenchmark>);
/**
    
    
    
**/
var _fuzzTargets : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>(0, 0) : stdgo.Slice<stdgo.testing.Testing.InternalFuzzTarget>);
/**
    
    
    
**/
var _examples : stdgo.Slice<stdgo.testing.Testing.InternalExample> = (new stdgo.Slice<stdgo.testing.Testing.InternalExample>(
16,
16,
(new stdgo.testing.Testing.InternalExample(("Example" : stdgo.GoString), stdgo.sort_test.Sort_test.example, ("[Bob: 31 John: 42 Michael: 17 Jenny: 26]\n[Michael: 17 Jenny: 26 Bob: 31 John: 42]\n[John: 42 Bob: 31 Jenny: 26 Michael: 17]\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("Example_sortKeys" : stdgo.GoString), stdgo.sort_test.Sort_test.example_sortKeys, ("By name: [{Earth 1 1} {Mars 0.107 1.5} {Mercury 0.055 0.4} {Venus 0.815 0.7}]\nBy mass: [{Mercury 0.055 0.4} {Mars 0.107 1.5} {Venus 0.815 0.7} {Earth 1 1}]\nBy distance: [{Mercury 0.055 0.4} {Venus 0.815 0.7} {Earth 1 1} {Mars 0.107 1.5}]\nBy decreasing distance: [{Mars 0.107 1.5} {Earth 1 1} {Venus 0.815 0.7} {Mercury 0.055 0.4}]\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("Example_sortMultiKeys" : stdgo.GoString), stdgo.sort_test.Sort_test.example_sortMultiKeys, ("By user: [{dmr C 100} {glenda Go 200} {gri Go 100} {gri Smalltalk 80} {ken C 150} {ken Go 200} {r Go 100} {r C 150} {rsc Go 200}]\nBy user,<lines: [{dmr C 100} {glenda Go 200} {gri Smalltalk 80} {gri Go 100} {ken C 150} {ken Go 200} {r Go 100} {r C 150} {rsc Go 200}]\nBy user,>lines: [{dmr C 100} {glenda Go 200} {gri Go 100} {gri Smalltalk 80} {ken Go 200} {ken C 150} {r C 150} {r Go 100} {rsc Go 200}]\nBy language,<lines: [{dmr C 100} {ken C 150} {r C 150} {gri Go 100} {r Go 100} {glenda Go 200} {ken Go 200} {rsc Go 200} {gri Smalltalk 80}]\nBy language,<lines,user: [{dmr C 100} {ken C 150} {r C 150} {gri Go 100} {r Go 100} {glenda Go 200} {ken Go 200} {rsc Go 200} {gri Smalltalk 80}]\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleSearch" : stdgo.GoString), stdgo.sort_test.Sort_test.exampleSearch, ("found 6 at index 2 in [1 3 6 10 15 21 28 36 45 55]\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleSearch_descendingOrder" : stdgo.GoString), stdgo.sort_test.Sort_test.exampleSearch_descendingOrder, ("found 6 at index 7 in [55 45 36 28 21 15 10 6 3 1]\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleSearchFloat64s" : stdgo.GoString), stdgo.sort_test.Sort_test.exampleSearchFloat64s, ("found 2 at index 1 in [1 2 3.3 4.6 6.1 7.2 8]\n0.5 not found, can be inserted at index 0 in [1 2 3.3 4.6 6.1 7.2 8]\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleSearchInts" : stdgo.GoString), stdgo.sort_test.Sort_test.exampleSearchInts, ("found 2 at index 1 in [1 2 3 4 6 7 8]\n5 not found, can be inserted at index 4 in [1 2 3 4 6 7 8]\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleInts" : stdgo.GoString), stdgo.sort_test.Sort_test.exampleInts, ("[1 2 3 4 5 6]\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleIntsAreSorted" : stdgo.GoString), stdgo.sort_test.Sort_test.exampleIntsAreSorted, ("true\nfalse\nfalse\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleFloat64s" : stdgo.GoString), stdgo.sort_test.Sort_test.exampleFloat64s, ("[-3.8 -1.3 0.7 2.6 5.2]\n[NaN -Inf 0 +Inf]\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleFloat64sAreSorted" : stdgo.GoString), stdgo.sort_test.Sort_test.exampleFloat64sAreSorted, ("true\nfalse\nfalse\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleReverse" : stdgo.GoString), stdgo.sort_test.Sort_test.exampleReverse, ("[6 5 4 3 2 1]\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleSlice" : stdgo.GoString), stdgo.sort_test.Sort_test.exampleSlice, ("By name: [{Alice 55} {Bob 75} {Gopher 7} {Vera 24}]\nBy age: [{Gopher 7} {Vera 24} {Alice 55} {Bob 75}]\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleSliceStable" : stdgo.GoString), stdgo.sort_test.Sort_test.exampleSliceStable, ("By name: [{Alice 25} {Alice 75} {Alice 75} {Bob 75} {Bob 25} {Colin 25} {Elizabeth 75} {Elizabeth 25}]\nBy age,name: [{Alice 25} {Bob 25} {Colin 25} {Elizabeth 25} {Alice 75} {Alice 75} {Bob 75} {Elizabeth 75}]\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("ExampleStrings" : stdgo.GoString), stdgo.sort_test.Sort_test.exampleStrings, ("[Alpha Bravo Delta Go Gopher Grin]\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample),
(new stdgo.testing.Testing.InternalExample(("Example_sortWrapper" : stdgo.GoString), stdgo.sort_test.Sort_test.example_sortWrapper, ("Organs by weight:\nprostate (62g)\npancreas (131g)\nspleen   (162g)\nheart    (290g)\nbrain    (1340g)\nliver    (1494g)\nOrgans by name:\nbrain    (1340g)\nheart    (290g)\nliver    (1494g)\npancreas (131g)\nprostate (62g)\nspleen   (162g)\n" : stdgo.GoString), false) : stdgo.testing.Testing.InternalExample)) : stdgo.Slice<stdgo.testing.Testing.InternalExample>);
function main():Void {
        var _m = stdgo.testing.Testing.mainStart(stdgo.Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ("sort" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

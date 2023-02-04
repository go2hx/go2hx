package stdgo.sort_test;

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
	(new stdgo.testing.Testing.InternalTest(("TestSearch" : GoString), stdgo.sort_test.Sort_test.testSearch) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestFind" : GoString), stdgo.sort_test.Sort_test.testFind) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestSearchEfficiency" : GoString),
		stdgo.sort_test.Sort_test.testSearchEfficiency) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestSearchWrappers" : GoString),
		stdgo.sort_test.Sort_test.testSearchWrappers) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestSearchWrappersDontAlloc" : GoString),
		stdgo.sort_test.Sort_test.testSearchWrappersDontAlloc) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestSearchExhaustive" : GoString),
		stdgo.sort_test.Sort_test.testSearchExhaustive) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestFindExhaustive" : GoString),
		stdgo.sort_test.Sort_test.testFindExhaustive) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestSortIntSlice" : GoString), stdgo.sort_test.Sort_test.testSortIntSlice) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestSortFloat64Slice" : GoString),
		stdgo.sort_test.Sort_test.testSortFloat64Slice) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestSortStringSlice" : GoString),
		stdgo.sort_test.Sort_test.testSortStringSlice) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestInts" : GoString), stdgo.sort_test.Sort_test.testInts) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestFloat64s" : GoString), stdgo.sort_test.Sort_test.testFloat64s) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestStrings" : GoString), stdgo.sort_test.Sort_test.testStrings) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestSlice" : GoString), stdgo.sort_test.Sort_test.testSlice) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestSortLarge_Random" : GoString),
		stdgo.sort_test.Sort_test.testSortLarge_Random) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestReverseSortIntSlice" : GoString),
		stdgo.sort_test.Sort_test.testReverseSortIntSlice) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestBreakPatterns" : GoString),
		stdgo.sort_test.Sort_test.testBreakPatterns) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestReverseRange" : GoString), stdgo.sort_test.Sort_test.testReverseRange) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestNonDeterministicComparison" : GoString),
		stdgo.sort_test.Sort_test.testNonDeterministicComparison) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestSortBM" : GoString), stdgo.sort_test.Sort_test.testSortBM) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestHeapsortBM" : GoString), stdgo.sort_test.Sort_test.testHeapsortBM) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestStableBM" : GoString), stdgo.sort_test.Sort_test.testStableBM) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestAdversary" : GoString), stdgo.sort_test.Sort_test.testAdversary) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestStableInts" : GoString), stdgo.sort_test.Sort_test.testStableInts) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestStability" : GoString), stdgo.sort_test.Sort_test.testStability) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestCountStableOps" : GoString),
		stdgo.sort_test.Sort_test.testCountStableOps) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(("TestCountSortOps" : GoString),
		stdgo.sort_test.Sort_test.testCountSortOps) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);

private var _benchmarks:Slice<stdgo.testing.Testing.InternalBenchmark> = (new Slice<stdgo.testing.Testing.InternalBenchmark>(0, 0,
	(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSearchWrappers" : GoString),
		stdgo.sort_test.Sort_test.benchmarkSearchWrappers) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSortString1K" : GoString),
		stdgo.sort_test.Sort_test.benchmarkSortString1K) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSortString1K_Slice" : GoString),
		stdgo.sort_test.Sort_test.benchmarkSortString1K_Slice) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkStableString1K" : GoString),
		stdgo.sort_test.Sort_test.benchmarkStableString1K) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSortInt1K" : GoString),
		stdgo.sort_test.Sort_test.benchmarkSortInt1K) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSortInt1K_Sorted" : GoString),
		stdgo.sort_test.Sort_test.benchmarkSortInt1K_Sorted) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSortInt1K_Reversed" : GoString),
		stdgo.sort_test.Sort_test.benchmarkSortInt1K_Reversed) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSortInt1K_Mod8" : GoString),
		stdgo.sort_test.Sort_test.benchmarkSortInt1K_Mod8) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkStableInt1K" : GoString),
		stdgo.sort_test.Sort_test.benchmarkStableInt1K) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkStableInt1K_Slice" : GoString),
		stdgo.sort_test.Sort_test.benchmarkStableInt1K_Slice) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSortInt64K" : GoString),
		stdgo.sort_test.Sort_test.benchmarkSortInt64K) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSortInt64K_Slice" : GoString),
		stdgo.sort_test.Sort_test.benchmarkSortInt64K_Slice) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkStableInt64K" : GoString),
		stdgo.sort_test.Sort_test.benchmarkStableInt64K) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSort1e2" : GoString),
		stdgo.sort_test.Sort_test.benchmarkSort1e2) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkStable1e2" : GoString),
		stdgo.sort_test.Sort_test.benchmarkStable1e2) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSort1e4" : GoString),
		stdgo.sort_test.Sort_test.benchmarkSort1e4) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkStable1e4" : GoString),
		stdgo.sort_test.Sort_test.benchmarkStable1e4) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkSort1e6" : GoString),
		stdgo.sort_test.Sort_test.benchmarkSort1e6) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(("BenchmarkStable1e6" : GoString),
		stdgo.sort_test.Sort_test.benchmarkStable1e6) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);

private var _fuzzTargets:Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0,
	0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);

private var _examples:Slice<stdgo.testing.Testing.InternalExample> = (new Slice<stdgo.testing.Testing.InternalExample>(0, 0,
	(new stdgo.testing.Testing.InternalExample(("Example" : GoString), stdgo.sort_test.Sort_test.example,
		("[Bob: 31 John: 42 Michael: 17 Jenny: 26]\n[Michael: 17 Jenny: 26 Bob: 31 John: 42]\n[John: 42 Bob: 31 Jenny: 26 Michael: 17]\n" : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(("Example_sortKeys" : GoString), stdgo.sort_test.Sort_test.example_sortKeys,
		("By name: [{Earth 1 1} {Mars 0.107 1.5} {Mercury 0.055 0.4} {Venus 0.815 0.7}]\nBy mass: [{Mercury 0.055 0.4} {Mars 0.107 1.5} {Venus 0.815 0.7} {Earth 1 1}]\nBy distance: [{Mercury 0.055 0.4} {Venus 0.815 0.7} {Earth 1 1} {Mars 0.107 1.5}]\nBy decreasing distance: [{Mars 0.107 1.5} {Earth 1 1} {Venus 0.815 0.7} {Mercury 0.055 0.4}]\n" : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(("Example_sortMultiKeys" : GoString), stdgo.sort_test.Sort_test.example_sortMultiKeys,
		("By user: [{dmr C 100} {glenda Go 200} {gri Go 100} {gri Smalltalk 80} {ken C 150} {ken Go 200} {r Go 100} {r C 150} {rsc Go 200}]\nBy user,<lines: [{dmr C 100} {glenda Go 200} {gri Smalltalk 80} {gri Go 100} {ken C 150} {ken Go 200} {r Go 100} {r C 150} {rsc Go 200}]\nBy user,>lines: [{dmr C 100} {glenda Go 200} {gri Go 100} {gri Smalltalk 80} {ken Go 200} {ken C 150} {r C 150} {r Go 100} {rsc Go 200}]\nBy language,<lines: [{dmr C 100} {ken C 150} {r C 150} {gri Go 100} {r Go 100} {glenda Go 200} {ken Go 200} {rsc Go 200} {gri Smalltalk 80}]\nBy language,<lines,user: [{dmr C 100} {ken C 150} {r C 150} {gri Go 100} {r Go 100} {glenda Go 200} {ken Go 200} {rsc Go 200} {gri Smalltalk 80}]\n" : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(("ExampleSearch" : GoString), stdgo.sort_test.Sort_test.exampleSearch,
		("found 6 at index 2 in [1 3 6 10 15 21 28 36 45 55]\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(("ExampleSearch_descendingOrder" : GoString), stdgo.sort_test.Sort_test.exampleSearch_descendingOrder,
		("found 6 at index 7 in [55 45 36 28 21 15 10 6 3 1]\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(("ExampleSearchFloat64s" : GoString), stdgo.sort_test.Sort_test.exampleSearchFloat64s,
		("found 2 at index 1 in [1 2 3.3 4.6 6.1 7.2 8]\n0.5 not found, can be inserted at index 0 in [1 2 3.3 4.6 6.1 7.2 8]\n" : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(("ExampleSearchInts" : GoString), stdgo.sort_test.Sort_test.exampleSearchInts,
		("found 2 at index 1 in [1 2 3 4 6 7 8]\n5 not found, can be inserted at index 4 in [1 2 3 4 6 7 8]\n" : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(("ExampleInts" : GoString), stdgo.sort_test.Sort_test.exampleInts, ("[1 2 3 4 5 6]\n" : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(("ExampleIntsAreSorted" : GoString), stdgo.sort_test.Sort_test.exampleIntsAreSorted,
		("true\nfalse\nfalse\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(("ExampleFloat64s" : GoString), stdgo.sort_test.Sort_test.exampleFloat64s,
		("[-3.8 -1.3 0.7 2.6 5.2]\n[NaN -Inf 0 +Inf]\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(("ExampleFloat64sAreSorted" : GoString), stdgo.sort_test.Sort_test.exampleFloat64sAreSorted,
		("true\nfalse\nfalse\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(("ExampleReverse" : GoString), stdgo.sort_test.Sort_test.exampleReverse, ("[6 5 4 3 2 1]\n" : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(("ExampleSlice" : GoString), stdgo.sort_test.Sort_test.exampleSlice,
		("By name: [{Alice 55} {Bob 75} {Gopher 7} {Vera 24}]\nBy age: [{Gopher 7} {Vera 24} {Alice 55} {Bob 75}]\n" : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(("ExampleSliceStable" : GoString), stdgo.sort_test.Sort_test.exampleSliceStable,
		("By name: [{Alice 25} {Alice 75} {Alice 75} {Bob 75} {Bob 25} {Colin 25} {Elizabeth 75} {Elizabeth 25}]\nBy age,name: [{Alice 25} {Bob 25} {Colin 25} {Elizabeth 25} {Alice 75} {Alice 75} {Bob 75} {Elizabeth 75}]\n" : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(("ExampleStrings" : GoString), stdgo.sort_test.Sort_test.exampleStrings,
		("[Alpha Bravo Delta Go Gopher Grin]\n" : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(("Example_sortWrapper" : GoString), stdgo.sort_test.Sort_test.example_sortWrapper,
		("Organs by weight:\nprostate (62g)\npancreas (131g)\nspleen   (162g)\nheart    (290g)\nbrain    (1340g)\nliver    (1494g)\nOrgans by name:\nbrain    (1340g)\nheart    (290g)\nliver    (1494g)\npancreas (131g)\nprostate (62g)\nspleen   (162g)\n" : GoString),
		false) : stdgo.testing.Testing.InternalExample)) : Slice<stdgo.testing.Testing.InternalExample>);

private function main():Void {
	var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)),
		_tests, _benchmarks,
		_fuzzTargets, _examples);
	Sys.exit(_m.run());
}

@:keep var _ = {
	try {
		stdgo.testing.internal.testdeps.Testdeps.importPath = ("sort" : GoString);
	} catch (__exception__)
		if (__exception__.message != "__return__")
			throw __exception__;
	true;
};

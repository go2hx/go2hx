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
	(new stdgo.testing.Testing.InternalTest(Go.str("TestSearch"), stdgo.sort_test.Sort_test.testSearch) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestFind"), stdgo.sort_test.Sort_test.testFind) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestSearchEfficiency"),
		stdgo.sort_test.Sort_test.testSearchEfficiency) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestSearchWrappers"), stdgo.sort_test.Sort_test.testSearchWrappers) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestSearchWrappersDontAlloc"),
		stdgo.sort_test.Sort_test.testSearchWrappersDontAlloc) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestSearchExhaustive"),
		stdgo.sort_test.Sort_test.testSearchExhaustive) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestFindExhaustive"), stdgo.sort_test.Sort_test.testFindExhaustive) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestSortIntSlice"), stdgo.sort_test.Sort_test.testSortIntSlice) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestSortFloat64Slice"),
		stdgo.sort_test.Sort_test.testSortFloat64Slice) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestSortStringSlice"),
		stdgo.sort_test.Sort_test.testSortStringSlice) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestInts"), stdgo.sort_test.Sort_test.testInts) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestFloat64s"), stdgo.sort_test.Sort_test.testFloat64s) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestStrings"), stdgo.sort_test.Sort_test.testStrings) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestSlice"), stdgo.sort_test.Sort_test.testSlice) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestSortLarge_Random"),
		stdgo.sort_test.Sort_test.testSortLarge_Random) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestReverseSortIntSlice"),
		stdgo.sort_test.Sort_test.testReverseSortIntSlice) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestBreakPatterns"), stdgo.sort_test.Sort_test.testBreakPatterns) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestReverseRange"), stdgo.sort_test.Sort_test.testReverseRange) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestNonDeterministicComparison"),
		stdgo.sort_test.Sort_test.testNonDeterministicComparison) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestSortBM"), stdgo.sort_test.Sort_test.testSortBM) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestHeapsortBM"), stdgo.sort_test.Sort_test.testHeapsortBM) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestStableBM"), stdgo.sort_test.Sort_test.testStableBM) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestAdversary"), stdgo.sort_test.Sort_test.testAdversary) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestStableInts"), stdgo.sort_test.Sort_test.testStableInts) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestStability"), stdgo.sort_test.Sort_test.testStability) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestCountStableOps"), stdgo.sort_test.Sort_test.testCountStableOps) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest(Go.str("TestCountSortOps"),
		stdgo.sort_test.Sort_test.testCountSortOps) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);

private var _benchmarks:Slice<stdgo.testing.Testing.InternalBenchmark> = (new Slice<stdgo.testing.Testing.InternalBenchmark>(0, 0,
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkSearchWrappers"),
		stdgo.sort_test.Sort_test.benchmarkSearchWrappers) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkSortString1K"),
		stdgo.sort_test.Sort_test.benchmarkSortString1K) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkSortString1K_Slice"),
		stdgo.sort_test.Sort_test.benchmarkSortString1K_Slice) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkStableString1K"),
		stdgo.sort_test.Sort_test.benchmarkStableString1K) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkSortInt1K"),
		stdgo.sort_test.Sort_test.benchmarkSortInt1K) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkSortInt1K_Sorted"),
		stdgo.sort_test.Sort_test.benchmarkSortInt1K_Sorted) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkSortInt1K_Reversed"),
		stdgo.sort_test.Sort_test.benchmarkSortInt1K_Reversed) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkSortInt1K_Mod8"),
		stdgo.sort_test.Sort_test.benchmarkSortInt1K_Mod8) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkStableInt1K"),
		stdgo.sort_test.Sort_test.benchmarkStableInt1K) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkStableInt1K_Slice"),
		stdgo.sort_test.Sort_test.benchmarkStableInt1K_Slice) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkSortInt64K"),
		stdgo.sort_test.Sort_test.benchmarkSortInt64K) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkSortInt64K_Slice"),
		stdgo.sort_test.Sort_test.benchmarkSortInt64K_Slice) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkStableInt64K"),
		stdgo.sort_test.Sort_test.benchmarkStableInt64K) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkSort1e2"),
		stdgo.sort_test.Sort_test.benchmarkSort1e2) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkStable1e2"),
		stdgo.sort_test.Sort_test.benchmarkStable1e2) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkSort1e4"),
		stdgo.sort_test.Sort_test.benchmarkSort1e4) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkStable1e4"),
		stdgo.sort_test.Sort_test.benchmarkStable1e4) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkSort1e6"),
		stdgo.sort_test.Sort_test.benchmarkSort1e6) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark(Go.str("BenchmarkStable1e6"),
		stdgo.sort_test.Sort_test.benchmarkStable1e6) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);

private var _fuzzTargets:Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0,
	0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);

private var _examples:Slice<stdgo.testing.Testing.InternalExample> = (new Slice<stdgo.testing.Testing.InternalExample>(0, 0,
	(new stdgo.testing.Testing.InternalExample(Go.str("Example"), stdgo.sort_test.Sort_test.example,
		Go.str("[Bob: 31 John: 42 Michael: 17 Jenny: 26]\n[Michael: 17 Jenny: 26 Bob: 31 John: 42]\n[John: 42 Bob: 31 Jenny: 26 Michael: 17]\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("Example_sortKeys"), stdgo.sort_test.Sort_test.example_sortKeys,
		Go.str("By name: [{Earth 1 1} {Mars 0.107 1.5} {Mercury 0.055 0.4} {Venus 0.815 0.7}]\nBy mass: [{Mercury 0.055 0.4} {Mars 0.107 1.5} {Venus 0.815 0.7} {Earth 1 1}]\nBy distance: [{Mercury 0.055 0.4} {Venus 0.815 0.7} {Earth 1 1} {Mars 0.107 1.5}]\nBy decreasing distance: [{Mars 0.107 1.5} {Earth 1 1} {Venus 0.815 0.7} {Mercury 0.055 0.4}]\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("Example_sortMultiKeys"), stdgo.sort_test.Sort_test.example_sortMultiKeys,
		Go.str("By user: [{dmr C 100} {glenda Go 200} {gri Go 100} {gri Smalltalk 80} {ken C 150} {ken Go 200} {r Go 100} {r C 150} {rsc Go 200}]\nBy user,<lines: [{dmr C 100} {glenda Go 200} {gri Smalltalk 80} {gri Go 100} {ken C 150} {ken Go 200} {r Go 100} {r C 150} {rsc Go 200}]\nBy user,>lines: [{dmr C 100} {glenda Go 200} {gri Go 100} {gri Smalltalk 80} {ken Go 200} {ken C 150} {r C 150} {r Go 100} {rsc Go 200}]\nBy language,<lines: [{dmr C 100} {ken C 150} {r C 150} {gri Go 100} {r Go 100} {glenda Go 200} {ken Go 200} {rsc Go 200} {gri Smalltalk 80}]\nBy language,<lines,user: [{dmr C 100} {ken C 150} {r C 150} {gri Go 100} {r Go 100} {glenda Go 200} {ken Go 200} {rsc Go 200} {gri Smalltalk 80}]\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleSearch"), stdgo.sort_test.Sort_test.exampleSearch,
		Go.str("found 6 at index 2 in [1 3 6 10 15 21 28 36 45 55]\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleSearch_descendingOrder"), stdgo.sort_test.Sort_test.exampleSearch_descendingOrder,
		Go.str("found 6 at index 7 in [55 45 36 28 21 15 10 6 3 1]\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleSearchFloat64s"), stdgo.sort_test.Sort_test.exampleSearchFloat64s,
		Go.str("found 2 at index 1 in [1 2 3.3 4.6 6.1 7.2 8]\n0.5 not found, can be inserted at index 0 in [1 2 3.3 4.6 6.1 7.2 8]\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleSearchInts"), stdgo.sort_test.Sort_test.exampleSearchInts,
		Go.str("found 2 at index 1 in [1 2 3 4 6 7 8]\n5 not found, can be inserted at index 4 in [1 2 3 4 6 7 8]\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleInts"), stdgo.sort_test.Sort_test.exampleInts, Go.str("[1 2 3 4 5 6]\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleIntsAreSorted"), stdgo.sort_test.Sort_test.exampleIntsAreSorted, Go.str("true\nfalse\nfalse\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleFloat64s"), stdgo.sort_test.Sort_test.exampleFloat64s,
		Go.str("[-3.8 -1.3 0.7 2.6 5.2]\n[NaN -Inf 0 +Inf]\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleFloat64sAreSorted"), stdgo.sort_test.Sort_test.exampleFloat64sAreSorted,
		Go.str("true\nfalse\nfalse\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleReverse"), stdgo.sort_test.Sort_test.exampleReverse, Go.str("[6 5 4 3 2 1]\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleSlice"), stdgo.sort_test.Sort_test.exampleSlice,
		Go.str("By name: [{Alice 55} {Bob 75} {Gopher 7} {Vera 24}]\nBy age: [{Gopher 7} {Vera 24} {Alice 55} {Bob 75}]\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleSliceStable"), stdgo.sort_test.Sort_test.exampleSliceStable,
		Go.str("By name: [{Alice 25} {Alice 75} {Alice 75} {Bob 75} {Bob 25} {Colin 25} {Elizabeth 75} {Elizabeth 25}]\nBy age,name: [{Alice 25} {Bob 25} {Colin 25} {Elizabeth 25} {Alice 75} {Alice 75} {Bob 75} {Elizabeth 75}]\n"),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("ExampleStrings"), stdgo.sort_test.Sort_test.exampleStrings,
		Go.str("[Alpha Bravo Delta Go Gopher Grin]\n"), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample(Go.str("Example_sortWrapper"), stdgo.sort_test.Sort_test.example_sortWrapper,
		Go.str("Organs by weight:\nprostate (62g)\npancreas (131g)\nspleen   (162g)\nheart    (290g)\nbrain    (1340g)\nliver    (1494g)\nOrgans by name:\nbrain    (1340g)\nheart    (290g)\nliver    (1494g)\npancreas (131g)\nprostate (62g)\nspleen   (162g)\n"),
		false) : stdgo.testing.Testing.InternalExample)) : Slice<stdgo.testing.Testing.InternalExample>);

function main():Void {
	var _m = stdgo.testing.Testing.mainStart(Go.asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)),
		_tests, _benchmarks,
		_fuzzTargets, _examples);
	Sys.exit(_m.run());
}

@:keep var _ = {
	try {
		stdgo.testing.internal.testdeps.Testdeps.importPath = Go.str("sort");
	} catch (__exception__)
		if (__exception__.message != "__return__")
			throw __exception__;
	true;
};

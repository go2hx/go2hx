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
	(new stdgo.testing.Testing.InternalTest((Go.str("TestSearch") : GoString), stdgo.sort_test.Sort_test.testSearch) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestFind") : GoString), stdgo.sort_test.Sort_test.testFind) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestSearchEfficiency") : GoString),
		stdgo.sort_test.Sort_test.testSearchEfficiency) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestSearchWrappers") : GoString),
		stdgo.sort_test.Sort_test.testSearchWrappers) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestSearchWrappersDontAlloc") : GoString),
		stdgo.sort_test.Sort_test.testSearchWrappersDontAlloc) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestSearchExhaustive") : GoString),
		stdgo.sort_test.Sort_test.testSearchExhaustive) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestFindExhaustive") : GoString),
		stdgo.sort_test.Sort_test.testFindExhaustive) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestSortIntSlice") : GoString),
		stdgo.sort_test.Sort_test.testSortIntSlice) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestSortFloat64Slice") : GoString),
		stdgo.sort_test.Sort_test.testSortFloat64Slice) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestSortStringSlice") : GoString),
		stdgo.sort_test.Sort_test.testSortStringSlice) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestInts") : GoString), stdgo.sort_test.Sort_test.testInts) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestFloat64s") : GoString), stdgo.sort_test.Sort_test.testFloat64s) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestStrings") : GoString), stdgo.sort_test.Sort_test.testStrings) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestSlice") : GoString), stdgo.sort_test.Sort_test.testSlice) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestSortLarge_Random") : GoString),
		stdgo.sort_test.Sort_test.testSortLarge_Random) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestReverseSortIntSlice") : GoString),
		stdgo.sort_test.Sort_test.testReverseSortIntSlice) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestBreakPatterns") : GoString),
		stdgo.sort_test.Sort_test.testBreakPatterns) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestReverseRange") : GoString),
		stdgo.sort_test.Sort_test.testReverseRange) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestNonDeterministicComparison") : GoString),
		stdgo.sort_test.Sort_test.testNonDeterministicComparison) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestSortBM") : GoString), stdgo.sort_test.Sort_test.testSortBM) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestHeapsortBM") : GoString),
		stdgo.sort_test.Sort_test.testHeapsortBM) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestStableBM") : GoString), stdgo.sort_test.Sort_test.testStableBM) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestAdversary") : GoString),
		stdgo.sort_test.Sort_test.testAdversary) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestStableInts") : GoString),
		stdgo.sort_test.Sort_test.testStableInts) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestStability") : GoString),
		stdgo.sort_test.Sort_test.testStability) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestCountStableOps") : GoString),
		stdgo.sort_test.Sort_test.testCountStableOps) : stdgo.testing.Testing.InternalTest),
	(new stdgo.testing.Testing.InternalTest((Go.str("TestCountSortOps") : GoString),
		stdgo.sort_test.Sort_test.testCountSortOps) : stdgo.testing.Testing.InternalTest)) : Slice<stdgo.testing.Testing.InternalTest>);

private var _benchmarks:Slice<stdgo.testing.Testing.InternalBenchmark> = (new Slice<stdgo.testing.Testing.InternalBenchmark>(0, 0,
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkSearchWrappers") : GoString),
		stdgo.sort_test.Sort_test.benchmarkSearchWrappers) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkSortString1K") : GoString),
		stdgo.sort_test.Sort_test.benchmarkSortString1K) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkSortString1K_Slice") : GoString),
		stdgo.sort_test.Sort_test.benchmarkSortString1K_Slice) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkStableString1K") : GoString),
		stdgo.sort_test.Sort_test.benchmarkStableString1K) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkSortInt1K") : GoString),
		stdgo.sort_test.Sort_test.benchmarkSortInt1K) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkSortInt1K_Sorted") : GoString),
		stdgo.sort_test.Sort_test.benchmarkSortInt1K_Sorted) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkSortInt1K_Reversed") : GoString),
		stdgo.sort_test.Sort_test.benchmarkSortInt1K_Reversed) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkSortInt1K_Mod8") : GoString),
		stdgo.sort_test.Sort_test.benchmarkSortInt1K_Mod8) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkStableInt1K") : GoString),
		stdgo.sort_test.Sort_test.benchmarkStableInt1K) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkStableInt1K_Slice") : GoString),
		stdgo.sort_test.Sort_test.benchmarkStableInt1K_Slice) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkSortInt64K") : GoString),
		stdgo.sort_test.Sort_test.benchmarkSortInt64K) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkSortInt64K_Slice") : GoString),
		stdgo.sort_test.Sort_test.benchmarkSortInt64K_Slice) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkStableInt64K") : GoString),
		stdgo.sort_test.Sort_test.benchmarkStableInt64K) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkSort1e2") : GoString),
		stdgo.sort_test.Sort_test.benchmarkSort1e2) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkStable1e2") : GoString),
		stdgo.sort_test.Sort_test.benchmarkStable1e2) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkSort1e4") : GoString),
		stdgo.sort_test.Sort_test.benchmarkSort1e4) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkStable1e4") : GoString),
		stdgo.sort_test.Sort_test.benchmarkStable1e4) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkSort1e6") : GoString),
		stdgo.sort_test.Sort_test.benchmarkSort1e6) : stdgo.testing.Testing.InternalBenchmark),
	(new stdgo.testing.Testing.InternalBenchmark((Go.str("BenchmarkStable1e6") : GoString),
		stdgo.sort_test.Sort_test.benchmarkStable1e6) : stdgo.testing.Testing.InternalBenchmark)) : Slice<stdgo.testing.Testing.InternalBenchmark>);

private var _fuzzTargets:Slice<stdgo.testing.Testing.InternalFuzzTarget> = (new Slice<stdgo.testing.Testing.InternalFuzzTarget>(0,
	0) : Slice<stdgo.testing.Testing.InternalFuzzTarget>);

private var _examples:Slice<stdgo.testing.Testing.InternalExample> = (new Slice<stdgo.testing.Testing.InternalExample>(0, 0,
	(new stdgo.testing.Testing.InternalExample((Go.str("Example") : GoString), stdgo.sort_test.Sort_test.example,
		(Go.str("[Bob: 31 John: 42 Michael: 17 Jenny: 26]\n[Michael: 17 Jenny: 26 Bob: 31 John: 42]\n[John: 42 Bob: 31 Jenny: 26 Michael: 17]\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("Example_sortKeys") : GoString), stdgo.sort_test.Sort_test.example_sortKeys,
		(Go.str("By name: [{Earth 1 1} {Mars 0.107 1.5} {Mercury 0.055 0.4} {Venus 0.815 0.7}]\nBy mass: [{Mercury 0.055 0.4} {Mars 0.107 1.5} {Venus 0.815 0.7} {Earth 1 1}]\nBy distance: [{Mercury 0.055 0.4} {Venus 0.815 0.7} {Earth 1 1} {Mars 0.107 1.5}]\nBy decreasing distance: [{Mars 0.107 1.5} {Earth 1 1} {Venus 0.815 0.7} {Mercury 0.055 0.4}]\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("Example_sortMultiKeys") : GoString), stdgo.sort_test.Sort_test.example_sortMultiKeys,
		(Go.str("By user: [{dmr C 100} {glenda Go 200} {gri Go 100} {gri Smalltalk 80} {ken C 150} {ken Go 200} {r Go 100} {r C 150} {rsc Go 200}]\nBy user,<lines: [{dmr C 100} {glenda Go 200} {gri Smalltalk 80} {gri Go 100} {ken C 150} {ken Go 200} {r Go 100} {r C 150} {rsc Go 200}]\nBy user,>lines: [{dmr C 100} {glenda Go 200} {gri Go 100} {gri Smalltalk 80} {ken Go 200} {ken C 150} {r C 150} {r Go 100} {rsc Go 200}]\nBy language,<lines: [{dmr C 100} {ken C 150} {r C 150} {gri Go 100} {r Go 100} {glenda Go 200} {ken Go 200} {rsc Go 200} {gri Smalltalk 80}]\nBy language,<lines,user: [{dmr C 100} {ken C 150} {r C 150} {gri Go 100} {r Go 100} {glenda Go 200} {ken Go 200} {rsc Go 200} {gri Smalltalk 80}]\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleSearch") : GoString), stdgo.sort_test.Sort_test.exampleSearch,
		(Go.str("found 6 at index 2 in [1 3 6 10 15 21 28 36 45 55]\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleSearch_descendingOrder") : GoString), stdgo.sort_test.Sort_test.exampleSearch_descendingOrder,
		(Go.str("found 6 at index 7 in [55 45 36 28 21 15 10 6 3 1]\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleSearchFloat64s") : GoString), stdgo.sort_test.Sort_test.exampleSearchFloat64s,
		(Go.str("found 2 at index 1 in [1 2 3.3 4.6 6.1 7.2 8]\n0.5 not found, can be inserted at index 0 in [1 2 3.3 4.6 6.1 7.2 8]\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleSearchInts") : GoString), stdgo.sort_test.Sort_test.exampleSearchInts,
		(Go.str("found 2 at index 1 in [1 2 3 4 6 7 8]\n5 not found, can be inserted at index 4 in [1 2 3 4 6 7 8]\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleInts") : GoString), stdgo.sort_test.Sort_test.exampleInts,
		(Go.str("[1 2 3 4 5 6]\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleIntsAreSorted") : GoString), stdgo.sort_test.Sort_test.exampleIntsAreSorted,
		(Go.str("true\nfalse\nfalse\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleFloat64s") : GoString), stdgo.sort_test.Sort_test.exampleFloat64s,
		(Go.str("[-3.8 -1.3 0.7 2.6 5.2]\n[NaN -Inf 0 +Inf]\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleFloat64sAreSorted") : GoString), stdgo.sort_test.Sort_test.exampleFloat64sAreSorted,
		(Go.str("true\nfalse\nfalse\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleReverse") : GoString), stdgo.sort_test.Sort_test.exampleReverse,
		(Go.str("[6 5 4 3 2 1]\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleSlice") : GoString), stdgo.sort_test.Sort_test.exampleSlice,
		(Go.str("By name: [{Alice 55} {Bob 75} {Gopher 7} {Vera 24}]\nBy age: [{Gopher 7} {Vera 24} {Alice 55} {Bob 75}]\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleSliceStable") : GoString), stdgo.sort_test.Sort_test.exampleSliceStable,
		(Go.str("By name: [{Alice 25} {Alice 75} {Alice 75} {Bob 75} {Bob 25} {Colin 25} {Elizabeth 75} {Elizabeth 25}]\nBy age,name: [{Alice 25} {Bob 25} {Colin 25} {Elizabeth 25} {Alice 75} {Alice 75} {Bob 75} {Elizabeth 75}]\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("ExampleStrings") : GoString), stdgo.sort_test.Sort_test.exampleStrings,
		(Go.str("[Alpha Bravo Delta Go Gopher Grin]\n") : GoString), false) : stdgo.testing.Testing.InternalExample),
	(new stdgo.testing.Testing.InternalExample((Go.str("Example_sortWrapper") : GoString), stdgo.sort_test.Sort_test.example_sortWrapper,
		(Go.str("Organs by weight:\nprostate (62g)\npancreas (131g)\nspleen   (162g)\nheart    (290g)\nbrain    (1340g)\nliver    (1494g)\nOrgans by name:\nbrain    (1340g)\nheart    (290g)\nliver    (1494g)\npancreas (131g)\nprostate (62g)\nspleen   (162g)\n") : GoString),
		false) : stdgo.testing.Testing.InternalExample)) : Slice<stdgo.testing.Testing.InternalExample>);

function main():Void {
	var _m = stdgo.testing.Testing.mainStart({
		final __self__ = new stdgo.testing.internal.testdeps.Testdeps.TestDeps_asInterface((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps));
		__self__.checkCorpus = #if !macro function(__0:Slice<AnyInterface>,
				__1:Slice<stdgo.reflect.Reflect.Type>):stdgo.Error return
				(new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps).checkCorpus(__0,
					__1) #else null #end;
		__self__.coordinateFuzzing = #if !macro function(__0:stdgo.time.Time.Duration, __1:GoInt64, __2:stdgo.time.Time.Duration, __3:GoInt64, __4:GoInt,
				__5:Slice<{
				var parent:GoString;
				var path:GoString;
				var data:Slice<GoUInt8>;
				var values:Slice<AnyInterface>;
				var generation:GoInt;
				var isSeed:Bool;
			}>,
				__6:Slice<stdgo.reflect.Reflect.Type>, __7:GoString,
				__8:GoString):stdgo.Error return (new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)
				.coordinateFuzzing(__0, __1, __2, __3, __4, __5, __6, __7, __8) #else null #end;
		__self__.importPath = #if !macro function():GoString return
			(new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps).importPath() #else null #end;
		__self__.matchString = #if !macro function(_key:GoString, _value:GoString):{var _0:Bool; var _1:stdgo.Error;}
			return (new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps).matchString(_key,
				_value) #else null #end;
		__self__.readCorpus = #if !macro function(__0:GoString, __1:Slice<stdgo.reflect.Reflect.Type>):{var _0:Slice<{
			var parent:GoString;
			var path:GoString;
			var data:Slice<GoUInt8>;
			var values:Slice<AnyInterface>;
			var generation:GoInt;
			var isSeed:Bool;
		}>; var _1:stdgo.Error;}
			return (new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps).readCorpus(__0,
				__1) #else null #end;
		__self__.resetCoverage = #if !macro function():Void(new stdgo.testing.internal.testdeps.Testdeps.TestDeps()
			:stdgo.testing.internal.testdeps.Testdeps.TestDeps).resetCoverage() #else null #end;
		__self__.runFuzzWorker = #if !macro function(__0:({
			var parent:GoString;
			var path:GoString;
			var data:Slice<GoUInt8>;
			var values:Slice<AnyInterface>;
			var generation:GoInt;
			var isSeed:Bool;
		}) -> stdgo.Error):stdgo.Error return (new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)
			.runFuzzWorker(__0) #else null #end;
		__self__.setPanicOnExit0 = #if !macro function(__0:Bool):Void(new stdgo.testing.internal.testdeps.Testdeps.TestDeps()
			:stdgo.testing.internal.testdeps.Testdeps.TestDeps).setPanicOnExit0(__0) #else null #end;
		__self__.snapshotCoverage = #if !macro function():Void(new stdgo.testing.internal.testdeps.Testdeps.TestDeps()
			:stdgo.testing.internal.testdeps.Testdeps.TestDeps).snapshotCoverage() #else null #end;
		__self__.startCPUProfile = #if !macro function(__0:stdgo.io.Io.Writer):stdgo.Error return
			(new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps).startCPUProfile(__0) #else null #end;
		__self__.startTestLog = #if !macro function(__0:stdgo.io.Io.Writer):Void(new stdgo.testing.internal.testdeps.Testdeps.TestDeps()
			:stdgo.testing.internal.testdeps.Testdeps.TestDeps).startTestLog(__0) #else null #end;
		__self__.stopCPUProfile = #if !macro function():Void(new stdgo.testing.internal.testdeps.Testdeps.TestDeps()
			:stdgo.testing.internal.testdeps.Testdeps.TestDeps).stopCPUProfile() #else null #end;
		__self__.stopTestLog = #if !macro function():stdgo.Error return
			(new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps).stopTestLog() #else null #end;
		__self__.writeProfileTo = #if !macro function(__0:GoString, __1:stdgo.io.Io.Writer,
				__2:GoInt):stdgo.Error return (new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)
				.writeProfileTo(__0, __1, __2) #else null #end;
		__self__;
	}, _tests, _benchmarks, _fuzzTargets, _examples);
	Sys.exit(_m.run());
}

@:keep var _ = {
	try {
		stdgo.testing.internal.testdeps.Testdeps.importPath = (Go.str("sort") : GoString);
	} catch (__exception__)
		if (__exception__.message != "__return__")
			throw __exception__;
	true;
};

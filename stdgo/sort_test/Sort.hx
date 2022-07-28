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
var _tests : Slice<stdgo.testing.Testing.InternalTest> = ((new Slice<stdgo.testing.Testing.InternalTest>(
((new stdgo.testing.Testing.InternalTest(((((("TestSearch" : GoString))) : GoString)), stdgo.sort_test.Sort_test.testSearch) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestSearchEfficiency" : GoString))) : GoString)), stdgo.sort_test.Sort_test.testSearchEfficiency) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestSearchWrappers" : GoString))) : GoString)), stdgo.sort_test.Sort_test.testSearchWrappers) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestSearchWrappersDontAlloc" : GoString))) : GoString)), stdgo.sort_test.Sort_test.testSearchWrappersDontAlloc) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestSearchExhaustive" : GoString))) : GoString)), stdgo.sort_test.Sort_test.testSearchExhaustive) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestSortIntSlice" : GoString))) : GoString)), stdgo.sort_test.Sort_test.testSortIntSlice) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestSortFloat64Slice" : GoString))) : GoString)), stdgo.sort_test.Sort_test.testSortFloat64Slice) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestSortStringSlice" : GoString))) : GoString)), stdgo.sort_test.Sort_test.testSortStringSlice) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestInts" : GoString))) : GoString)), stdgo.sort_test.Sort_test.testInts) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestFloat64s" : GoString))) : GoString)), stdgo.sort_test.Sort_test.testFloat64s) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestStrings" : GoString))) : GoString)), stdgo.sort_test.Sort_test.testStrings) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestSlice" : GoString))) : GoString)), stdgo.sort_test.Sort_test.testSlice) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestSortLarge_Random" : GoString))) : GoString)), stdgo.sort_test.Sort_test.testSortLarge_Random) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestReverseSortIntSlice" : GoString))) : GoString)), stdgo.sort_test.Sort_test.testReverseSortIntSlice) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestNonDeterministicComparison" : GoString))) : GoString)), stdgo.sort_test.Sort_test.testNonDeterministicComparison) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestSortBM" : GoString))) : GoString)), stdgo.sort_test.Sort_test.testSortBM) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestHeapsortBM" : GoString))) : GoString)), stdgo.sort_test.Sort_test.testHeapsortBM) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestStableBM" : GoString))) : GoString)), stdgo.sort_test.Sort_test.testStableBM) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestAdversary" : GoString))) : GoString)), stdgo.sort_test.Sort_test.testAdversary) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestStableInts" : GoString))) : GoString)), stdgo.sort_test.Sort_test.testStableInts) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestStability" : GoString))) : GoString)), stdgo.sort_test.Sort_test.testStability) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestCountStableOps" : GoString))) : GoString)), stdgo.sort_test.Sort_test.testCountStableOps) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((((("TestCountSortOps" : GoString))) : GoString)), stdgo.sort_test.Sort_test.testCountSortOps) : stdgo.testing.Testing.InternalTest))) : Slice<stdgo.testing.Testing.InternalTest>));
var _benchmarks : Slice<stdgo.testing.Testing.InternalBenchmark> = ((new Slice<stdgo.testing.Testing.InternalBenchmark>(
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkSearchWrappers" : GoString))) : GoString)), stdgo.sort_test.Sort_test.benchmarkSearchWrappers) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkSortString1K" : GoString))) : GoString)), stdgo.sort_test.Sort_test.benchmarkSortString1K) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkSortString1K_Slice" : GoString))) : GoString)), stdgo.sort_test.Sort_test.benchmarkSortString1K_Slice) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkStableString1K" : GoString))) : GoString)), stdgo.sort_test.Sort_test.benchmarkStableString1K) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkSortInt1K" : GoString))) : GoString)), stdgo.sort_test.Sort_test.benchmarkSortInt1K) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkStableInt1K" : GoString))) : GoString)), stdgo.sort_test.Sort_test.benchmarkStableInt1K) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkStableInt1K_Slice" : GoString))) : GoString)), stdgo.sort_test.Sort_test.benchmarkStableInt1K_Slice) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkSortInt64K" : GoString))) : GoString)), stdgo.sort_test.Sort_test.benchmarkSortInt64K) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkSortInt64K_Slice" : GoString))) : GoString)), stdgo.sort_test.Sort_test.benchmarkSortInt64K_Slice) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkStableInt64K" : GoString))) : GoString)), stdgo.sort_test.Sort_test.benchmarkStableInt64K) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkSort1e2" : GoString))) : GoString)), stdgo.sort_test.Sort_test.benchmarkSort1e2) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkStable1e2" : GoString))) : GoString)), stdgo.sort_test.Sort_test.benchmarkStable1e2) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkSort1e4" : GoString))) : GoString)), stdgo.sort_test.Sort_test.benchmarkSort1e4) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkStable1e4" : GoString))) : GoString)), stdgo.sort_test.Sort_test.benchmarkStable1e4) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkSort1e6" : GoString))) : GoString)), stdgo.sort_test.Sort_test.benchmarkSort1e6) : stdgo.testing.Testing.InternalBenchmark)),
((new stdgo.testing.Testing.InternalBenchmark(((((("BenchmarkStable1e6" : GoString))) : GoString)), stdgo.sort_test.Sort_test.benchmarkStable1e6) : stdgo.testing.Testing.InternalBenchmark))) : Slice<stdgo.testing.Testing.InternalBenchmark>));
var _fuzzTargets : Slice<stdgo.testing.Testing.InternalFuzzTarget> = ((new Slice<stdgo.testing.Testing.InternalFuzzTarget>() : Slice<stdgo.testing.Testing.InternalFuzzTarget>));
var _examples : Slice<stdgo.testing.Testing.InternalExample> = ((new Slice<stdgo.testing.Testing.InternalExample>(
((new stdgo.testing.Testing.InternalExample(((((("Example" : GoString))) : GoString)), stdgo.sort_test.Sort_test.example, ((((("[Bob: 31 John: 42 Michael: 17 Jenny: 26]\n[Michael: 17 Jenny: 26 Bob: 31 John: 42]\n[John: 42 Bob: 31 Jenny: 26 Michael: 17]\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("Example_sortKeys" : GoString))) : GoString)), stdgo.sort_test.Sort_test.example_sortKeys, ((((("By name: [{Earth 1 1} {Mars 0.107 1.5} {Mercury 0.055 0.4} {Venus 0.815 0.7}]\nBy mass: [{Mercury 0.055 0.4} {Mars 0.107 1.5} {Venus 0.815 0.7} {Earth 1 1}]\nBy distance: [{Mercury 0.055 0.4} {Venus 0.815 0.7} {Earth 1 1} {Mars 0.107 1.5}]\nBy decreasing distance: [{Mars 0.107 1.5} {Earth 1 1} {Venus 0.815 0.7} {Mercury 0.055 0.4}]\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("Example_sortMultiKeys" : GoString))) : GoString)), stdgo.sort_test.Sort_test.example_sortMultiKeys, ((((("By user: [{dmr C 100} {glenda Go 200} {gri Go 100} {gri Smalltalk 80} {ken C 150} {ken Go 200} {r Go 100} {r C 150} {rsc Go 200}]\nBy user,<lines: [{dmr C 100} {glenda Go 200} {gri Smalltalk 80} {gri Go 100} {ken C 150} {ken Go 200} {r Go 100} {r C 150} {rsc Go 200}]\nBy user,>lines: [{dmr C 100} {glenda Go 200} {gri Go 100} {gri Smalltalk 80} {ken Go 200} {ken C 150} {r C 150} {r Go 100} {rsc Go 200}]\nBy language,<lines: [{dmr C 100} {ken C 150} {r C 150} {r Go 100} {gri Go 100} {ken Go 200} {glenda Go 200} {rsc Go 200} {gri Smalltalk 80}]\nBy language,<lines,user: [{dmr C 100} {ken C 150} {r C 150} {gri Go 100} {r Go 100} {glenda Go 200} {ken Go 200} {rsc Go 200} {gri Smalltalk 80}]\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleSearch" : GoString))) : GoString)), stdgo.sort_test.Sort_test.exampleSearch, ((((("found 6 at index 2 in [1 3 6 10 15 21 28 36 45 55]\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleSearch_descendingOrder" : GoString))) : GoString)), stdgo.sort_test.Sort_test.exampleSearch_descendingOrder, ((((("found 6 at index 7 in [55 45 36 28 21 15 10 6 3 1]\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleSearchFloat64s" : GoString))) : GoString)), stdgo.sort_test.Sort_test.exampleSearchFloat64s, ((((("found 2 at index 1 in [1 2 3.3 4.6 6.1 7.2 8]\n0.5 not found, can be inserted at index 0 in [1 2 3.3 4.6 6.1 7.2 8]\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleSearchInts" : GoString))) : GoString)), stdgo.sort_test.Sort_test.exampleSearchInts, ((((("found 2 at index 1 in [1 2 3 4 6 7 8]\n5 not found, can be inserted at index 4 in [1 2 3 4 6 7 8]\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleInts" : GoString))) : GoString)), stdgo.sort_test.Sort_test.exampleInts, ((((("[1 2 3 4 5 6]\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleIntsAreSorted" : GoString))) : GoString)), stdgo.sort_test.Sort_test.exampleIntsAreSorted, ((((("true\nfalse\nfalse\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleFloat64s" : GoString))) : GoString)), stdgo.sort_test.Sort_test.exampleFloat64s, ((((("[-3.8 -1.3 0.7 2.6 5.2]\n[NaN -Inf 0 +Inf]\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleFloat64sAreSorted" : GoString))) : GoString)), stdgo.sort_test.Sort_test.exampleFloat64sAreSorted, ((((("true\nfalse\nfalse\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleReverse" : GoString))) : GoString)), stdgo.sort_test.Sort_test.exampleReverse, ((((("[6 5 4 3 2 1]\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleSlice" : GoString))) : GoString)), stdgo.sort_test.Sort_test.exampleSlice, ((((("By name: [{Alice 55} {Bob 75} {Gopher 7} {Vera 24}]\nBy age: [{Gopher 7} {Vera 24} {Alice 55} {Bob 75}]\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleSliceStable" : GoString))) : GoString)), stdgo.sort_test.Sort_test.exampleSliceStable, ((((("By name: [{Alice 25} {Alice 75} {Alice 75} {Bob 75} {Bob 25} {Colin 25} {Elizabeth 75} {Elizabeth 25}]\nBy age,name: [{Alice 25} {Bob 25} {Colin 25} {Elizabeth 25} {Alice 75} {Alice 75} {Bob 75} {Elizabeth 75}]\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("ExampleStrings" : GoString))) : GoString)), stdgo.sort_test.Sort_test.exampleStrings, ((((("[Alpha Bravo Delta Go Gopher Grin]\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample)),
((new stdgo.testing.Testing.InternalExample(((((("Example_sortWrapper" : GoString))) : GoString)), stdgo.sort_test.Sort_test.example_sortWrapper, ((((("Organs by weight:\nprostate (62g)\npancreas (131g)\nspleen   (162g)\nheart    (290g)\nbrain    (1340g)\nliver    (1494g)\nOrgans by name:\nbrain    (1340g)\nheart    (290g)\nliver    (1494g)\npancreas (131g)\nprostate (62g)\nspleen   (162g)\n" : GoString))) : GoString)), false) : stdgo.testing.Testing.InternalExample))) : Slice<stdgo.testing.Testing.InternalExample>));
function main():Void {
        var _m = stdgo.testing.Testing.mainStart({
            final __self__ = new stdgo.testing.internal.testdeps.Testdeps.TestDeps_wrapper(((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)));
            __self__.checkCorpus = #if !macro function(_vals:Slice<AnyInterface>, _types:Slice<stdgo.reflect.Reflect.Type>):stdgo.Error return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).checkCorpus(_vals, _types) #else null #end;
            __self__.coordinateFuzzing = #if !macro function(_timeout:stdgo.time.Time.Duration, _limit:GoInt64, _minimizeTimeout:stdgo.time.Time.Duration, _minimizeLimit:GoInt64, _parallel:GoInt, _seed:Slice<{ var parent : GoString; var path : GoString; var data : Slice<GoUInt8>; var values : Slice<AnyInterface>; var generation : GoInt; var isSeed : Bool; }>, _types:Slice<stdgo.reflect.Reflect.Type>, _corpusDir:GoString, _cacheDir:GoString):stdgo.Error return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).coordinateFuzzing(_timeout, _limit, _minimizeTimeout, _minimizeLimit, _parallel, _seed, _types, _corpusDir, _cacheDir) #else null #end;
            __self__.importPath = #if !macro function():GoString return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).importPath() #else null #end;
            __self__.matchString = #if !macro function(_pat:GoString, _str:GoString):{ var _0 : Bool; var _1 : stdgo.Error; } return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).matchString(_pat, _str) #else null #end;
            __self__.readCorpus = #if !macro function(_dir:GoString, _types:Slice<stdgo.reflect.Reflect.Type>):{ var _0 : Slice<{ var parent : GoString; var path : GoString; var data : Slice<GoUInt8>; var values : Slice<AnyInterface>; var generation : GoInt; var isSeed : Bool; }>; var _1 : stdgo.Error; } return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).readCorpus(_dir, _types) #else null #end;
            __self__.resetCoverage = #if !macro function():Void ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).resetCoverage() #else null #end;
            __self__.runFuzzWorker = #if !macro function(_fn:({ var parent : GoString; var path : GoString; var data : Slice<GoUInt8>; var values : Slice<AnyInterface>; var generation : GoInt; var isSeed : Bool; }) -> stdgo.Error):stdgo.Error return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).runFuzzWorker(_fn) #else null #end;
            __self__.setPanicOnExit0 = #if !macro function(_v:Bool):Void ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).setPanicOnExit0(_v) #else null #end;
            __self__.snapshotCoverage = #if !macro function():Void ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).snapshotCoverage() #else null #end;
            __self__.startCPUProfile = #if !macro function(_w:stdgo.io.Io.Writer):stdgo.Error return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).startCPUProfile(_w) #else null #end;
            __self__.startTestLog = #if !macro function(_w:stdgo.io.Io.Writer):Void ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).startTestLog(_w) #else null #end;
            __self__.stopCPUProfile = #if !macro function():Void ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).stopCPUProfile() #else null #end;
            __self__.stopTestLog = #if !macro function():stdgo.Error return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).stopTestLog() #else null #end;
            __self__.writeProfileTo = #if !macro function(_name:GoString, _w:stdgo.io.Io.Writer, _debug:GoInt):stdgo.Error return ((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)).writeProfileTo(_name, _w, _debug) #else null #end;
            __self__;
        }, _tests, _benchmarks, _fuzzTargets, _examples);
        Sys.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ((((("sort" : GoString))) : GoString));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };

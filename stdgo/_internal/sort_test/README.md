# Module: `stdgo._internal.sort`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _bench(_b:stdgo.Ref<stdgo._internal.testing.B>, _size:stdgo.GoInt, _algo:(), _name:stdgo.GoString):Void`](<#function-_bench>)

- [`function _countOps(_t:stdgo.Ref<stdgo._internal.testing.T_>, _algo:(), _name:stdgo.GoString):Void`](<#function-_countops>)

- [`function _f(_a:stdgo.Slice<stdgo.GoInt>, _x:stdgo.GoInt):()`](<#function-_f>)

- [`function _lg(_n:stdgo.GoInt):stdgo.GoInt`](<#function-_lg>)

- [`function _log2(_x:stdgo.GoInt):stdgo.GoInt`](<#function-_log2>)

- [`function _min(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt`](<#function-_min>)

- [`function _newAdversaryTestingData(_t:stdgo.Ref<stdgo._internal.testing.T_>, _size:stdgo.GoInt, _maxcmp:stdgo.GoInt):stdgo.Ref<stdgo._internal.sort_test.T_adversaryTestingData>`](<#function-_newadversarytestingdata>)

- [`function _printOrgans(_s:stdgo.Slice<stdgo.Ref<stdgo._internal.sort_test.Organ>>):Void`](<#function-_printorgans>)

- [`function _runSearchWrappers():Void`](<#function-_runsearchwrappers>)

- [`function _testBentleyMcIlroy(_t:stdgo.Ref<stdgo._internal.testing.T_>, _sort:(), _maxswap:()):Void`](<#function-_testbentleymcilroy>)

- [`function benchmarkSearchWrappers(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarksearchwrappers>)

- [`function benchmarkSort1e2(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarksort1e2>)

- [`function benchmarkSort1e4(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarksort1e4>)

- [`function benchmarkSort1e6(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarksort1e6>)

- [`function benchmarkSortInt1K(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarksortint1k>)

- [`function benchmarkSortInt1K_Mod8(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarksortint1k_mod8>)

- [`function benchmarkSortInt1K_Reversed(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarksortint1k_reversed>)

- [`function benchmarkSortInt1K_Sorted(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarksortint1k_sorted>)

- [`function benchmarkSortInt64K(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarksortint64k>)

- [`function benchmarkSortInt64K_Slice(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarksortint64k_slice>)

- [`function benchmarkSortString1K(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarksortstring1k>)

- [`function benchmarkSortString1K_Slice(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarksortstring1k_slice>)

- [`function benchmarkStable1e2(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkstable1e2>)

- [`function benchmarkStable1e4(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkstable1e4>)

- [`function benchmarkStable1e6(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkstable1e6>)

- [`function benchmarkStableInt1K(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkstableint1k>)

- [`function benchmarkStableInt1K_Slice(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkstableint1k_slice>)

- [`function benchmarkStableInt64K(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkstableint64k>)

- [`function benchmarkStableString1K(_b:stdgo.Ref<stdgo._internal.testing.B>):Void`](<#function-benchmarkstablestring1k>)

- [`function example():Void`](<#function-example>)

- [`function exampleFloat64s():Void`](<#function-examplefloat64s>)

- [`function exampleFloat64sAreSorted():Void`](<#function-examplefloat64saresorted>)

- [`function exampleInts():Void`](<#function-exampleints>)

- [`function exampleIntsAreSorted():Void`](<#function-exampleintsaresorted>)

- [`function exampleReverse():Void`](<#function-examplereverse>)

- [`function exampleSearch():Void`](<#function-examplesearch>)

- [`function exampleSearchFloat64s():Void`](<#function-examplesearchfloat64s>)

- [`function exampleSearchInts():Void`](<#function-examplesearchints>)

- [`function exampleSearch_descendingOrder():Void`](<#function-examplesearch_descendingorder>)

- [`function exampleSlice():Void`](<#function-exampleslice>)

- [`function exampleSliceStable():Void`](<#function-exampleslicestable>)

- [`function exampleStrings():Void`](<#function-examplestrings>)

- [`function example_sortKeys():Void`](<#function-example_sortkeys>)

- [`function example_sortMultiKeys():Void`](<#function-example_sortmultikeys>)

- [`function example_sortWrapper():Void`](<#function-example_sortwrapper>)

- [`function orderedBy(_less:haxe.Rest<stdgo._internal.sort_test.T_lessFunc>):stdgo.Ref<stdgo._internal.sort_test.T_multiSorter>`](<#function-orderedby>)

- [`function testAdversary(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testadversary>)

- [`function testBreakPatterns(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testbreakpatterns>)

- [`function testCountSortOps(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testcountsortops>)

- [`function testCountStableOps(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testcountstableops>)

- [`function testFind(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testfind>)

- [`function testFindExhaustive(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testfindexhaustive>)

- [`function testFloat64s(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testfloat64s>)

- [`function testHeapsortBM(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testheapsortbm>)

- [`function testInts(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testints>)

- [`function testNonDeterministicComparison(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testnondeterministiccomparison>)

- [`function testReverseRange(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testreverserange>)

- [`function testReverseSortIntSlice(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testreversesortintslice>)

- [`function testSearch(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testsearch>)

- [`function testSearchEfficiency(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testsearchefficiency>)

- [`function testSearchExhaustive(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testsearchexhaustive>)

- [`function testSearchWrappers(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testsearchwrappers>)

- [`function testSearchWrappersDontAlloc(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testsearchwrappersdontalloc>)

- [`function testSlice(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testslice>)

- [`function testSortBM(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testsortbm>)

- [`function testSortFloat64Slice(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testsortfloat64slice>)

- [`function testSortIntSlice(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testsortintslice>)

- [`function testSortLarge_Random(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testsortlarge_random>)

- [`function testSortStringSlice(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-testsortstringslice>)

- [`function testStability(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-teststability>)

- [`function testStableBM(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-teststablebm>)

- [`function testStableInts(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-teststableints>)

- [`function testStrings(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void`](<#function-teststrings>)

- [`function main():Void`](<#function-main>)

- [class ByName](<#class-byname>)

  - [`function len():stdgo.GoInt`](<#byname-function-len>)

  - [`function new(?organs:stdgo._internal.sort_test.Organs):Void`](<#byname-function-new>)

  - [`function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void`](<#byname-function-swap>)

  - [`function len():stdgo.GoInt`](<#byname-function-len>)

  - [`function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool`](<#byname-function-less>)

  - [`function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void`](<#byname-function-swap>)

- [class ByWeight](<#class-byweight>)

  - [`function len():stdgo.GoInt`](<#byweight-function-len>)

  - [`function new(?organs:stdgo._internal.sort_test.Organs):Void`](<#byweight-function-new>)

  - [`function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void`](<#byweight-function-swap>)

  - [`function len():stdgo.GoInt`](<#byweight-function-len>)

  - [`function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool`](<#byweight-function-less>)

  - [`function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void`](<#byweight-function-swap>)

- [class Change](<#class-change>)

  - [`function new(?_user:stdgo.GoString, ?_language:stdgo.GoString, ?_lines:stdgo.GoInt):Void`](<#change-function-new>)

- [class Organ](<#class-organ>)

  - [`function new(?name:stdgo.GoString, ?weight:stdgo._internal.sort_test.Grams):Void`](<#organ-function-new>)

- [class Person](<#class-person>)

  - [`function new(?name:stdgo.GoString, ?age:stdgo.GoInt):Void`](<#person-function-new>)

  - [`function string():stdgo.GoString`](<#person-function-string>)

- [class Planet](<#class-planet>)

  - [`function new(?_name:stdgo.GoString, ?_mass:stdgo._internal.sort_test.T_earthMass, ?_distance:stdgo._internal.sort_test.T_au):Void`](<#planet-function-new>)

- [typedef By](<#typedef-by>)

- [typedef ByAge](<#typedef-byage>)

- [typedef Grams](<#typedef-grams>)

- [typedef Organs](<#typedef-organs>)

- [typedef T\_\_struct\_0](<#typedef-t__struct_0>)

- [typedef T\_\_struct\_1](<#typedef-t__struct_1>)

- [typedef T\_\_struct\_2](<#typedef-t__struct_2>)

- [typedef T\_\_struct\_3](<#typedef-t__struct_3>)

- [typedef T\_\_struct\_4](<#typedef-t__struct_4>)

- [typedef T\_au](<#typedef-t_au>)

- [typedef T\_earthMass](<#typedef-t_earthmass>)

- [typedef T\_intPairs](<#typedef-t_intpairs>)

- [typedef T\_lessFunc](<#typedef-t_lessfunc>)

# Constants


```haxe
import stdgo._internal.sort_test.Sort
```


```haxe
final __Copy:stdgo.GoUInt64 = ((6i64 : stdgo.GoUInt64))
```


```haxe
final __Dither:stdgo.GoUInt64 = ((6i64 : stdgo.GoUInt64))
```


```haxe
final __NDist:stdgo.GoUInt64 = ((5i64 : stdgo.GoUInt64))
```


```haxe
final __NMode:stdgo.GoUInt64 = ((6i64 : stdgo.GoUInt64))
```


```haxe
final __Plateau:stdgo.GoUInt64 = ((5i64 : stdgo.GoUInt64))
```


```haxe
final __Rand:stdgo.GoUInt64 = ((5i64 : stdgo.GoUInt64))
```


```haxe
final __Reverse:stdgo.GoUInt64 = ((6i64 : stdgo.GoUInt64))
```


```haxe
final __ReverseFirstHalf:stdgo.GoUInt64 = ((6i64 : stdgo.GoUInt64))
```


```haxe
final __ReverseSecondHalf:stdgo.GoUInt64 = ((6i64 : stdgo.GoUInt64))
```


```haxe
final __Sawtooth:stdgo.GoUInt64 = ((5i64 : stdgo.GoUInt64))
```


```haxe
final __Shuffle:stdgo.GoUInt64 = ((5i64 : stdgo.GoUInt64))
```


```haxe
final __Sorted:stdgo.GoUInt64 = ((6i64 : stdgo.GoUInt64))
```


```haxe
final __Stagger:stdgo.GoUInt64 = ((5i64 : stdgo.GoUInt64))
```


# Variables


```haxe
import stdgo._internal.sort_test.Sort
```


```haxe
var _changes:stdgo.Slice<stdgo._internal.sort_test.Change>
```


```haxe
var _countOpsSizes:stdgo.Slice<stdgo.GoInt>
```


```haxe
var _data:stdgo.Slice<stdgo.GoInt>
```


```haxe
var _fdata:stdgo.Slice<stdgo.GoFloat64>
```


```haxe
var _float64s:stdgo.GoArray<stdgo.GoFloat64>
```


```haxe
var _ints:stdgo.GoArray<stdgo.GoInt>
```


```haxe
var _planets:stdgo.Slice<stdgo._internal.sort_test.Planet>
```


```haxe
var _sdata:stdgo.Slice<stdgo.GoString>
```


```haxe
var _strings:stdgo.GoArray<stdgo.GoString>
```


```haxe
var _tests:stdgo.Slice<stdgo._internal.sort_test.T__struct_1>
```


```haxe
var _wrappertests:stdgo.Slice<stdgo._internal.sort_test.T__struct_3>
```


```haxe
var _:Bool
```


```haxe
var _benchmarks:stdgo.Slice<stdgo._internal.testing.InternalBenchmark>
```


```haxe
var _examples:stdgo.Slice<stdgo._internal.testing.InternalExample>
```


```haxe
var _fuzzTargets:stdgo.Slice<stdgo._internal.testing.InternalFuzzTarget>
```


```haxe
var _tests:stdgo.Slice<stdgo._internal.testing.InternalTest>
```


# Functions


```haxe
import stdgo._internal.sort_test.Sort
```


## function \_bench


```haxe
function _bench(_b:stdgo.Ref<stdgo._internal.testing.B>, _size:stdgo.GoInt, _algo:(), _name:stdgo.GoString):Void
```


[\(view code\)](<./Sort.hx#L1391>)


## function \_countOps


```haxe
function _countOps(_t:stdgo.Ref<stdgo._internal.testing.T_>, _algo:(), _name:stdgo.GoString):Void
```


[\(view code\)](<./Sort.hx#L1365>)


## function \_f


```haxe
function _f(_a:stdgo.Slice<stdgo.GoInt>, _x:stdgo.GoInt):()
```


[\(view code\)](<./Sort.hx#L556>)


## function \_lg


```haxe
function _lg(_n:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Sort.hx#L1143>)


## function \_log2


```haxe
function _log2(_x:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Sort.hx#L623>)


## function \_min


```haxe
function _min(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Sort.hx#L1137>)


## function \_newAdversaryTestingData


```haxe
function _newAdversaryTestingData(_t:stdgo.Ref<stdgo._internal.testing.T_>, _size:stdgo.GoInt, _maxcmp:stdgo.GoInt):stdgo.Ref<stdgo._internal.sort_test.T_adversaryTestingData>
```


[\(view code\)](<./Sort.hx#L1285>)


## function \_printOrgans


```haxe
function _printOrgans(_s:stdgo.Slice<stdgo.Ref<stdgo._internal.sort_test.Organ>>):Void
```


[\(view code\)](<./Sort.hx#L551>)


## function \_runSearchWrappers


```haxe
function _runSearchWrappers():Void
```


[\(view code\)](<./Sort.hx#L668>)


## function \_testBentleyMcIlroy


```haxe
function _testBentleyMcIlroy(_t:stdgo.Ref<stdgo._internal.testing.T_>, _sort:(), _maxswap:()):Void
```


[\(view code\)](<./Sort.hx#L1150>)


## function benchmarkSearchWrappers


```haxe
function benchmarkSearchWrappers(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Sort.hx#L688>)


## function benchmarkSort1e2


```haxe
function benchmarkSort1e2(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Sort.hx#L1430>)


## function benchmarkSort1e4


```haxe
function benchmarkSort1e4(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Sort.hx#L1436>)


## function benchmarkSort1e6


```haxe
function benchmarkSort1e6(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Sort.hx#L1442>)


## function benchmarkSortInt1K


```haxe
function benchmarkSortInt1K(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Sort.hx#L973>)


## function benchmarkSortInt1K\_Mod8


```haxe
function benchmarkSortInt1K_Mod8(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Sort.hx#L1027>)


## function benchmarkSortInt1K\_Reversed


```haxe
function benchmarkSortInt1K_Reversed(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Sort.hx#L1009>)


## function benchmarkSortInt1K\_Sorted


```haxe
function benchmarkSortInt1K_Sorted(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Sort.hx#L991>)


## function benchmarkSortInt64K


```haxe
function benchmarkSortInt64K(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Sort.hx#L1081>)


## function benchmarkSortInt64K\_Slice


```haxe
function benchmarkSortInt64K_Slice(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Sort.hx#L1099>)


## function benchmarkSortString1K


```haxe
function benchmarkSortString1K(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Sort.hx#L920>)


## function benchmarkSortString1K\_Slice


```haxe
function benchmarkSortString1K_Slice(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Sort.hx#L937>)


## function benchmarkStable1e2


```haxe
function benchmarkStable1e2(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Sort.hx#L1433>)


## function benchmarkStable1e4


```haxe
function benchmarkStable1e4(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Sort.hx#L1439>)


## function benchmarkStable1e6


```haxe
function benchmarkStable1e6(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Sort.hx#L1445>)


## function benchmarkStableInt1K


```haxe
function benchmarkStableInt1K(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Sort.hx#L1045>)


## function benchmarkStableInt1K\_Slice


```haxe
function benchmarkStableInt1K_Slice(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Sort.hx#L1062>)


## function benchmarkStableInt64K


```haxe
function benchmarkStableInt64K(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Sort.hx#L1119>)


## function benchmarkStableString1K


```haxe
function benchmarkStableString1K(_b:stdgo.Ref<stdgo._internal.testing.B>):Void
```


[\(view code\)](<./Sort.hx#L956>)


## function example


```haxe
function example():Void
```


[\(view code\)](<./Sort.hx#L379>)


## function exampleFloat64s


```haxe
function exampleFloat64s():Void
```


[\(view code\)](<./Sort.hx#L494>)


## function exampleFloat64sAreSorted


```haxe
function exampleFloat64sAreSorted():Void
```


[\(view code\)](<./Sort.hx#L502>)


## function exampleInts


```haxe
function exampleInts():Void
```


[\(view code\)](<./Sort.hx#L481>)


## function exampleIntsAreSorted


```haxe
function exampleIntsAreSorted():Void
```


[\(view code\)](<./Sort.hx#L486>)


## function exampleReverse


```haxe
function exampleReverse():Void
```


[\(view code\)](<./Sort.hx#L510>)


## function exampleSearch


```haxe
function exampleSearch():Void
```


[\(view code\)](<./Sort.hx#L439>)


## function exampleSearchFloat64s


```haxe
function exampleSearchFloat64s():Void
```


[\(view code\)](<./Sort.hx#L463>)


## function exampleSearchInts


```haxe
function exampleSearchInts():Void
```


[\(view code\)](<./Sort.hx#L472>)


## function exampleSearch\_descendingOrder


```haxe
function exampleSearch_descendingOrder():Void
```


[\(view code\)](<./Sort.hx#L451>)


## function exampleSlice


```haxe
function exampleSlice():Void
```


[\(view code\)](<./Sort.hx#L515>)


## function exampleSliceStable


```haxe
function exampleSliceStable():Void
```


[\(view code\)](<./Sort.hx#L526>)


## function exampleStrings


```haxe
function exampleStrings():Void
```


[\(view code\)](<./Sort.hx#L537>)


## function example\_sortKeys


```haxe
function example_sortKeys():Void
```


[\(view code\)](<./Sort.hx#L389>)


## function example\_sortMultiKeys


```haxe
function example_sortMultiKeys():Void
```


[\(view code\)](<./Sort.hx#L415>)


## function example\_sortWrapper


```haxe
function example_sortWrapper():Void
```


[\(view code\)](<./Sort.hx#L542>)


## function orderedBy


```haxe
function orderedBy(_less:haxe.Rest<stdgo._internal.sort_test.T_lessFunc>):stdgo.Ref<stdgo._internal.sort_test.T_multiSorter>
```


[\(view code\)](<./Sort.hx#L411>)


## function testAdversary


```haxe
function testAdversary(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Sort.hx#L1296>)


## function testBreakPatterns


```haxe
function testBreakPatterns(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Sort.hx#L844>)


## function testCountSortOps


```haxe
function testCountSortOps(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Sort.hx#L1388>)


## function testCountStableOps


```haxe
function testCountStableOps(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Sort.hx#L1385>)


## function testFind


```haxe
function testFind(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Sort.hx#L569>)


## function testFindExhaustive


```haxe
function testFindExhaustive(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Sort.hx#L714>)


## function testFloat64s


```haxe
function testFloat64s(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Sort.hx#L777>)


## function testHeapsortBM


```haxe
function testHeapsortBM(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Sort.hx#L1275>)


## function testInts


```haxe
function testInts(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Sort.hx#L769>)


## function testNonDeterministicComparison


```haxe
function testNonDeterministicComparison(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Sort.hx#L874>)


## function testReverseRange


```haxe
function testReverseRange(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Sort.hx#L854>)


## function testReverseSortIntSlice


```haxe
function testReverseSortIntSlice(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Sort.hx#L825>)


## function testSearch


```haxe
function testSearch(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Sort.hx#L561>)


## function testSearchEfficiency


```haxe
function testSearchEfficiency(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Sort.hx#L633>)


## function testSearchExhaustive


```haxe
function testSearchExhaustive(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Sort.hx#L696>)


## function testSearchWrappers


```haxe
function testSearchWrappers(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Sort.hx#L661>)


## function testSearchWrappersDontAlloc


```haxe
function testSearchWrappersDontAlloc(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Sort.hx#L676>)


## function testSlice


```haxe
function testSlice(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Sort.hx#L793>)


## function testSortBM


```haxe
function testSortBM(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Sort.hx#L1270>)


## function testSortFloat64Slice


```haxe
function testSortFloat64Slice(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Sort.hx#L751>)


## function testSortIntSlice


```haxe
function testSortIntSlice(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Sort.hx#L742>)


## function testSortLarge\_Random


```haxe
function testSortLarge_Random(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Sort.hx#L805>)


## function testSortStringSlice


```haxe
function testSortStringSlice(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Sort.hx#L760>)


## function testStability


```haxe
function testStability(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Sort.hx#L1314>)


## function testStableBM


```haxe
function testStableBM(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Sort.hx#L1280>)


## function testStableInts


```haxe
function testStableInts(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Sort.hx#L1307>)


## function testStrings


```haxe
function testStrings(_t:stdgo.Ref<stdgo._internal.testing.T_>):Void
```


[\(view code\)](<./Sort.hx#L785>)


## function main


```haxe
function main():Void
```


[\(view code\)](<./Sort.hx#L70>)


# Classes


```haxe
import stdgo._internal.sort_test.*
```


## class ByName


```haxe
var organs:stdgo._internal.sort_test.Organs
```


### ByName function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Sort_test.hx#L212>)


### ByName function new


```haxe
function new(?organs:stdgo._internal.sort_test.Organs):Void
```


[\(view code\)](<./Sort_test.hx#L207>)


### ByName function swap


```haxe
function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


[\(view code\)](<./Sort_test.hx#L214>)


### ByName function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Sort_test.hx#L1593>)


### ByName function less


```haxe
function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```


[\(view code\)](<./Sort_test.hx#L1586>)


### ByName function swap


```haxe
function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


[\(view code\)](<./Sort_test.hx#L1591>)


## class ByWeight


```haxe
var organs:stdgo._internal.sort_test.Organs
```


### ByWeight function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Sort_test.hx#L227>)


### ByWeight function new


```haxe
function new(?organs:stdgo._internal.sort_test.Organs):Void
```


[\(view code\)](<./Sort_test.hx#L222>)


### ByWeight function swap


```haxe
function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


[\(view code\)](<./Sort_test.hx#L229>)


### ByWeight function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Sort_test.hx#L1619>)


### ByWeight function less


```haxe
function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```


[\(view code\)](<./Sort_test.hx#L1612>)


### ByWeight function swap


```haxe
function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


[\(view code\)](<./Sort_test.hx#L1617>)


## class Change


```haxe
var _language:stdgo.GoString
```


```haxe
var _lines:stdgo.GoInt
```


```haxe
var _user:stdgo.GoString
```


### Change function new


```haxe
function new(?_user:stdgo.GoString, ?_language:stdgo.GoString, ?_lines:stdgo.GoInt):Void
```


[\(view code\)](<./Sort_test.hx#L170>)


## class Organ


```haxe
var name:stdgo.GoString
```


```haxe
var weight:stdgo._internal.sort_test.Grams
```


### Organ function new


```haxe
function new(?name:stdgo.GoString, ?weight:stdgo._internal.sort_test.Grams):Void
```


[\(view code\)](<./Sort_test.hx#L195>)


## class Person


```haxe
var age:stdgo.GoInt
```


```haxe
var name:stdgo.GoString
```


### Person function new


```haxe
function new(?name:stdgo.GoString, ?age:stdgo.GoInt):Void
```


[\(view code\)](<./Sort_test.hx#L131>)


### Person function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Sort_test.hx#L1461>)


## class Planet


```haxe
var _distance:stdgo._internal.sort_test.T_au
```


```haxe
var _mass:stdgo._internal.sort_test.T_earthMass
```


```haxe
var _name:stdgo.GoString
```


### Planet function new


```haxe
function new(?_name:stdgo.GoString, ?_mass:stdgo._internal.sort_test.T_earthMass, ?_distance:stdgo._internal.sort_test.T_au):Void
```


[\(view code\)](<./Sort_test.hx#L144>)


# Typedefs


```haxe
import stdgo._internal.sort_test.*
```


## typedef By


```haxe
typedef By = (:stdgo.Ref<stdgo._internal.sort_test.Planet>, :stdgo.Ref<stdgo._internal.sort_test.Planet>):Bool;
```


## typedef ByAge


```haxe
typedef ByAge = stdgo.Slice<stdgo._internal.sort_test.Person>;
```


## typedef Grams


```haxe
typedef Grams = stdgo.GoInt;
```


## typedef Organs


```haxe
typedef Organs = stdgo.Slice<stdgo.Ref<stdgo._internal.sort_test.Organ>>;
```


## typedef T\_\_struct\_0


```haxe
typedef T__struct_0 = {
	name:stdgo.GoString;
	age:stdgo.GoInt;
};
```


## typedef T\_\_struct\_1


```haxe
typedef T__struct_1 = {
	_name:stdgo.GoString;
	_n:stdgo.GoInt;
	_i:stdgo.GoInt;
	public function _f();
};
```


## typedef T\_\_struct\_2


```haxe
typedef T__struct_2 = {
	_wantPos:stdgo.GoInt;
	_wantFound:Bool;
	_target:stdgo.GoString;
	_data:stdgo.Slice<stdgo.GoString>;
};
```


## typedef T\_\_struct\_3


```haxe
typedef T__struct_3 = {
	_result:stdgo.GoInt;
	_name:stdgo.GoString;
	_i:stdgo.GoInt;
};
```


## typedef T\_\_struct\_4


```haxe
typedef T__struct_4 = {
	_b:stdgo.GoInt;
	_a:stdgo.GoInt;
};
```


## typedef T\_au


```haxe
typedef T_au = stdgo.GoFloat64;
```


## typedef T\_earthMass


```haxe
typedef T_earthMass = stdgo.GoFloat64;
```


## typedef T\_intPairs


```haxe
typedef T_intPairs = stdgo.Slice<stdgo._internal.sort_test.T__struct_4>;
```


## typedef T\_lessFunc


```haxe
typedef T_lessFunc = (:stdgo.Ref<stdgo._internal.sort_test.Change>, :stdgo.Ref<stdgo._internal.sort_test.Change>):Bool;
```



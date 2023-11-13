# Module: `stdgo.sort`

[(view library index)](../stdgo.md)


# Overview


# Index


- [Constants](<#constants>)

- [Variables](<#variables>)

- [`function _bench(_b:stdgo.Ref<stdgo.testing.B>, _size:stdgo.GoInt, _algo:(), _name:stdgo.GoString):Void`](<#function-_bench>)

- [`function _countOps(_t:stdgo.Ref<stdgo.testing.T>, _algo:(), _name:stdgo.GoString):Void`](<#function-_countops>)

- [`function _f(_a:stdgo.Slice<stdgo.GoInt>, _x:stdgo.GoInt):()`](<#function-_f>)

- [`function _lg(_n:stdgo.GoInt):stdgo.GoInt`](<#function-_lg>)

- [`function _log2(_x:stdgo.GoInt):stdgo.GoInt`](<#function-_log2>)

- [`function _min(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt`](<#function-_min>)

- [`function _newAdversaryTestingData(_t:stdgo.Ref<stdgo.testing.T>, _size:stdgo.GoInt, _maxcmp:stdgo.GoInt):stdgo.Ref<stdgo.sort_test.T_adversaryTestingData>`](<#function-_newadversarytestingdata>)

- [`function _printOrgans(_s:stdgo.Slice<stdgo.Ref<stdgo.sort_test.Organ>>):Void`](<#function-_printorgans>)

- [`function _runSearchWrappers():Void`](<#function-_runsearchwrappers>)

- [`function _testBentleyMcIlroy(_t:stdgo.Ref<stdgo.testing.T>, _sort:(), _maxswap:()):Void`](<#function-_testbentleymcilroy>)

- [`function benchmarkSearchWrappers(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksearchwrappers>)

- [`function benchmarkSort1e2(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksort1e2>)

- [`function benchmarkSort1e4(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksort1e4>)

- [`function benchmarkSort1e6(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksort1e6>)

- [`function benchmarkSortInt1K(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksortint1k>)

- [`function benchmarkSortInt1K_Mod8(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksortint1k_mod8>)

- [`function benchmarkSortInt1K_Reversed(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksortint1k_reversed>)

- [`function benchmarkSortInt1K_Sorted(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksortint1k_sorted>)

- [`function benchmarkSortInt64K(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksortint64k>)

- [`function benchmarkSortInt64K_Slice(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksortint64k_slice>)

- [`function benchmarkSortString1K(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksortstring1k>)

- [`function benchmarkSortString1K_Slice(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarksortstring1k_slice>)

- [`function benchmarkStable1e2(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkstable1e2>)

- [`function benchmarkStable1e4(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkstable1e4>)

- [`function benchmarkStable1e6(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkstable1e6>)

- [`function benchmarkStableInt1K(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkstableint1k>)

- [`function benchmarkStableInt1K_Slice(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkstableint1k_slice>)

- [`function benchmarkStableInt64K(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkstableint64k>)

- [`function benchmarkStableString1K(_b:stdgo.Ref<stdgo.testing.B>):Void`](<#function-benchmarkstablestring1k>)

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

- [`function orderedBy(_less:haxe.Rest<stdgo.sort_test.T_lessFunc>):stdgo.Ref<stdgo.sort_test.T_multiSorter>`](<#function-orderedby>)

- [`function testAdversary(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testadversary>)

- [`function testBreakPatterns(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testbreakpatterns>)

- [`function testCountSortOps(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcountsortops>)

- [`function testCountStableOps(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testcountstableops>)

- [`function testFind(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testfind>)

- [`function testFindExhaustive(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testfindexhaustive>)

- [`function testFloat64s(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testfloat64s>)

- [`function testHeapsortBM(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testheapsortbm>)

- [`function testInts(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testints>)

- [`function testNonDeterministicComparison(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testnondeterministiccomparison>)

- [`function testReverseRange(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testreverserange>)

- [`function testReverseSortIntSlice(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testreversesortintslice>)

- [`function testSearch(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testsearch>)

- [`function testSearchEfficiency(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testsearchefficiency>)

- [`function testSearchExhaustive(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testsearchexhaustive>)

- [`function testSearchWrappers(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testsearchwrappers>)

- [`function testSearchWrappersDontAlloc(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testsearchwrappersdontalloc>)

- [`function testSlice(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testslice>)

- [`function testSortBM(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testsortbm>)

- [`function testSortFloat64Slice(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testsortfloat64slice>)

- [`function testSortIntSlice(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testsortintslice>)

- [`function testSortLarge_Random(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testsortlarge_random>)

- [`function testSortStringSlice(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-testsortstringslice>)

- [`function testStability(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-teststability>)

- [`function testStableBM(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-teststablebm>)

- [`function testStableInts(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-teststableints>)

- [`function testStrings(_t:stdgo.Ref<stdgo.testing.T>):Void`](<#function-teststrings>)

- [`function main():Void`](<#function-main>)

- [class ByName](<#class-byname>)

  - [`function len():stdgo.GoInt`](<#byname-function-len>)

  - [`function new(?organs:Null<stdgo.sort_test.Organs>):Void`](<#byname-function-new>)

  - [`function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void`](<#byname-function-swap>)

  - [`function len():stdgo.GoInt`](<#byname-function-len>)

  - [`function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool`](<#byname-function-less>)

  - [`function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void`](<#byname-function-swap>)

- [class ByWeight](<#class-byweight>)

  - [`function len():stdgo.GoInt`](<#byweight-function-len>)

  - [`function new(?organs:Null<stdgo.sort_test.Organs>):Void`](<#byweight-function-new>)

  - [`function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void`](<#byweight-function-swap>)

  - [`function len():stdgo.GoInt`](<#byweight-function-len>)

  - [`function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool`](<#byweight-function-less>)

  - [`function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void`](<#byweight-function-swap>)

- [class Change](<#class-change>)

  - [`function new(?_user:stdgo.GoString, ?_language:stdgo.GoString, ?_lines:Null<stdgo.GoInt>):Void`](<#change-function-new>)

- [class Organ](<#class-organ>)

  - [`function new(?name:stdgo.GoString, ?weight:Null<stdgo.sort_test.Grams>):Void`](<#organ-function-new>)

- [class Person](<#class-person>)

  - [`function new(?name:stdgo.GoString, ?age:Null<stdgo.GoInt>):Void`](<#person-function-new>)

  - [`function string():stdgo.GoString`](<#person-function-string>)

- [class Planet](<#class-planet>)

  - [`function new(?_name:stdgo.GoString, ?_mass:Null<stdgo.sort_test.T_earthMass>, ?_distance:Null<stdgo.sort_test.T_au>):Void`](<#planet-function-new>)

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
import stdgo.sort_test.Sort
```


```haxe
final __Copy:stdgo.GoUInt64 = ((6i64 : stdgo.StdGoTypes.GoUInt64))
```


```haxe
final __Dither:stdgo.GoUInt64 = ((6i64 : stdgo.StdGoTypes.GoUInt64))
```


```haxe
final __NDist:stdgo.GoUInt64 = ((5i64 : stdgo.StdGoTypes.GoUInt64))
```


```haxe
final __NMode:stdgo.GoUInt64 = ((6i64 : stdgo.StdGoTypes.GoUInt64))
```


```haxe
final __Plateau:stdgo.GoUInt64 = ((5i64 : stdgo.StdGoTypes.GoUInt64))
```


```haxe
final __Rand:stdgo.GoUInt64 = ((5i64 : stdgo.StdGoTypes.GoUInt64))
```


```haxe
final __Reverse:stdgo.GoUInt64 = ((6i64 : stdgo.StdGoTypes.GoUInt64))
```


```haxe
final __ReverseFirstHalf:stdgo.GoUInt64 = ((6i64 : stdgo.StdGoTypes.GoUInt64))
```


```haxe
final __ReverseSecondHalf:stdgo.GoUInt64 = ((6i64 : stdgo.StdGoTypes.GoUInt64))
```


```haxe
final __Sawtooth:stdgo.GoUInt64 = ((5i64 : stdgo.StdGoTypes.GoUInt64))
```


```haxe
final __Shuffle:stdgo.GoUInt64 = ((5i64 : stdgo.StdGoTypes.GoUInt64))
```


```haxe
final __Sorted:stdgo.GoUInt64 = ((6i64 : stdgo.StdGoTypes.GoUInt64))
```


```haxe
final __Stagger:stdgo.GoUInt64 = ((5i64 : stdgo.StdGoTypes.GoUInt64))
```


# Variables


```haxe
import stdgo.sort_test.Sort
```


```haxe
var _changes:stdgo.Slice<stdgo.sort_test.Change>
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
var _planets:stdgo.Slice<stdgo.sort_test.Planet>
```


```haxe
var _sdata:stdgo.Slice<stdgo.GoString>
```


```haxe
var _strings:stdgo.GoArray<stdgo.GoString>
```


```haxe
var _tests:stdgo.Slice<stdgo.sort_test.T__struct_1>
```


```haxe
var _wrappertests:stdgo.Slice<stdgo.sort_test.T__struct_3>
```


```haxe
var _:Bool
```


```haxe
var _benchmarks:stdgo.Slice<stdgo.testing.InternalBenchmark>
```


```haxe
var _examples:stdgo.Slice<stdgo.testing.InternalExample>
```


```haxe
var _fuzzTargets:stdgo.Slice<stdgo.testing.InternalFuzzTarget>
```


```haxe
var _tests:stdgo.Slice<stdgo.testing.InternalTest>
```


# Functions


```haxe
import stdgo.sort_test.Sort
```


## function \_bench


```haxe
function _bench(_b:stdgo.Ref<stdgo.testing.B>, _size:stdgo.GoInt, _algo:(), _name:stdgo.GoString):Void
```


[\(view code\)](<./Sort.hx#L1681>)


## function \_countOps


```haxe
function _countOps(_t:stdgo.Ref<stdgo.testing.T>, _algo:(), _name:stdgo.GoString):Void
```


[\(view code\)](<./Sort.hx#L1655>)


## function \_f


```haxe
function _f(_a:stdgo.Slice<stdgo.GoInt>, _x:stdgo.GoInt):()
```


[\(view code\)](<./Sort.hx#L818>)


## function \_lg


```haxe
function _lg(_n:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Sort.hx#L1433>)


## function \_log2


```haxe
function _log2(_x:stdgo.GoInt):stdgo.GoInt
```



log2 computes the binary logarithm of x, rounded up to the next integer.
\(log2\(0\) == 0, log2\(1\) == 0, log2\(2\) == 1, log2\(3\) == 2, etc.\)  

[\(view code\)](<./Sort.hx#L902>)


## function \_min


```haxe
function _min(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Sort.hx#L1427>)


## function \_newAdversaryTestingData


```haxe
function _newAdversaryTestingData(_t:stdgo.Ref<stdgo.testing.T>, _size:stdgo.GoInt, _maxcmp:stdgo.GoInt):stdgo.Ref<stdgo.sort_test.T_adversaryTestingData>
```


[\(view code\)](<./Sort.hx#L1575>)


## function \_printOrgans


```haxe
function _printOrgans(_s:stdgo.Slice<stdgo.Ref<stdgo.sort_test.Organ>>):Void
```


[\(view code\)](<./Sort.hx#L813>)


## function \_runSearchWrappers


```haxe
function _runSearchWrappers():Void
```


[\(view code\)](<./Sort.hx#L947>)


## function \_testBentleyMcIlroy


```haxe
function _testBentleyMcIlroy(_t:stdgo.Ref<stdgo.testing.T>, _sort:(), _maxswap:()):Void
```


[\(view code\)](<./Sort.hx#L1440>)


## function benchmarkSearchWrappers


```haxe
function benchmarkSearchWrappers(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Sort.hx#L967>)


## function benchmarkSort1e2


```haxe
function benchmarkSort1e2(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Sort.hx#L1720>)


## function benchmarkSort1e4


```haxe
function benchmarkSort1e4(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Sort.hx#L1726>)


## function benchmarkSort1e6


```haxe
function benchmarkSort1e6(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Sort.hx#L1732>)


## function benchmarkSortInt1K


```haxe
function benchmarkSortInt1K(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Sort.hx#L1263>)


## function benchmarkSortInt1K\_Mod8


```haxe
function benchmarkSortInt1K_Mod8(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Sort.hx#L1317>)


## function benchmarkSortInt1K\_Reversed


```haxe
function benchmarkSortInt1K_Reversed(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Sort.hx#L1299>)


## function benchmarkSortInt1K\_Sorted


```haxe
function benchmarkSortInt1K_Sorted(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Sort.hx#L1281>)


## function benchmarkSortInt64K


```haxe
function benchmarkSortInt64K(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Sort.hx#L1371>)


## function benchmarkSortInt64K\_Slice


```haxe
function benchmarkSortInt64K_Slice(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Sort.hx#L1389>)


## function benchmarkSortString1K


```haxe
function benchmarkSortString1K(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Sort.hx#L1210>)


## function benchmarkSortString1K\_Slice


```haxe
function benchmarkSortString1K_Slice(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Sort.hx#L1227>)


## function benchmarkStable1e2


```haxe
function benchmarkStable1e2(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Sort.hx#L1723>)


## function benchmarkStable1e4


```haxe
function benchmarkStable1e4(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Sort.hx#L1729>)


## function benchmarkStable1e6


```haxe
function benchmarkStable1e6(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Sort.hx#L1735>)


## function benchmarkStableInt1K


```haxe
function benchmarkStableInt1K(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Sort.hx#L1335>)


## function benchmarkStableInt1K\_Slice


```haxe
function benchmarkStableInt1K_Slice(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Sort.hx#L1352>)


## function benchmarkStableInt64K


```haxe
function benchmarkStableInt64K(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Sort.hx#L1409>)


## function benchmarkStableString1K


```haxe
function benchmarkStableString1K(_b:stdgo.Ref<stdgo.testing.B>):Void
```


[\(view code\)](<./Sort.hx#L1246>)


## function example


```haxe
function example():Void
```


[\(view code\)](<./Sort.hx#L591>)


## function exampleFloat64s


```haxe
function exampleFloat64s():Void
```


[\(view code\)](<./Sort.hx#L756>)


## function exampleFloat64sAreSorted


```haxe
function exampleFloat64sAreSorted():Void
```


[\(view code\)](<./Sort.hx#L764>)


## function exampleInts


```haxe
function exampleInts():Void
```


[\(view code\)](<./Sort.hx#L743>)


## function exampleIntsAreSorted


```haxe
function exampleIntsAreSorted():Void
```


[\(view code\)](<./Sort.hx#L748>)


## function exampleReverse


```haxe
function exampleReverse():Void
```


[\(view code\)](<./Sort.hx#L772>)


## function exampleSearch


```haxe
function exampleSearch():Void
```



This example demonstrates searching a list sorted in ascending order.  

[\(view code\)](<./Sort.hx#L666>)


## function exampleSearchFloat64s


```haxe
function exampleSearchFloat64s():Void
```



This example demonstrates searching for float64 in a list sorted in ascending order.  

[\(view code\)](<./Sort.hx#L722>)


## function exampleSearchInts


```haxe
function exampleSearchInts():Void
```



This example demonstrates searching for int in a list sorted in ascending order.  

[\(view code\)](<./Sort.hx#L734>)


## function exampleSearch\_descendingOrder


```haxe
function exampleSearch_descendingOrder():Void
```



This example demonstrates searching a list sorted in descending order.
The approach is the same as searching a list in ascending order,
but with the condition inverted.  

[\(view code\)](<./Sort.hx#L695>)


## function exampleSlice


```haxe
function exampleSlice():Void
```


[\(view code\)](<./Sort.hx#L777>)


## function exampleSliceStable


```haxe
function exampleSliceStable():Void
```


[\(view code\)](<./Sort.hx#L788>)


## function exampleStrings


```haxe
function exampleStrings():Void
```


[\(view code\)](<./Sort.hx#L799>)


## function example\_sortKeys


```haxe
function example_sortKeys():Void
```



ExampleSortKeys demonstrates a technique for sorting a struct type using programmable sort criteria.  

[\(view code\)](<./Sort.hx#L604>)


## function example\_sortMultiKeys


```haxe
function example_sortMultiKeys():Void
```



ExampleMultiKeys demonstrates a technique for sorting a struct type using different
sets of multiple fields in the comparison. We chain together "Less" functions, each of
which compares a single field.  

[\(view code\)](<./Sort.hx#L639>)


## function example\_sortWrapper


```haxe
function example_sortWrapper():Void
```


[\(view code\)](<./Sort.hx#L804>)


## function orderedBy


```haxe
function orderedBy(_less:haxe.Rest<stdgo.sort_test.T_lessFunc>):stdgo.Ref<stdgo.sort_test.T_multiSorter>
```



OrderedBy returns a Sorter that sorts using the less functions, in order.
Call its Sort method to sort the data.  

[\(view code\)](<./Sort.hx#L630>)


## function testAdversary


```haxe
function testAdversary(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Sort.hx#L1586>)


## function testBreakPatterns


```haxe
function testBreakPatterns(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Sort.hx#L1131>)


## function testCountSortOps


```haxe
function testCountSortOps(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Sort.hx#L1678>)


## function testCountStableOps


```haxe
function testCountStableOps(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Sort.hx#L1675>)


## function testFind


```haxe
function testFind(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Sort.hx#L831>)


## function testFindExhaustive


```haxe
function testFindExhaustive(_t:stdgo.Ref<stdgo.testing.T>):Void
```



Abstract exhaustive test for Find.  

[\(view code\)](<./Sort.hx#L1001>)


## function testFloat64s


```haxe
function testFloat64s(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Sort.hx#L1064>)


## function testHeapsortBM


```haxe
function testHeapsortBM(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Sort.hx#L1565>)


## function testInts


```haxe
function testInts(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Sort.hx#L1056>)


## function testNonDeterministicComparison


```haxe
function testNonDeterministicComparison(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Sort.hx#L1161>)


## function testReverseRange


```haxe
function testReverseRange(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Sort.hx#L1141>)


## function testReverseSortIntSlice


```haxe
function testReverseSortIntSlice(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Sort.hx#L1112>)


## function testSearch


```haxe
function testSearch(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Sort.hx#L823>)


## function testSearchEfficiency


```haxe
function testSearchEfficiency(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Sort.hx#L912>)


## function testSearchExhaustive


```haxe
function testSearchExhaustive(_t:stdgo.Ref<stdgo.testing.T>):Void
```



Abstract exhaustive test: all sizes up to 100,
all possible return values. If there are any small
corner cases, this test exercises them.  

[\(view code\)](<./Sort.hx#L980>)


## function testSearchWrappers


```haxe
function testSearchWrappers(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Sort.hx#L940>)


## function testSearchWrappersDontAlloc


```haxe
function testSearchWrappersDontAlloc(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Sort.hx#L955>)


## function testSlice


```haxe
function testSlice(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Sort.hx#L1080>)


## function testSortBM


```haxe
function testSortBM(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Sort.hx#L1560>)


## function testSortFloat64Slice


```haxe
function testSortFloat64Slice(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Sort.hx#L1038>)


## function testSortIntSlice


```haxe
function testSortIntSlice(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Sort.hx#L1029>)


## function testSortLarge\_Random


```haxe
function testSortLarge_Random(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Sort.hx#L1092>)


## function testSortStringSlice


```haxe
function testSortStringSlice(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Sort.hx#L1047>)


## function testStability


```haxe
function testStability(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Sort.hx#L1604>)


## function testStableBM


```haxe
function testStableBM(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Sort.hx#L1570>)


## function testStableInts


```haxe
function testStableInts(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Sort.hx#L1597>)


## function testStrings


```haxe
function testStrings(_t:stdgo.Ref<stdgo.testing.T>):Void
```


[\(view code\)](<./Sort.hx#L1072>)


## function main


```haxe
function main():Void
```


[\(view code\)](<./Sort.hx#L95>)


# Classes


```haxe
import stdgo.sort_test.*
```


## class ByName



ByName implements sort.Interface by providing Less and using the Len and
Swap methods of the embedded Organs value.  

```haxe
var organs:stdgo.sort_test.Organs
```


### ByName function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Sort_test.hx#L392>)


### ByName function new


```haxe
function new(?organs:Null<stdgo.sort_test.Organs>):Void
```


[\(view code\)](<./Sort_test.hx#L387>)


### ByName function swap


```haxe
function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


[\(view code\)](<./Sort_test.hx#L394>)


### ByName function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Sort_test.hx#L1927>)


### ByName function less


```haxe
function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```


[\(view code\)](<./Sort_test.hx#L1920>)


### ByName function swap


```haxe
function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


[\(view code\)](<./Sort_test.hx#L1925>)


## class ByWeight



ByWeight implements sort.Interface by providing Less and using the Len and
Swap methods of the embedded Organs value.  

```haxe
var organs:stdgo.sort_test.Organs
```


### ByWeight function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Sort_test.hx#L413>)


### ByWeight function new


```haxe
function new(?organs:Null<stdgo.sort_test.Organs>):Void
```


[\(view code\)](<./Sort_test.hx#L408>)


### ByWeight function swap


```haxe
function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


[\(view code\)](<./Sort_test.hx#L415>)


### ByWeight function len


```haxe
function len():stdgo.GoInt
```


[\(view code\)](<./Sort_test.hx#L1953>)


### ByWeight function less


```haxe
function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```


[\(view code\)](<./Sort_test.hx#L1946>)


### ByWeight function swap


```haxe
function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


[\(view code\)](<./Sort_test.hx#L1951>)


## class Change



A Change is a record of source code changes, recording user, language, and delta size.  

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
function new(?_user:stdgo.GoString, ?_language:stdgo.GoString, ?_lines:Null<stdgo.GoInt>):Void
```


[\(view code\)](<./Sort_test.hx#L334>)


## class Organ


```haxe
var name:stdgo.GoString
```


```haxe
var weight:stdgo.sort_test.Grams
```


### Organ function new


```haxe
function new(?name:stdgo.GoString, ?weight:Null<stdgo.sort_test.Grams>):Void
```


[\(view code\)](<./Sort_test.hx#L369>)


## class Person


```haxe
var age:stdgo.GoInt
```


```haxe
var name:stdgo.GoString
```


### Person function new


```haxe
function new(?name:stdgo.GoString, ?age:Null<stdgo.GoInt>):Void
```


[\(view code\)](<./Sort_test.hx#L280>)


### Person function string


```haxe
function string():stdgo.GoString
```


[\(view code\)](<./Sort_test.hx#L1751>)


## class Planet



A Planet defines the properties of a solar system object.  

```haxe
var _distance:stdgo.sort_test.T_au
```


```haxe
var _mass:stdgo.sort_test.T_earthMass
```


```haxe
var _name:stdgo.GoString
```


### Planet function new


```haxe
function new(?_name:stdgo.GoString, ?_mass:Null<stdgo.sort_test.T_earthMass>, ?_distance:Null<stdgo.sort_test.T_au>):Void
```


[\(view code\)](<./Sort_test.hx#L298>)


# Typedefs


```haxe
import stdgo.sort_test.*
```


## typedef By


```haxe
typedef By = (:stdgo.Ref<stdgo.sort_test.Planet>, :stdgo.Ref<stdgo.sort_test.Planet>):Bool;
```



By is the type of a "less" function that defines the ordering of its Planet arguments.  

## typedef ByAge


```haxe
typedef ByAge = stdgo.Slice<stdgo.sort_test.Person>;
```



ByAge implements sort.Interface for \[\]Person based on
the Age field.  

## typedef Grams


```haxe
typedef Grams = stdgo.GoInt;
```


## typedef Organs


```haxe
typedef Organs = stdgo.Slice<stdgo.Ref<stdgo.sort_test.Organ>>;
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



A couple of type definitions to make the units clear.  

## typedef T\_intPairs


```haxe
typedef T_intPairs = stdgo.Slice<stdgo.sort_test.T__struct_4>;
```


## typedef T\_lessFunc


```haxe
typedef T_lessFunc = (:stdgo.Ref<stdgo.sort_test.Change>, :stdgo.Ref<stdgo.sort_test.Change>):Bool;
```



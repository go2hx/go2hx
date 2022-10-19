# Module: `stdgo.sort`

[(view library index)](../stdgo.md)


# Overview


 


# Index


- [Variables](<#variables>)

- [`function _bench(_b:stdgo.Ref<stdgo.testing.B>, _size:stdgo.GoInt, _algo:(), _name:stdgo.GoString):Void`](<#function-_bench>)

- [`function _countOps(_t:stdgo.Ref<stdgo.testing.T>, _algo:(), _name:stdgo.GoString):Void`](<#function-_countops>)

- [`function _f(_a:stdgo.Slice<stdgo.GoInt>, _x:stdgo.GoInt):()`](<#function-_f>)

- [`function _lg(_n:stdgo.GoInt):stdgo.GoInt`](<#function-_lg>)

- [`function _log2(_x:stdgo.GoInt):stdgo.GoInt`](<#function-_log2>)

- [`function _min(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt`](<#function-_min>)

- [`function _newAdversaryTestingData(_t:stdgo.Ref<stdgo.testing.T>, _size:stdgo.GoInt, _maxcmp:stdgo.GoInt):stdgo.Ref<stdgo.sort_test._Sort_test.T_adversaryTestingData>`](<#function-_newadversarytestingdata>)

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

- [`function orderedBy(_less:haxe.Rest<stdgo.sort_test._Sort_test.T_lessFunc>):stdgo.Ref<stdgo.sort_test._Sort_test.T_multiSorter>`](<#function-orderedby>)

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

- [class ByAge\_static\_extension](<#class-byage_static_extension>)

  - [`function len():stdgo.GoInt`](<#byage_static_extension-function-len>)

  - [`function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool`](<#byage_static_extension-function-less>)

  - [`function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void`](<#byage_static_extension-function-swap>)

- [class ByName](<#class-byname>)

  - [`function len():stdgo.GoInt`](<#byname-function-len>)

  - [`function new(?organs:Null<stdgo.sort_test.Organs>):Void`](<#byname-function-new>)

  - [`function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void`](<#byname-function-swap>)

  - [`function len():stdgo.GoInt`](<#byname-function-len>)

  - [`function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool`](<#byname-function-less>)

  - [`function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void`](<#byname-function-swap>)

- [class ByName\_static\_extension](<#class-byname_static_extension>)

  - [`function len():stdgo.GoInt`](<#byname_static_extension-function-len>)

  - [`function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool`](<#byname_static_extension-function-less>)

  - [`function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void`](<#byname_static_extension-function-swap>)

- [class ByWeight](<#class-byweight>)

  - [`function len():stdgo.GoInt`](<#byweight-function-len>)

  - [`function new(?organs:Null<stdgo.sort_test.Organs>):Void`](<#byweight-function-new>)

  - [`function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void`](<#byweight-function-swap>)

  - [`function len():stdgo.GoInt`](<#byweight-function-len>)

  - [`function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool`](<#byweight-function-less>)

  - [`function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void`](<#byweight-function-swap>)

- [class ByWeight\_static\_extension](<#class-byweight_static_extension>)

  - [`function len():stdgo.GoInt`](<#byweight_static_extension-function-len>)

  - [`function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool`](<#byweight_static_extension-function-less>)

  - [`function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void`](<#byweight_static_extension-function-swap>)

- [class By\_static\_extension](<#class-by_static_extension>)

  - [`function sort( _planets:stdgo.Slice<stdgo.sort_test.Planet>):Void`](<#by_static_extension-function-sort>)

- [class Change](<#class-change>)

  - [`function new(?_user:stdgo.GoString, ?_language:stdgo.GoString, ?_lines:Null<stdgo.GoInt>):Void`](<#change-function-new>)

- [class Grams\_static\_extension](<#class-grams_static_extension>)

  - [`function string():stdgo.GoString`](<#grams_static_extension-function-string>)

- [class Organ](<#class-organ>)

  - [`function new(?name:stdgo.GoString, ?weight:Null<stdgo.sort_test.Grams>):Void`](<#organ-function-new>)

- [class Organs\_static\_extension](<#class-organs_static_extension>)

  - [`function len():stdgo.GoInt`](<#organs_static_extension-function-len>)

  - [`function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void`](<#organs_static_extension-function-swap>)

- [class Person](<#class-person>)

  - [`function new(?name:stdgo.GoString, ?age:Null<stdgo.GoInt>):Void`](<#person-function-new>)

  - [`function string():stdgo.GoString`](<#person-function-string>)

- [class Person\_static\_extension](<#class-person_static_extension>)

  - [`function string():stdgo.GoString`](<#person_static_extension-function-string>)

- [class Planet](<#class-planet>)

  - [`function new(?_name:stdgo.GoString, ?_mass:Null<stdgo.sort_test._Sort_test.T_earthMass>, ?_distance:Null<stdgo.sort_test._Sort_test.T_au>):Void`](<#planet-function-new>)

- [class T\_adversaryTestingData\_static\_extension](<#class-t_adversarytestingdata_static_extension>)

  - [`function len(_d:stdgo.Ref<stdgo.sort_test._Sort_test.T_adversaryTestingData>):stdgo.GoInt`](<#t_adversarytestingdata_static_extension-function-len>)

  - [`function less(_d:stdgo.Ref<stdgo.sort_test._Sort_test.T_adversaryTestingData>, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool`](<#t_adversarytestingdata_static_extension-function-less>)

  - [`function swap(_d:stdgo.Ref<stdgo.sort_test._Sort_test.T_adversaryTestingData>, _i:stdgo.GoInt, _j:stdgo.GoInt):Void`](<#t_adversarytestingdata_static_extension-function-swap>)

- [class T\_intPairs\_static\_extension](<#class-t_intpairs_static_extension>)

  - [`function _inOrder(_d:stdgo.sort_test._Sort_test.T_intPairs):Bool`](<#t_intpairs_static_extension-function-_inorder>)

  - [`function _initB(_d:stdgo.sort_test._Sort_test.T_intPairs):Void`](<#t_intpairs_static_extension-function-_initb>)

  - [`function len(_d:stdgo.sort_test._Sort_test.T_intPairs):stdgo.GoInt`](<#t_intpairs_static_extension-function-len>)

  - [`function less(_d:stdgo.sort_test._Sort_test.T_intPairs, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool`](<#t_intpairs_static_extension-function-less>)

  - [`function swap(_d:stdgo.sort_test._Sort_test.T_intPairs, _i:stdgo.GoInt, _j:stdgo.GoInt):Void`](<#t_intpairs_static_extension-function-swap>)

- [class T\_multiSorter\_static\_extension](<#class-t_multisorter_static_extension>)

  - [`function len(_ms:stdgo.Ref<stdgo.sort_test._Sort_test.T_multiSorter>):stdgo.GoInt`](<#t_multisorter_static_extension-function-len>)

  - [`function less(_ms:stdgo.Ref<stdgo.sort_test._Sort_test.T_multiSorter>, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool`](<#t_multisorter_static_extension-function-less>)

  - [`function sort(_ms:stdgo.Ref<stdgo.sort_test._Sort_test.T_multiSorter>, _changes:stdgo.Slice<stdgo.sort_test.Change>):Void`](<#t_multisorter_static_extension-function-sort>)

  - [`function swap(_ms:stdgo.Ref<stdgo.sort_test._Sort_test.T_multiSorter>, _i:stdgo.GoInt, _j:stdgo.GoInt):Void`](<#t_multisorter_static_extension-function-swap>)

- [class T\_nonDeterministicTestingData\_static\_extension](<#class-t_nondeterministictestingdata_static_extension>)

  - [`function len(_t:stdgo.Ref<stdgo.sort_test._Sort_test.T_nonDeterministicTestingData>):stdgo.GoInt`](<#t_nondeterministictestingdata_static_extension-function-len>)

  - [`function less(_t:stdgo.Ref<stdgo.sort_test._Sort_test.T_nonDeterministicTestingData>, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool`](<#t_nondeterministictestingdata_static_extension-function-less>)

  - [`function swap(_t:stdgo.Ref<stdgo.sort_test._Sort_test.T_nonDeterministicTestingData>, _i:stdgo.GoInt, _j:stdgo.GoInt):Void`](<#t_nondeterministictestingdata_static_extension-function-swap>)

- [class T\_planetSorter\_static\_extension](<#class-t_planetsorter_static_extension>)

  - [`function len(_s:stdgo.Ref<stdgo.sort_test._Sort_test.T_planetSorter>):stdgo.GoInt`](<#t_planetsorter_static_extension-function-len>)

  - [`function less(_s:stdgo.Ref<stdgo.sort_test._Sort_test.T_planetSorter>, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool`](<#t_planetsorter_static_extension-function-less>)

  - [`function swap(_s:stdgo.Ref<stdgo.sort_test._Sort_test.T_planetSorter>, _i:stdgo.GoInt, _j:stdgo.GoInt):Void`](<#t_planetsorter_static_extension-function-swap>)

- [class T\_testingData\_static\_extension](<#class-t_testingdata_static_extension>)

  - [`function len(_d:stdgo.Ref<stdgo.sort_test._Sort_test.T_testingData>):stdgo.GoInt`](<#t_testingdata_static_extension-function-len>)

  - [`function less(_d:stdgo.Ref<stdgo.sort_test._Sort_test.T_testingData>, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool`](<#t_testingdata_static_extension-function-less>)

  - [`function swap(_d:stdgo.Ref<stdgo.sort_test._Sort_test.T_testingData>, _i:stdgo.GoInt, _j:stdgo.GoInt):Void`](<#t_testingdata_static_extension-function-swap>)

- [typedef By](<#typedef-by>)

  - [`function sort( _planets:stdgo.Slice<stdgo.sort_test.Planet>):Void`](<#by-function-sort>)

- [typedef ByAge](<#typedef-byage>)

  - [`function len():stdgo.GoInt`](<#byage-function-len>)

  - [`function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool`](<#byage-function-less>)

  - [`function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void`](<#byage-function-swap>)

- [typedef Grams](<#typedef-grams>)

  - [`function string():stdgo.GoString`](<#grams-function-string>)

- [typedef Organs](<#typedef-organs>)

  - [`function len():stdgo.GoInt`](<#organs-function-len>)

  - [`function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void`](<#organs-function-swap>)

# Variables


```haxe
import stdgo.sort_test.Sort
```


```haxe
var _:Bool
```


# Functions


```haxe
import stdgo.sort_test.Sort
```


## function \_bench


```haxe
function _bench(_b:stdgo.Ref<stdgo.testing.B>, _size:stdgo.GoInt, _algo:(), _name:stdgo.GoString):Void
```


 


[\(view code\)](<./Sort.hx#L1899>)


## function \_countOps


```haxe
function _countOps(_t:stdgo.Ref<stdgo.testing.T>, _algo:(), _name:stdgo.GoString):Void
```


 


[\(view code\)](<./Sort.hx#L1864>)


## function \_f


```haxe
function _f(_a:stdgo.Slice<stdgo.GoInt>, _x:stdgo.GoInt):()
```


 


[\(view code\)](<./Sort.hx#L841>)


## function \_lg


```haxe
function _lg(_n:stdgo.GoInt):stdgo.GoInt
```


 


[\(view code\)](<./Sort.hx#L1622>)


## function \_log2


```haxe
function _log2(_x:stdgo.GoInt):stdgo.GoInt
```


log2 computes the binary logarithm of x, rounded up to the next integer. \(log2\(0\) == 0, log2\(1\) == 0, log2\(2\) == 1, log2\(3\) == 2, etc.\) 


[\(view code\)](<./Sort.hx#L1055>)


## function \_min


```haxe
function _min(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt
```


 


[\(view code\)](<./Sort.hx#L1615>)


## function \_newAdversaryTestingData


```haxe
function _newAdversaryTestingData(_t:stdgo.Ref<stdgo.testing.T>, _size:stdgo.GoInt, _maxcmp:stdgo.GoInt):stdgo.Ref<stdgo.sort_test._Sort_test.T_adversaryTestingData>
```


 


[\(view code\)](<./Sort.hx#L1771>)


## function \_printOrgans


```haxe
function _printOrgans(_s:stdgo.Slice<stdgo.Ref<stdgo.sort_test.Organ>>):Void
```


 


[\(view code\)](<./Sort.hx#L835>)


## function \_runSearchWrappers


```haxe
function _runSearchWrappers():Void
```


 


[\(view code\)](<./Sort.hx#L1104>)


## function \_testBentleyMcIlroy


```haxe
function _testBentleyMcIlroy(_t:stdgo.Ref<stdgo.testing.T>, _sort:(), _maxswap:()):Void
```


 


[\(view code\)](<./Sort.hx#L1630>)


## function benchmarkSearchWrappers


```haxe
function benchmarkSearchWrappers(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1126>)


## function benchmarkSort1e2


```haxe
function benchmarkSort1e2(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1943>)


## function benchmarkSort1e4


```haxe
function benchmarkSort1e4(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1951>)


## function benchmarkSort1e6


```haxe
function benchmarkSort1e6(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1959>)


## function benchmarkSortInt1K


```haxe
function benchmarkSortInt1K(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1442>)


## function benchmarkSortInt1K\_Mod8


```haxe
function benchmarkSortInt1K_Mod8(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1499>)


## function benchmarkSortInt1K\_Reversed


```haxe
function benchmarkSortInt1K_Reversed(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1480>)


## function benchmarkSortInt1K\_Sorted


```haxe
function benchmarkSortInt1K_Sorted(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1461>)


## function benchmarkSortInt64K


```haxe
function benchmarkSortInt64K(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1556>)


## function benchmarkSortInt64K\_Slice


```haxe
function benchmarkSortInt64K_Slice(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1575>)


## function benchmarkSortString1K


```haxe
function benchmarkSortString1K(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1386>)


## function benchmarkSortString1K\_Slice


```haxe
function benchmarkSortString1K_Slice(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1404>)


## function benchmarkStable1e2


```haxe
function benchmarkStable1e2(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1947>)


## function benchmarkStable1e4


```haxe
function benchmarkStable1e4(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1955>)


## function benchmarkStable1e6


```haxe
function benchmarkStable1e6(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1963>)


## function benchmarkStableInt1K


```haxe
function benchmarkStableInt1K(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1518>)


## function benchmarkStableInt1K\_Slice


```haxe
function benchmarkStableInt1K_Slice(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1536>)


## function benchmarkStableInt64K


```haxe
function benchmarkStableInt64K(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1596>)


## function benchmarkStableString1K


```haxe
function benchmarkStableString1K(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1424>)


## function example


```haxe
function example():Void
```


 


[\(view code\)](<./Sort.hx#L601>)


## function exampleFloat64s


```haxe
function exampleFloat64s():Void
```


 


[\(view code\)](<./Sort.hx#L759>)


## function exampleFloat64sAreSorted


```haxe
function exampleFloat64sAreSorted():Void
```


 


[\(view code\)](<./Sort.hx#L769>)


## function exampleInts


```haxe
function exampleInts():Void
```


 


[\(view code\)](<./Sort.hx#L744>)


## function exampleIntsAreSorted


```haxe
function exampleIntsAreSorted():Void
```


 


[\(view code\)](<./Sort.hx#L750>)


## function exampleReverse


```haxe
function exampleReverse():Void
```


 


[\(view code\)](<./Sort.hx#L778>)


## function exampleSearch


```haxe
function exampleSearch():Void
```


This example demonstrates searching a list sorted in ascending order. 


[\(view code\)](<./Sort.hx#L684>)


## function exampleSearchFloat64s


```haxe
function exampleSearchFloat64s():Void
```


This example demonstrates searching for float64 in a list sorted in ascending order. 


[\(view code\)](<./Sort.hx#L720>)


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


This example demonstrates searching a list sorted in descending order. The approach is the same as searching a list in ascending order, but with the condition inverted. 


[\(view code\)](<./Sort.hx#L703>)


## function exampleSlice


```haxe
function exampleSlice():Void
```


 


[\(view code\)](<./Sort.hx#L784>)


## function exampleSliceStable


```haxe
function exampleSliceStable():Void
```


 


[\(view code\)](<./Sort.hx#L797>)


## function exampleStrings


```haxe
function exampleStrings():Void
```


 


[\(view code\)](<./Sort.hx#L812>)


## function example\_sortKeys


```haxe
function example_sortKeys():Void
```


ExampleSortKeys demonstrates a technique for sorting a struct type using programmable sort criteria. 


[\(view code\)](<./Sort.hx#L619>)


## function example\_sortMultiKeys


```haxe
function example_sortMultiKeys():Void
```


ExampleMultiKeys demonstrates a technique for sorting a struct type using different sets of multiple fields in the comparison. We chain together "Less" functions, each of which compares a single field. 


[\(view code\)](<./Sort.hx#L656>)


## function example\_sortWrapper


```haxe
function example_sortWrapper():Void
```


 


[\(view code\)](<./Sort.hx#L818>)


## function orderedBy


```haxe
function orderedBy(_less:haxe.Rest<stdgo.sort_test._Sort_test.T_lessFunc>):stdgo.Ref<stdgo.sort_test._Sort_test.T_multiSorter>
```


OrderedBy returns a Sorter that sorts using the less functions, in order. Call its Sort method to sort the data. 


[\(view code\)](<./Sort.hx#L646>)


## function testAdversary


```haxe
function testAdversary(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1788>)


## function testBreakPatterns


```haxe
function testBreakPatterns(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1305>)


## function testCountSortOps


```haxe
function testCountSortOps(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1895>)


## function testCountStableOps


```haxe
function testCountStableOps(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1891>)


## function testFind


```haxe
function testFind(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L856>)


## function testFindExhaustive


```haxe
function testFindExhaustive(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Abstract exhaustive test for Find. 


[\(view code\)](<./Sort.hx#L1162>)


## function testFloat64s


```haxe
function testFloat64s(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1233>)


## function testHeapsortBM


```haxe
function testHeapsortBM(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1759>)


## function testInts


```haxe
function testInts(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1224>)


## function testNonDeterministicComparison


```haxe
function testNonDeterministicComparison(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1337>)


## function testReverseRange


```haxe
function testReverseRange(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1316>)


## function testReverseSortIntSlice


```haxe
function testReverseSortIntSlice(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1285>)


## function testSearch


```haxe
function testSearch(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L847>)


## function testSearchEfficiency


```haxe
function testSearchEfficiency(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1066>)


## function testSearchExhaustive


```haxe
function testSearchExhaustive(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Abstract exhaustive test: all sizes up to 100, all possible return values. If there are any small corner cases, this test exercises them. 


[\(view code\)](<./Sort.hx#L1140>)


## function testSearchWrappers


```haxe
function testSearchWrappers(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1096>)


## function testSearchWrappersDontAlloc


```haxe
function testSearchWrappersDontAlloc(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1113>)


## function testSlice


```haxe
function testSlice(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1251>)


## function testSortBM


```haxe
function testSortBM(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1753>)


## function testSortFloat64Slice


```haxe
function testSortFloat64Slice(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1204>)


## function testSortIntSlice


```haxe
function testSortIntSlice(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1194>)


## function testSortLarge\_Random


```haxe
function testSortLarge_Random(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1264>)


## function testSortStringSlice


```haxe
function testSortStringSlice(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1214>)


## function testStability


```haxe
function testStability(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1808>)


## function testStableBM


```haxe
function testStableBM(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1765>)


## function testStableInts


```haxe
function testStableInts(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1800>)


## function testStrings


```haxe
function testStrings(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1242>)


## function main


```haxe
function main():Void
```


 


[\(view code\)](<./Sort.hx#L136>)


# Classes


```haxe
import stdgo.sort_test.*
```


## class ByAge\_static\_extension


 


### ByAge\_static\_extension function len


```haxe
function len():stdgo.GoInt
```


 


[\(view code\)](<./Sort_test.hx#L2457>)


### ByAge\_static\_extension function less


```haxe
function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```


 


[\(view code\)](<./Sort_test.hx#L2442>)


### ByAge\_static\_extension function swap


```haxe
function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort_test.hx#L2447>)


## class ByName


ByName implements sort.Interface by providing Less and using the Len and Swap methods of the embedded Organs value. 


```haxe
var organs:stdgo.sort_test.Organs
```


### ByName function len


```haxe
function len():stdgo.GoInt
```


 


[\(view code\)](<./Sort_test.hx#L390>)


### ByName function new


```haxe
function new(?organs:Null<stdgo.sort_test.Organs>):Void
```


 


[\(view code\)](<./Sort_test.hx#L383>)


### ByName function swap


```haxe
function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort_test.hx#L394>)


### ByName function len


```haxe
function len():stdgo.GoInt
```


 


[\(view code\)](<./Sort_test.hx#L2202>)


### ByName function less


```haxe
function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```


 


[\(view code\)](<./Sort_test.hx#L2192>)


### ByName function swap


```haxe
function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort_test.hx#L2198>)


## class ByName\_static\_extension


 


### ByName\_static\_extension function len


```haxe
function len():stdgo.GoInt
```


 


[\(view code\)](<./Sort_test.hx#L2202>)


### ByName\_static\_extension function less


```haxe
function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```


 


[\(view code\)](<./Sort_test.hx#L2192>)


### ByName\_static\_extension function swap


```haxe
function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort_test.hx#L2198>)


## class ByWeight


ByWeight implements sort.Interface by providing Less and using the Len and Swap methods of the embedded Organs value. 


```haxe
var organs:stdgo.sort_test.Organs
```


### ByWeight function len


```haxe
function len():stdgo.GoInt
```


 


[\(view code\)](<./Sort_test.hx#L419>)


### ByWeight function new


```haxe
function new(?organs:Null<stdgo.sort_test.Organs>):Void
```


 


[\(view code\)](<./Sort_test.hx#L412>)


### ByWeight function swap


```haxe
function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort_test.hx#L423>)


### ByWeight function len


```haxe
function len():stdgo.GoInt
```


 


[\(view code\)](<./Sort_test.hx#L2243>)


### ByWeight function less


```haxe
function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```


 


[\(view code\)](<./Sort_test.hx#L2233>)


### ByWeight function swap


```haxe
function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort_test.hx#L2239>)


## class ByWeight\_static\_extension


 


### ByWeight\_static\_extension function len


```haxe
function len():stdgo.GoInt
```


 


[\(view code\)](<./Sort_test.hx#L2243>)


### ByWeight\_static\_extension function less


```haxe
function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```


 


[\(view code\)](<./Sort_test.hx#L2233>)


### ByWeight\_static\_extension function swap


```haxe
function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort_test.hx#L2239>)


## class By\_static\_extension


 


### By\_static\_extension function sort


```haxe
function sort( _planets:stdgo.Slice<stdgo.sort_test.Planet>):Void
```


Sort is a method on the function type, By, that sorts the argument slice according to the function. 


[\(view code\)](<./Sort_test.hx#L2488>)


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


 


[\(view code\)](<./Sort_test.hx#L317>)


## class Grams\_static\_extension


 


### Grams\_static\_extension function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Sort_test.hx#L2514>)


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


 


[\(view code\)](<./Sort_test.hx#L360>)


## class Organs\_static\_extension


 


### Organs\_static\_extension function len


```haxe
function len():stdgo.GoInt
```


 


[\(view code\)](<./Sort_test.hx#L2553>)


### Organs\_static\_extension function swap


```haxe
function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort_test.hx#L2543>)


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


 


[\(view code\)](<./Sort_test.hx#L242>)


### Person function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Sort_test.hx#L1987>)


## class Person\_static\_extension


 


### Person\_static\_extension function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Sort_test.hx#L1987>)


## class Planet


A Planet defines the properties of a solar system object. 


```haxe
var _distance:stdgo.sort_test._Sort_test.T_au
```


```haxe
var _mass:stdgo.sort_test._Sort_test.T_earthMass
```


```haxe
var _name:stdgo.GoString
```


### Planet function new


```haxe
function new(?_name:stdgo.GoString, ?_mass:Null<stdgo.sort_test._Sort_test.T_earthMass>, ?_distance:Null<stdgo.sort_test._Sort_test.T_au>):Void
```


 


[\(view code\)](<./Sort_test.hx#L265>)


## class T\_adversaryTestingData\_static\_extension


 


### T\_adversaryTestingData\_static\_extension function len


```haxe
function len(_d:stdgo.Ref<stdgo.sort_test._Sort_test.T_adversaryTestingData>):stdgo.GoInt
```


 


[\(view code\)](<./Sort_test.hx#L2409>)


### T\_adversaryTestingData\_static\_extension function less


```haxe
function less(_d:stdgo.Ref<stdgo.sort_test._Sort_test.T_adversaryTestingData>, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```


 


[\(view code\)](<./Sort_test.hx#L2386>)


### T\_adversaryTestingData\_static\_extension function swap


```haxe
function swap(_d:stdgo.Ref<stdgo.sort_test._Sort_test.T_adversaryTestingData>, _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort_test.hx#L2376>)


## class T\_intPairs\_static\_extension


 


### T\_intPairs\_static\_extension function \_inOrder


```haxe
function _inOrder(_d:stdgo.sort_test._Sort_test.T_intPairs):Bool
```


InOrder checks if a\-equal elements were not reordered. 


[\(view code\)](<./Sort_test.hx#L2606>)


### T\_intPairs\_static\_extension function \_initB


```haxe
function _initB(_d:stdgo.sort_test._Sort_test.T_intPairs):Void
```


Record initial order in B. 


[\(view code\)](<./Sort_test.hx#L2629>)


### T\_intPairs\_static\_extension function len


```haxe
function len(_d:stdgo.sort_test._Sort_test.T_intPairs):stdgo.GoInt
```


IntPairs compare on a only. 


[\(view code\)](<./Sort_test.hx#L2660>)


### T\_intPairs\_static\_extension function less


```haxe
function less(_d:stdgo.sort_test._Sort_test.T_intPairs, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```


 


[\(view code\)](<./Sort_test.hx#L2652>)


### T\_intPairs\_static\_extension function swap


```haxe
function swap(_d:stdgo.sort_test._Sort_test.T_intPairs, _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort_test.hx#L2636>)


## class T\_multiSorter\_static\_extension


 


### T\_multiSorter\_static\_extension function len


```haxe
function len(_ms:stdgo.Ref<stdgo.sort_test._Sort_test.T_multiSorter>):stdgo.GoInt
```


Len is part of sort.Interface. 


[\(view code\)](<./Sort_test.hx#L2150>)


### T\_multiSorter\_static\_extension function less


```haxe
function less(_ms:stdgo.Ref<stdgo.sort_test._Sort_test.T_multiSorter>, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```


Less is part of sort.Interface. It is implemented by looping along the less functions until it finds a comparison that discriminates between the two items \(one is less than the other\). Note that it can call the less functions twice per call. We could change the functions to return \-1, 0, 1 and reduce the number of calls for greater efficiency: an exercise for the reader. 


[\(view code\)](<./Sort_test.hx#L2115>)


### T\_multiSorter\_static\_extension function sort


```haxe
function sort(_ms:stdgo.Ref<stdgo.sort_test._Sort_test.T_multiSorter>, _changes:stdgo.Slice<stdgo.sort_test.Change>):Void
```


Sort sorts the argument slice according to the less functions passed to OrderedBy. 


[\(view code\)](<./Sort_test.hx#L2158>)


### T\_multiSorter\_static\_extension function swap


```haxe
function swap(_ms:stdgo.Ref<stdgo.sort_test._Sort_test.T_multiSorter>, _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


Swap is part of sort.Interface. 


[\(view code\)](<./Sort_test.hx#L2137>)


## class T\_nonDeterministicTestingData\_static\_extension


 


### T\_nonDeterministicTestingData\_static\_extension function len


```haxe
function len(_t:stdgo.Ref<stdgo.sort_test._Sort_test.T_nonDeterministicTestingData>):stdgo.GoInt
```


 


[\(view code\)](<./Sort_test.hx#L2289>)


### T\_nonDeterministicTestingData\_static\_extension function less


```haxe
function less(_t:stdgo.Ref<stdgo.sort_test._Sort_test.T_nonDeterministicTestingData>, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```


 


[\(view code\)](<./Sort_test.hx#L2281>)


### T\_nonDeterministicTestingData\_static\_extension function swap


```haxe
function swap(_t:stdgo.Ref<stdgo.sort_test._Sort_test.T_nonDeterministicTestingData>, _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort_test.hx#L2274>)


## class T\_planetSorter\_static\_extension


 


### T\_planetSorter\_static\_extension function len


```haxe
function len(_s:stdgo.Ref<stdgo.sort_test._Sort_test.T_planetSorter>):stdgo.GoInt
```


Len is part of sort.Interface. 


[\(view code\)](<./Sort_test.hx#L2053>)


### T\_planetSorter\_static\_extension function less


```haxe
function less(_s:stdgo.Ref<stdgo.sort_test._Sort_test.T_planetSorter>, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```


Less is part of sort.Interface. It is implemented by calling the "by" closure in the sorter. 


[\(view code\)](<./Sort_test.hx#L2032>)


### T\_planetSorter\_static\_extension function swap


```haxe
function swap(_s:stdgo.Ref<stdgo.sort_test._Sort_test.T_planetSorter>, _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


Swap is part of sort.Interface. 


[\(view code\)](<./Sort_test.hx#L2040>)


## class T\_testingData\_static\_extension


 


### T\_testingData\_static\_extension function len


```haxe
function len(_d:stdgo.Ref<stdgo.sort_test._Sort_test.T_testingData>):stdgo.GoInt
```


 


[\(view code\)](<./Sort_test.hx#L2343>)


### T\_testingData\_static\_extension function less


```haxe
function less(_d:stdgo.Ref<stdgo.sort_test._Sort_test.T_testingData>, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```


 


[\(view code\)](<./Sort_test.hx#L2337>)


### T\_testingData\_static\_extension function swap


```haxe
function swap(_d:stdgo.Ref<stdgo.sort_test._Sort_test.T_testingData>, _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort_test.hx#L2322>)


# Typedefs


```haxe
import stdgo.sort_test.*
```


## typedef By


```haxe
typedef By = var f:Bool<stdgo.sort_test.Planet, stdgo.sort_test.Planet>
```


By is the type of a "less" function that defines the ordering of its Planet arguments. 


### By function sort


```haxe
function sort( _planets:stdgo.Slice<stdgo.sort_test.Planet>):Void
```


Sort is a method on the function type, By, that sorts the argument slice according to the function. 


[\(view code\)](<./Sort_test.hx#L2488>)


## typedef ByAge


```haxe
typedef ByAge = var x:stdgo.sort_test.Person
```


ByAge implements sort.Interface for \[\]Person based on the Age field. 


### ByAge function len


```haxe
function len():stdgo.GoInt
```


 


[\(view code\)](<./Sort_test.hx#L2457>)


### ByAge function less


```haxe
function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```


 


[\(view code\)](<./Sort_test.hx#L2442>)


### ByAge function swap


```haxe
function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort_test.hx#L2447>)


## typedef Grams


```haxe
typedef Grams = var t:{<>}
```


 


### Grams function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Sort_test.hx#L2514>)


## typedef Organs


```haxe
typedef Organs = var x:stdgo.Ref<stdgo.sort_test.Organ>
```


 


### Organs function len


```haxe
function len():stdgo.GoInt
```


 


[\(view code\)](<./Sort_test.hx#L2553>)


### Organs function swap


```haxe
function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort_test.hx#L2543>)



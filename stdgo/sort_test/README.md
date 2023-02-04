# Module: `stdgo.sort`

[(view library index)](../stdgo.md)


# Overview


 


# Index


- [Variables](<#variables>)

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

- [class T\_\_struct\_0\_static\_extension](<#class-t__struct_0_static_extension>)

- [class T\_\_struct\_1\_static\_extension](<#class-t__struct_1_static_extension>)

- [class T\_\_struct\_2\_static\_extension](<#class-t__struct_2_static_extension>)

- [class T\_\_struct\_3\_static\_extension](<#class-t__struct_3_static_extension>)

- [class T\_\_struct\_4\_static\_extension](<#class-t__struct_4_static_extension>)

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


## function benchmarkSearchWrappers


```haxe
function benchmarkSearchWrappers(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1183>)


## function benchmarkSort1e2


```haxe
function benchmarkSort1e2(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L2006>)


## function benchmarkSort1e4


```haxe
function benchmarkSort1e4(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L2014>)


## function benchmarkSort1e6


```haxe
function benchmarkSort1e6(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L2022>)


## function benchmarkSortInt1K


```haxe
function benchmarkSortInt1K(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1499>)


## function benchmarkSortInt1K\_Mod8


```haxe
function benchmarkSortInt1K_Mod8(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1556>)


## function benchmarkSortInt1K\_Reversed


```haxe
function benchmarkSortInt1K_Reversed(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1537>)


## function benchmarkSortInt1K\_Sorted


```haxe
function benchmarkSortInt1K_Sorted(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1518>)


## function benchmarkSortInt64K


```haxe
function benchmarkSortInt64K(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1613>)


## function benchmarkSortInt64K\_Slice


```haxe
function benchmarkSortInt64K_Slice(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1632>)


## function benchmarkSortString1K


```haxe
function benchmarkSortString1K(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1443>)


## function benchmarkSortString1K\_Slice


```haxe
function benchmarkSortString1K_Slice(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1461>)


## function benchmarkStable1e2


```haxe
function benchmarkStable1e2(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L2010>)


## function benchmarkStable1e4


```haxe
function benchmarkStable1e4(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L2018>)


## function benchmarkStable1e6


```haxe
function benchmarkStable1e6(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L2026>)


## function benchmarkStableInt1K


```haxe
function benchmarkStableInt1K(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1575>)


## function benchmarkStableInt1K\_Slice


```haxe
function benchmarkStableInt1K_Slice(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1593>)


## function benchmarkStableInt64K


```haxe
function benchmarkStableInt64K(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1653>)


## function benchmarkStableString1K


```haxe
function benchmarkStableString1K(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1481>)


## function example


```haxe
function example():Void
```


 


[\(view code\)](<./Sort.hx#L654>)


## function exampleFloat64s


```haxe
function exampleFloat64s():Void
```


 


[\(view code\)](<./Sort.hx#L813>)


## function exampleFloat64sAreSorted


```haxe
function exampleFloat64sAreSorted():Void
```


 


[\(view code\)](<./Sort.hx#L823>)


## function exampleInts


```haxe
function exampleInts():Void
```


 


[\(view code\)](<./Sort.hx#L798>)


## function exampleIntsAreSorted


```haxe
function exampleIntsAreSorted():Void
```


 


[\(view code\)](<./Sort.hx#L804>)


## function exampleReverse


```haxe
function exampleReverse():Void
```


 


[\(view code\)](<./Sort.hx#L832>)


## function exampleSearch


```haxe
function exampleSearch():Void
```


This example demonstrates searching a list sorted in ascending order. 


[\(view code\)](<./Sort.hx#L738>)


## function exampleSearchFloat64s


```haxe
function exampleSearchFloat64s():Void
```


This example demonstrates searching for float64 in a list sorted in ascending order. 


[\(view code\)](<./Sort.hx#L774>)


## function exampleSearchInts


```haxe
function exampleSearchInts():Void
```


This example demonstrates searching for int in a list sorted in ascending order. 


[\(view code\)](<./Sort.hx#L788>)


## function exampleSearch\_descendingOrder


```haxe
function exampleSearch_descendingOrder():Void
```


This example demonstrates searching a list sorted in descending order.  The approach is the same as searching a list in ascending order,  but with the condition inverted. 


[\(view code\)](<./Sort.hx#L757>)


## function exampleSlice


```haxe
function exampleSlice():Void
```


 


[\(view code\)](<./Sort.hx#L838>)


## function exampleSliceStable


```haxe
function exampleSliceStable():Void
```


 


[\(view code\)](<./Sort.hx#L852>)


## function exampleStrings


```haxe
function exampleStrings():Void
```


 


[\(view code\)](<./Sort.hx#L868>)


## function example\_sortKeys


```haxe
function example_sortKeys():Void
```


ExampleSortKeys demonstrates a technique for sorting a struct type using programmable sort criteria. 


[\(view code\)](<./Sort.hx#L673>)


## function example\_sortMultiKeys


```haxe
function example_sortMultiKeys():Void
```


ExampleMultiKeys demonstrates a technique for sorting a struct type using different  sets of multiple fields in the comparison. We chain together "Less" functions, each of  which compares a single field. 


[\(view code\)](<./Sort.hx#L710>)


## function example\_sortWrapper


```haxe
function example_sortWrapper():Void
```


 


[\(view code\)](<./Sort.hx#L875>)


## function orderedBy


```haxe
function orderedBy(_less:haxe.Rest<stdgo.sort_test._Sort_test.T_lessFunc>):stdgo.Ref<stdgo.sort_test._Sort_test.T_multiSorter>
```


OrderedBy returns a Sorter that sorts using the less functions, in order.  Call its Sort method to sort the data. 


[\(view code\)](<./Sort.hx#L700>)


## function testAdversary


```haxe
function testAdversary(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1848>)


## function testBreakPatterns


```haxe
function testBreakPatterns(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1362>)


## function testCountSortOps


```haxe
function testCountSortOps(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1958>)


## function testCountStableOps


```haxe
function testCountStableOps(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1954>)


## function testFind


```haxe
function testFind(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L913>)


## function testFindExhaustive


```haxe
function testFindExhaustive(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Abstract exhaustive test for Find. 


[\(view code\)](<./Sort.hx#L1219>)


## function testFloat64s


```haxe
function testFloat64s(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1290>)


## function testHeapsortBM


```haxe
function testHeapsortBM(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1819>)


## function testInts


```haxe
function testInts(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1281>)


## function testNonDeterministicComparison


```haxe
function testNonDeterministicComparison(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1394>)


## function testReverseRange


```haxe
function testReverseRange(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1373>)


## function testReverseSortIntSlice


```haxe
function testReverseSortIntSlice(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1342>)


## function testSearch


```haxe
function testSearch(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L904>)


## function testSearchEfficiency


```haxe
function testSearchEfficiency(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1123>)


## function testSearchExhaustive


```haxe
function testSearchExhaustive(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Abstract exhaustive test: all sizes up to 100,  all possible return values. If there are any small  corner cases, this test exercises them. 


[\(view code\)](<./Sort.hx#L1197>)


## function testSearchWrappers


```haxe
function testSearchWrappers(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1153>)


## function testSearchWrappersDontAlloc


```haxe
function testSearchWrappersDontAlloc(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1170>)


## function testSlice


```haxe
function testSlice(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1308>)


## function testSortBM


```haxe
function testSortBM(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1813>)


## function testSortFloat64Slice


```haxe
function testSortFloat64Slice(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1261>)


## function testSortIntSlice


```haxe
function testSortIntSlice(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1251>)


## function testSortLarge\_Random


```haxe
function testSortLarge_Random(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1321>)


## function testSortStringSlice


```haxe
function testSortStringSlice(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1271>)


## function testStability


```haxe
function testStability(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1868>)


## function testStableBM


```haxe
function testStableBM(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1825>)


## function testStableInts


```haxe
function testStableInts(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1860>)


## function testStrings


```haxe
function testStrings(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1299>)


# Classes


```haxe
import stdgo.sort_test.*
```


## class ByAge\_static\_extension


 


### ByAge\_static\_extension function len


```haxe
function len():stdgo.GoInt
```


 


[\(view code\)](<./Sort_test.hx#L2532>)


### ByAge\_static\_extension function less


```haxe
function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```


 


[\(view code\)](<./Sort_test.hx#L2517>)


### ByAge\_static\_extension function swap


```haxe
function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort_test.hx#L2522>)


## class ByName


ByName implements sort.Interface by providing Less and using the Len and  Swap methods of the embedded Organs value. 


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


 


[\(view code\)](<./Sort_test.hx#L380>)


### ByName function swap


```haxe
function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort_test.hx#L394>)


### ByName function len


```haxe
function len():stdgo.GoInt
```


 


[\(view code\)](<./Sort_test.hx#L2272>)


### ByName function less


```haxe
function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```


 


[\(view code\)](<./Sort_test.hx#L2262>)


### ByName function swap


```haxe
function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort_test.hx#L2268>)


## class ByName\_static\_extension


 


### ByName\_static\_extension function len


```haxe
function len():stdgo.GoInt
```


 


[\(view code\)](<./Sort_test.hx#L2272>)


### ByName\_static\_extension function less


```haxe
function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```


 


[\(view code\)](<./Sort_test.hx#L2262>)


### ByName\_static\_extension function swap


```haxe
function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort_test.hx#L2268>)


## class ByWeight


ByWeight implements sort.Interface by providing Less and using the Len and  Swap methods of the embedded Organs value. 


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


 


[\(view code\)](<./Sort_test.hx#L409>)


### ByWeight function swap


```haxe
function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort_test.hx#L423>)


### ByWeight function len


```haxe
function len():stdgo.GoInt
```


 


[\(view code\)](<./Sort_test.hx#L2314>)


### ByWeight function less


```haxe
function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```


 


[\(view code\)](<./Sort_test.hx#L2304>)


### ByWeight function swap


```haxe
function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort_test.hx#L2310>)


## class ByWeight\_static\_extension


 


### ByWeight\_static\_extension function len


```haxe
function len():stdgo.GoInt
```


 


[\(view code\)](<./Sort_test.hx#L2314>)


### ByWeight\_static\_extension function less


```haxe
function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```


 


[\(view code\)](<./Sort_test.hx#L2304>)


### ByWeight\_static\_extension function swap


```haxe
function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort_test.hx#L2310>)


## class By\_static\_extension


 


### By\_static\_extension function sort


```haxe
function sort( _planets:stdgo.Slice<stdgo.sort_test.Planet>):Void
```


Sort is a method on the function type, By, that sorts the argument slice according to the function. 


[\(view code\)](<./Sort_test.hx#L2564>)


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


 


[\(view code\)](<./Sort_test.hx#L314>)


## class Grams\_static\_extension


 


### Grams\_static\_extension function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Sort_test.hx#L2591>)


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


 


[\(view code\)](<./Sort_test.hx#L357>)


## class Organs\_static\_extension


 


### Organs\_static\_extension function len


```haxe
function len():stdgo.GoInt
```


 


[\(view code\)](<./Sort_test.hx#L2631>)


### Organs\_static\_extension function swap


```haxe
function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort_test.hx#L2621>)


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


 


[\(view code\)](<./Sort_test.hx#L243>)


### Person function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Sort_test.hx#L2051>)


## class Person\_static\_extension


 


### Person\_static\_extension function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Sort_test.hx#L2051>)


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


 


[\(view code\)](<./Sort_test.hx#L266>)


## class T\_\_struct\_0\_static\_extension


 


## class T\_\_struct\_1\_static\_extension


 


## class T\_\_struct\_2\_static\_extension


 


## class T\_\_struct\_3\_static\_extension


 


## class T\_\_struct\_4\_static\_extension


 


## class T\_adversaryTestingData\_static\_extension


 


### T\_adversaryTestingData\_static\_extension function len


```haxe
function len(_d:stdgo.Ref<stdgo.sort_test._Sort_test.T_adversaryTestingData>):stdgo.GoInt
```


 


[\(view code\)](<./Sort_test.hx#L2483>)


### T\_adversaryTestingData\_static\_extension function less


```haxe
function less(_d:stdgo.Ref<stdgo.sort_test._Sort_test.T_adversaryTestingData>, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```


 


[\(view code\)](<./Sort_test.hx#L2460>)


### T\_adversaryTestingData\_static\_extension function swap


```haxe
function swap(_d:stdgo.Ref<stdgo.sort_test._Sort_test.T_adversaryTestingData>, _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort_test.hx#L2450>)


## class T\_intPairs\_static\_extension


 


### T\_intPairs\_static\_extension function \_inOrder


```haxe
function _inOrder(_d:stdgo.sort_test._Sort_test.T_intPairs):Bool
```


InOrder checks if a\-equal elements were not reordered. 


[\(view code\)](<./Sort_test.hx#L2685>)


### T\_intPairs\_static\_extension function \_initB


```haxe
function _initB(_d:stdgo.sort_test._Sort_test.T_intPairs):Void
```


Record initial order in B. 


[\(view code\)](<./Sort_test.hx#L2711>)


### T\_intPairs\_static\_extension function len


```haxe
function len(_d:stdgo.sort_test._Sort_test.T_intPairs):stdgo.GoInt
```


IntPairs compare on a only. 


[\(view code\)](<./Sort_test.hx#L2742>)


### T\_intPairs\_static\_extension function less


```haxe
function less(_d:stdgo.sort_test._Sort_test.T_intPairs, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```


 


[\(view code\)](<./Sort_test.hx#L2734>)


### T\_intPairs\_static\_extension function swap


```haxe
function swap(_d:stdgo.sort_test._Sort_test.T_intPairs, _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort_test.hx#L2718>)


## class T\_multiSorter\_static\_extension


 


### T\_multiSorter\_static\_extension function len


```haxe
function len(_ms:stdgo.Ref<stdgo.sort_test._Sort_test.T_multiSorter>):stdgo.GoInt
```


Len is part of sort.Interface. 


[\(view code\)](<./Sort_test.hx#L2219>)


### T\_multiSorter\_static\_extension function less


```haxe
function less(_ms:stdgo.Ref<stdgo.sort_test._Sort_test.T_multiSorter>, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```


Less is part of sort.Interface. It is implemented by looping along the   less functions until it finds a comparison that discriminates between   the two items \(one is less than the other\). Note that it can call the   less functions twice per call. We could change the functions to return   \-1, 0, 1 and reduce the number of calls for greater efficiency: an   exercise for the reader. 


[\(view code\)](<./Sort_test.hx#L2182>)


### T\_multiSorter\_static\_extension function sort


```haxe
function sort(_ms:stdgo.Ref<stdgo.sort_test._Sort_test.T_multiSorter>, _changes:stdgo.Slice<stdgo.sort_test.Change>):Void
```


Sort sorts the argument slice according to the less functions passed to OrderedBy. 


[\(view code\)](<./Sort_test.hx#L2227>)


### T\_multiSorter\_static\_extension function swap


```haxe
function swap(_ms:stdgo.Ref<stdgo.sort_test._Sort_test.T_multiSorter>, _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


Swap is part of sort.Interface. 


[\(view code\)](<./Sort_test.hx#L2206>)


## class T\_nonDeterministicTestingData\_static\_extension


 


### T\_nonDeterministicTestingData\_static\_extension function len


```haxe
function len(_t:stdgo.Ref<stdgo.sort_test._Sort_test.T_nonDeterministicTestingData>):stdgo.GoInt
```


 


[\(view code\)](<./Sort_test.hx#L2361>)


### T\_nonDeterministicTestingData\_static\_extension function less


```haxe
function less(_t:stdgo.Ref<stdgo.sort_test._Sort_test.T_nonDeterministicTestingData>, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```


 


[\(view code\)](<./Sort_test.hx#L2353>)


### T\_nonDeterministicTestingData\_static\_extension function swap


```haxe
function swap(_t:stdgo.Ref<stdgo.sort_test._Sort_test.T_nonDeterministicTestingData>, _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort_test.hx#L2346>)


## class T\_planetSorter\_static\_extension


 


### T\_planetSorter\_static\_extension function len


```haxe
function len(_s:stdgo.Ref<stdgo.sort_test._Sort_test.T_planetSorter>):stdgo.GoInt
```


Len is part of sort.Interface. 


[\(view code\)](<./Sort_test.hx#L2119>)


### T\_planetSorter\_static\_extension function less


```haxe
function less(_s:stdgo.Ref<stdgo.sort_test._Sort_test.T_planetSorter>, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```


Less is part of sort.Interface. It is implemented by calling the "by" closure in the sorter. 


[\(view code\)](<./Sort_test.hx#L2097>)


### T\_planetSorter\_static\_extension function swap


```haxe
function swap(_s:stdgo.Ref<stdgo.sort_test._Sort_test.T_planetSorter>, _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


Swap is part of sort.Interface. 


[\(view code\)](<./Sort_test.hx#L2106>)


## class T\_testingData\_static\_extension


 


### T\_testingData\_static\_extension function len


```haxe
function len(_d:stdgo.Ref<stdgo.sort_test._Sort_test.T_testingData>):stdgo.GoInt
```


 


[\(view code\)](<./Sort_test.hx#L2416>)


### T\_testingData\_static\_extension function less


```haxe
function less(_d:stdgo.Ref<stdgo.sort_test._Sort_test.T_testingData>, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```


 


[\(view code\)](<./Sort_test.hx#L2410>)


### T\_testingData\_static\_extension function swap


```haxe
function swap(_d:stdgo.Ref<stdgo.sort_test._Sort_test.T_testingData>, _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort_test.hx#L2395>)


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


[\(view code\)](<./Sort_test.hx#L2564>)


## typedef ByAge


```haxe
typedef ByAge = var x:stdgo.sort_test.Person
```


ByAge implements sort.Interface for \[\]Person based on  the Age field. 


### ByAge function len


```haxe
function len():stdgo.GoInt
```


 


[\(view code\)](<./Sort_test.hx#L2532>)


### ByAge function less


```haxe
function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```


 


[\(view code\)](<./Sort_test.hx#L2517>)


### ByAge function swap


```haxe
function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort_test.hx#L2522>)


## typedef Grams


```haxe
typedef Grams = var t:{<>}
```


 


### Grams function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Sort_test.hx#L2591>)


## typedef Organs


```haxe
typedef Organs = var x:stdgo.Ref<stdgo.sort_test.Organ>
```


 


### Organs function len


```haxe
function len():stdgo.GoInt
```


 


[\(view code\)](<./Sort_test.hx#L2631>)


### Organs function swap


```haxe
function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort_test.hx#L2621>)



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

- [`function orderedBy(_less:haxe.Rest<stdgo.sort_test._Sort_test.T_lessFunc>):stdgo.Ref<stdgo.sort_test.T_multiSorter>`](<#function-orderedby>)

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

  - [`function new(?_name:stdgo.GoString, ?_mass:Null<stdgo.sort_test._Sort_test.T_earthMass>, ?_distance:Null<stdgo.sort_test._Sort_test.T_au>):Void`](<#planet-function-new>)

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





[\(view code\)](<./Sort.hx#L975>)


## function benchmarkSort1e2


```haxe
function benchmarkSort1e2(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Sort.hx#L1719>)


## function benchmarkSort1e4


```haxe
function benchmarkSort1e4(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Sort.hx#L1725>)


## function benchmarkSort1e6


```haxe
function benchmarkSort1e6(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Sort.hx#L1731>)


## function benchmarkSortInt1K


```haxe
function benchmarkSortInt1K(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Sort.hx#L1268>)


## function benchmarkSortInt1K\_Mod8


```haxe
function benchmarkSortInt1K_Mod8(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Sort.hx#L1322>)


## function benchmarkSortInt1K\_Reversed


```haxe
function benchmarkSortInt1K_Reversed(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Sort.hx#L1304>)


## function benchmarkSortInt1K\_Sorted


```haxe
function benchmarkSortInt1K_Sorted(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Sort.hx#L1286>)


## function benchmarkSortInt64K


```haxe
function benchmarkSortInt64K(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Sort.hx#L1376>)


## function benchmarkSortInt64K\_Slice


```haxe
function benchmarkSortInt64K_Slice(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Sort.hx#L1394>)


## function benchmarkSortString1K


```haxe
function benchmarkSortString1K(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Sort.hx#L1215>)


## function benchmarkSortString1K\_Slice


```haxe
function benchmarkSortString1K_Slice(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Sort.hx#L1232>)


## function benchmarkStable1e2


```haxe
function benchmarkStable1e2(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Sort.hx#L1722>)


## function benchmarkStable1e4


```haxe
function benchmarkStable1e4(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Sort.hx#L1728>)


## function benchmarkStable1e6


```haxe
function benchmarkStable1e6(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Sort.hx#L1734>)


## function benchmarkStableInt1K


```haxe
function benchmarkStableInt1K(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Sort.hx#L1340>)


## function benchmarkStableInt1K\_Slice


```haxe
function benchmarkStableInt1K_Slice(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Sort.hx#L1357>)


## function benchmarkStableInt64K


```haxe
function benchmarkStableInt64K(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Sort.hx#L1414>)


## function benchmarkStableString1K


```haxe
function benchmarkStableString1K(_b:stdgo.Ref<stdgo.testing.B>):Void
```





[\(view code\)](<./Sort.hx#L1251>)


## function example


```haxe
function example():Void
```





[\(view code\)](<./Sort.hx#L599>)


## function exampleFloat64s


```haxe
function exampleFloat64s():Void
```





[\(view code\)](<./Sort.hx#L764>)


## function exampleFloat64sAreSorted


```haxe
function exampleFloat64sAreSorted():Void
```





[\(view code\)](<./Sort.hx#L772>)


## function exampleInts


```haxe
function exampleInts():Void
```





[\(view code\)](<./Sort.hx#L751>)


## function exampleIntsAreSorted


```haxe
function exampleIntsAreSorted():Void
```





[\(view code\)](<./Sort.hx#L756>)


## function exampleReverse


```haxe
function exampleReverse():Void
```





[\(view code\)](<./Sort.hx#L780>)


## function exampleSearch


```haxe
function exampleSearch():Void
```


This example demonstrates searching a list sorted in ascending order.  



[\(view code\)](<./Sort.hx#L674>)


## function exampleSearchFloat64s


```haxe
function exampleSearchFloat64s():Void
```


This example demonstrates searching for float64 in a list sorted in ascending order.  



[\(view code\)](<./Sort.hx#L730>)


## function exampleSearchInts


```haxe
function exampleSearchInts():Void
```


This example demonstrates searching for int in a list sorted in ascending order.  



[\(view code\)](<./Sort.hx#L742>)


## function exampleSearch\_descendingOrder


```haxe
function exampleSearch_descendingOrder():Void
```


This example demonstrates searching a list sorted in descending order.  
The approach is the same as searching a list in ascending order,  
but with the condition inverted.  



[\(view code\)](<./Sort.hx#L703>)


## function exampleSlice


```haxe
function exampleSlice():Void
```





[\(view code\)](<./Sort.hx#L785>)


## function exampleSliceStable


```haxe
function exampleSliceStable():Void
```





[\(view code\)](<./Sort.hx#L796>)


## function exampleStrings


```haxe
function exampleStrings():Void
```





[\(view code\)](<./Sort.hx#L807>)


## function example\_sortKeys


```haxe
function example_sortKeys():Void
```


ExampleSortKeys demonstrates a technique for sorting a struct type using programmable sort criteria.  



[\(view code\)](<./Sort.hx#L612>)


## function example\_sortMultiKeys


```haxe
function example_sortMultiKeys():Void
```


ExampleMultiKeys demonstrates a technique for sorting a struct type using different  
sets of multiple fields in the comparison. We chain together "Less" functions, each of  
which compares a single field.  



[\(view code\)](<./Sort.hx#L647>)


## function example\_sortWrapper


```haxe
function example_sortWrapper():Void
```





[\(view code\)](<./Sort.hx#L812>)


## function orderedBy


```haxe
function orderedBy(_less:haxe.Rest<stdgo.sort_test._Sort_test.T_lessFunc>):stdgo.Ref<stdgo.sort_test.T_multiSorter>
```


OrderedBy returns a Sorter that sorts using the less functions, in order.  
Call its Sort method to sort the data.  



[\(view code\)](<./Sort.hx#L638>)


## function testAdversary


```haxe
function testAdversary(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Sort.hx#L1585>)


## function testBreakPatterns


```haxe
function testBreakPatterns(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Sort.hx#L1139>)


## function testCountSortOps


```haxe
function testCountSortOps(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Sort.hx#L1677>)


## function testCountStableOps


```haxe
function testCountStableOps(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Sort.hx#L1674>)


## function testFind


```haxe
function testFind(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Sort.hx#L839>)


## function testFindExhaustive


```haxe
function testFindExhaustive(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Abstract exhaustive test for Find.  



[\(view code\)](<./Sort.hx#L1009>)


## function testFloat64s


```haxe
function testFloat64s(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Sort.hx#L1072>)


## function testHeapsortBM


```haxe
function testHeapsortBM(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Sort.hx#L1564>)


## function testInts


```haxe
function testInts(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Sort.hx#L1064>)


## function testNonDeterministicComparison


```haxe
function testNonDeterministicComparison(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Sort.hx#L1169>)


## function testReverseRange


```haxe
function testReverseRange(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Sort.hx#L1149>)


## function testReverseSortIntSlice


```haxe
function testReverseSortIntSlice(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Sort.hx#L1120>)


## function testSearch


```haxe
function testSearch(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Sort.hx#L831>)


## function testSearchEfficiency


```haxe
function testSearchEfficiency(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Sort.hx#L920>)


## function testSearchExhaustive


```haxe
function testSearchExhaustive(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Abstract exhaustive test: all sizes up to 100,  
all possible return values. If there are any small  
corner cases, this test exercises them.  



[\(view code\)](<./Sort.hx#L988>)


## function testSearchWrappers


```haxe
function testSearchWrappers(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Sort.hx#L948>)


## function testSearchWrappersDontAlloc


```haxe
function testSearchWrappersDontAlloc(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Sort.hx#L963>)


## function testSlice


```haxe
function testSlice(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Sort.hx#L1088>)


## function testSortBM


```haxe
function testSortBM(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Sort.hx#L1559>)


## function testSortFloat64Slice


```haxe
function testSortFloat64Slice(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Sort.hx#L1046>)


## function testSortIntSlice


```haxe
function testSortIntSlice(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Sort.hx#L1037>)


## function testSortLarge\_Random


```haxe
function testSortLarge_Random(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Sort.hx#L1100>)


## function testSortStringSlice


```haxe
function testSortStringSlice(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Sort.hx#L1055>)


## function testStability


```haxe
function testStability(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Sort.hx#L1603>)


## function testStableBM


```haxe
function testStableBM(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Sort.hx#L1569>)


## function testStableInts


```haxe
function testStableInts(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Sort.hx#L1596>)


## function testStrings


```haxe
function testStrings(_t:stdgo.Ref<stdgo.testing.T>):Void
```





[\(view code\)](<./Sort.hx#L1080>)


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





[\(view code\)](<./Sort_test.hx#L400>)


### ByName function new


```haxe
function new(?organs:Null<stdgo.sort_test.Organs>):Void
```





[\(view code\)](<./Sort_test.hx#L395>)


### ByName function swap


```haxe
function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void
```





[\(view code\)](<./Sort_test.hx#L402>)


### ByName function len


```haxe
function len():stdgo.GoInt
```





[\(view code\)](<./Sort_test.hx#L1917>)


### ByName function less


```haxe
function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```





[\(view code\)](<./Sort_test.hx#L1911>)


### ByName function swap


```haxe
function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```





[\(view code\)](<./Sort_test.hx#L1915>)


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





[\(view code\)](<./Sort_test.hx#L421>)


### ByWeight function new


```haxe
function new(?organs:Null<stdgo.sort_test.Organs>):Void
```





[\(view code\)](<./Sort_test.hx#L416>)


### ByWeight function swap


```haxe
function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void
```





[\(view code\)](<./Sort_test.hx#L423>)


### ByWeight function len


```haxe
function len():stdgo.GoInt
```





[\(view code\)](<./Sort_test.hx#L1942>)


### ByWeight function less


```haxe
function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```





[\(view code\)](<./Sort_test.hx#L1936>)


### ByWeight function swap


```haxe
function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```





[\(view code\)](<./Sort_test.hx#L1940>)


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





[\(view code\)](<./Sort_test.hx#L342>)


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





[\(view code\)](<./Sort_test.hx#L377>)


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





[\(view code\)](<./Sort_test.hx#L288>)


### Person function string


```haxe
function string():stdgo.GoString
```





[\(view code\)](<./Sort_test.hx#L1750>)


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





[\(view code\)](<./Sort_test.hx#L306>)


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



[\(view code\)](<./Sort_test.hx#L2122>)


## typedef ByAge


```haxe
typedef ByAge = var x:stdgo.sort_test.Person
```


ByAge implements sort.Interface for \[\]Person based on  
the Age field.  



### ByAge function len


```haxe
function len():stdgo.GoInt
```





[\(view code\)](<./Sort_test.hx#L2099>)


### ByAge function less


```haxe
function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```





[\(view code\)](<./Sort_test.hx#L2086>)


### ByAge function swap


```haxe
function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```





[\(view code\)](<./Sort_test.hx#L2090>)


## typedef Grams


```haxe
typedef Grams = var t:{<>}
```





### Grams function string


```haxe
function string():stdgo.GoString
```





[\(view code\)](<./Sort_test.hx#L2140>)


## typedef Organs


```haxe
typedef Organs = var x:stdgo.Ref<stdgo.sort_test.Organ>
```





### Organs function len


```haxe
function len():stdgo.GoInt
```





[\(view code\)](<./Sort_test.hx#L2168>)


### Organs function swap


```haxe
function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```





[\(view code\)](<./Sort_test.hx#L2159>)



# Module: stdgo.sort


[(view library index)](../stdgo.md)


# Overview


 


# Index


- [Variables](<#variables>)

- [function \_bench\(\_b:stdgo.Ref\<stdgo.testing.B\>, \_size:stdgo.GoInt, \_algo:\(\), \_name:stdgo.GoString\):Void](<#function-_bench>)

- [function \_countOps\(\_t:stdgo.Ref\<stdgo.testing.T\>, \_algo:\(\), \_name:stdgo.GoString\):Void](<#function-_countops>)

- [function \_f\(\_a:stdgo.Slice\<stdgo.GoInt\>, \_x:stdgo.GoInt\):\(\)](<#function-_f>)

- [function \_lg\(\_n:stdgo.GoInt\):stdgo.GoInt](<#function-_lg>)

- [function \_log2\(\_x:stdgo.GoInt\):stdgo.GoInt](<#function-_log2>)

- [function \_min\(\_a:stdgo.GoInt, \_b:stdgo.GoInt\):stdgo.GoInt](<#function-_min>)

- [function \_newAdversaryTestingData\(\_t:stdgo.Ref\<stdgo.testing.T\>, \_size:stdgo.GoInt, \_maxcmp:stdgo.GoInt\):stdgo.Ref\<stdgo.sort\_test.\_Sort\_test.T\_adversaryTestingData\>](<#function-_newadversarytestingdata>)

- [function \_printOrgans\(\_s:stdgo.Slice\<stdgo.Ref\<stdgo.sort\_test.Organ\>\>\):Void](<#function-_printorgans>)

- [function \_runSearchWrappers\(\):Void](<#function-_runsearchwrappers>)

- [function \_testBentleyMcIlroy\(\_t:stdgo.Ref\<stdgo.testing.T\>, \_sort:\(\), \_maxswap:\(\)\):Void](<#function-_testbentleymcilroy>)

- [function benchmarkSearchWrappers\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarksearchwrappers>)

- [function benchmarkSort1e2\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarksort1e2>)

- [function benchmarkSort1e4\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarksort1e4>)

- [function benchmarkSort1e6\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarksort1e6>)

- [function benchmarkSortInt1K\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarksortint1k>)

- [function benchmarkSortInt1K\_Mod8\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarksortint1k_mod8>)

- [function benchmarkSortInt1K\_Reversed\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarksortint1k_reversed>)

- [function benchmarkSortInt1K\_Sorted\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarksortint1k_sorted>)

- [function benchmarkSortInt64K\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarksortint64k>)

- [function benchmarkSortInt64K\_Slice\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarksortint64k_slice>)

- [function benchmarkSortString1K\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarksortstring1k>)

- [function benchmarkSortString1K\_Slice\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarksortstring1k_slice>)

- [function benchmarkStable1e2\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkstable1e2>)

- [function benchmarkStable1e4\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkstable1e4>)

- [function benchmarkStable1e6\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkstable1e6>)

- [function benchmarkStableInt1K\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkstableint1k>)

- [function benchmarkStableInt1K\_Slice\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkstableint1k_slice>)

- [function benchmarkStableInt64K\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkstableint64k>)

- [function benchmarkStableString1K\(\_b:stdgo.Ref\<stdgo.testing.B\>\):Void](<#function-benchmarkstablestring1k>)

- [function example\(\):Void](<#function-example>)

- [function exampleFloat64s\(\):Void](<#function-examplefloat64s>)

- [function exampleFloat64sAreSorted\(\):Void](<#function-examplefloat64saresorted>)

- [function exampleInts\(\):Void](<#function-exampleints>)

- [function exampleIntsAreSorted\(\):Void](<#function-exampleintsaresorted>)

- [function exampleReverse\(\):Void](<#function-examplereverse>)

- [function exampleSearch\(\):Void](<#function-examplesearch>)

- [function exampleSearchFloat64s\(\):Void](<#function-examplesearchfloat64s>)

- [function exampleSearchInts\(\):Void](<#function-examplesearchints>)

- [function exampleSearch\_descendingOrder\(\):Void](<#function-examplesearch_descendingorder>)

- [function exampleSlice\(\):Void](<#function-exampleslice>)

- [function exampleSliceStable\(\):Void](<#function-exampleslicestable>)

- [function exampleStrings\(\):Void](<#function-examplestrings>)

- [function example\_sortKeys\(\):Void](<#function-example_sortkeys>)

- [function example\_sortMultiKeys\(\):Void](<#function-example_sortmultikeys>)

- [function example\_sortWrapper\(\):Void](<#function-example_sortwrapper>)

- [function orderedBy\(\_less:haxe.Rest\<stdgo.sort\_test.\_Sort\_test.T\_lessFunc\>\):stdgo.Ref\<stdgo.sort\_test.\_Sort\_test.T\_multiSorter\>](<#function-orderedby>)

- [function testAdversary\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testadversary>)

- [function testBreakPatterns\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testbreakpatterns>)

- [function testCountSortOps\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testcountsortops>)

- [function testCountStableOps\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testcountstableops>)

- [function testFind\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testfind>)

- [function testFindExhaustive\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testfindexhaustive>)

- [function testFloat64s\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testfloat64s>)

- [function testHeapsortBM\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testheapsortbm>)

- [function testInts\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testints>)

- [function testNonDeterministicComparison\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testnondeterministiccomparison>)

- [function testReverseRange\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testreverserange>)

- [function testReverseSortIntSlice\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testreversesortintslice>)

- [function testSearch\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testsearch>)

- [function testSearchEfficiency\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testsearchefficiency>)

- [function testSearchExhaustive\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testsearchexhaustive>)

- [function testSearchWrappers\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testsearchwrappers>)

- [function testSearchWrappersDontAlloc\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testsearchwrappersdontalloc>)

- [function testSlice\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testslice>)

- [function testSortBM\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testsortbm>)

- [function testSortFloat64Slice\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testsortfloat64slice>)

- [function testSortIntSlice\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testsortintslice>)

- [function testSortLarge\_Random\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testsortlarge_random>)

- [function testSortStringSlice\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-testsortstringslice>)

- [function testStability\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-teststability>)

- [function testStableBM\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-teststablebm>)

- [function testStableInts\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-teststableints>)

- [function testStrings\(\_t:stdgo.Ref\<stdgo.testing.T\>\):Void](<#function-teststrings>)

- [function main\(\):Void](<#function-main>)

- [class ByName](<#class-byname>)

  - [function len\(\):stdgo.GoInt](<#byname-function-len>)

  - [function new\(?organs:Null\<stdgo.sort\_test.Organs\>\):Void](<#byname-function-new>)

  - [function swap\(\_i:stdgo.GoInt, \_j:stdgo.GoInt\):Void](<#byname-function-swap>)

  - [function len\(\):stdgo.GoInt](<#byname-function-len>)

  - [function less\( \_i:stdgo.GoInt, \_j:stdgo.GoInt\):Bool](<#byname-function-less>)

  - [function swap\( \_i:stdgo.GoInt, \_j:stdgo.GoInt\):Void](<#byname-function-swap>)

- [class ByWeight](<#class-byweight>)

  - [function len\(\):stdgo.GoInt](<#byweight-function-len>)

  - [function new\(?organs:Null\<stdgo.sort\_test.Organs\>\):Void](<#byweight-function-new>)

  - [function swap\(\_i:stdgo.GoInt, \_j:stdgo.GoInt\):Void](<#byweight-function-swap>)

  - [function len\(\):stdgo.GoInt](<#byweight-function-len>)

  - [function less\( \_i:stdgo.GoInt, \_j:stdgo.GoInt\):Bool](<#byweight-function-less>)

  - [function swap\( \_i:stdgo.GoInt, \_j:stdgo.GoInt\):Void](<#byweight-function-swap>)

- [class Change](<#class-change>)

  - [function new\(?\_user:stdgo.GoString, ?\_language:stdgo.GoString, ?\_lines:Null\<stdgo.GoInt\>\):Void](<#change-function-new>)

- [class Organ](<#class-organ>)

  - [function new\(?name:stdgo.GoString, ?weight:Null\<stdgo.sort\_test.Grams\>\):Void](<#organ-function-new>)

- [class Person](<#class-person>)

  - [function new\(?name:stdgo.GoString, ?age:Null\<stdgo.GoInt\>\):Void](<#person-function-new>)

  - [function string\(\):stdgo.GoString](<#person-function-string>)

- [class Planet](<#class-planet>)

  - [function new\(?\_name:stdgo.GoString, ?\_mass:Null\<stdgo.sort\_test.\_Sort\_test.T\_earthMass\>, ?\_distance:Null\<stdgo.sort\_test.\_Sort\_test.T\_au\>\):Void](<#planet-function-new>)

- [typedef By](<#typedef-by>)

  - [function sort\( \_planets:stdgo.Slice\<stdgo.sort\_test.Planet\>\):Void](<#by-function-sort>)

- [typedef ByAge](<#typedef-byage>)

  - [function len\(\):stdgo.GoInt](<#byage-function-len>)

  - [function less\( \_i:stdgo.GoInt, \_j:stdgo.GoInt\):Bool](<#byage-function-less>)

  - [function swap\( \_i:stdgo.GoInt, \_j:stdgo.GoInt\):Void](<#byage-function-swap>)

- [typedef Grams](<#typedef-grams>)

  - [function string\(\):stdgo.GoString](<#grams-function-string>)

- [typedef Organs](<#typedef-organs>)

  - [function len\(\):stdgo.GoInt](<#organs-function-len>)

  - [function swap\( \_i:stdgo.GoInt, \_j:stdgo.GoInt\):Void](<#organs-function-swap>)

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


 


[\(view code\)](<./Sort.hx#L1911>)


## function \_countOps


```haxe
function _countOps(_t:stdgo.Ref<stdgo.testing.T>, _algo:(), _name:stdgo.GoString):Void
```


 


[\(view code\)](<./Sort.hx#L1876>)


## function \_f


```haxe
function _f(_a:stdgo.Slice<stdgo.GoInt>, _x:stdgo.GoInt):()
```


 


[\(view code\)](<./Sort.hx#L850>)


## function \_lg


```haxe
function _lg(_n:stdgo.GoInt):stdgo.GoInt
```


 


[\(view code\)](<./Sort.hx#L1633>)


## function \_log2


```haxe
function _log2(_x:stdgo.GoInt):stdgo.GoInt
```


log2 computes the binary logarithm of x, rounded up to the next integer. \(log2\(0\) == 0, log2\(1\) == 0, log2\(2\) == 1, log2\(3\) == 2, etc.\) 


[\(view code\)](<./Sort.hx#L1066>)


## function \_min


```haxe
function _min(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt
```


 


[\(view code\)](<./Sort.hx#L1626>)


## function \_newAdversaryTestingData


```haxe
function _newAdversaryTestingData(_t:stdgo.Ref<stdgo.testing.T>, _size:stdgo.GoInt, _maxcmp:stdgo.GoInt):stdgo.Ref<stdgo.sort_test._Sort_test.T_adversaryTestingData>
```


 


[\(view code\)](<./Sort.hx#L1783>)


## function \_printOrgans


```haxe
function _printOrgans(_s:stdgo.Slice<stdgo.Ref<stdgo.sort_test.Organ>>):Void
```


 


[\(view code\)](<./Sort.hx#L844>)


## function \_runSearchWrappers


```haxe
function _runSearchWrappers():Void
```


 


[\(view code\)](<./Sort.hx#L1115>)


## function \_testBentleyMcIlroy


```haxe
function _testBentleyMcIlroy(_t:stdgo.Ref<stdgo.testing.T>, _sort:(), _maxswap:()):Void
```


 


[\(view code\)](<./Sort.hx#L1641>)


## function benchmarkSearchWrappers


```haxe
function benchmarkSearchWrappers(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1137>)


## function benchmarkSort1e2


```haxe
function benchmarkSort1e2(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1956>)


## function benchmarkSort1e4


```haxe
function benchmarkSort1e4(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1964>)


## function benchmarkSort1e6


```haxe
function benchmarkSort1e6(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1972>)


## function benchmarkSortInt1K


```haxe
function benchmarkSortInt1K(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1453>)


## function benchmarkSortInt1K\_Mod8


```haxe
function benchmarkSortInt1K_Mod8(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1510>)


## function benchmarkSortInt1K\_Reversed


```haxe
function benchmarkSortInt1K_Reversed(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1491>)


## function benchmarkSortInt1K\_Sorted


```haxe
function benchmarkSortInt1K_Sorted(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1472>)


## function benchmarkSortInt64K


```haxe
function benchmarkSortInt64K(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1567>)


## function benchmarkSortInt64K\_Slice


```haxe
function benchmarkSortInt64K_Slice(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1586>)


## function benchmarkSortString1K


```haxe
function benchmarkSortString1K(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1397>)


## function benchmarkSortString1K\_Slice


```haxe
function benchmarkSortString1K_Slice(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1415>)


## function benchmarkStable1e2


```haxe
function benchmarkStable1e2(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1960>)


## function benchmarkStable1e4


```haxe
function benchmarkStable1e4(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1968>)


## function benchmarkStable1e6


```haxe
function benchmarkStable1e6(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1976>)


## function benchmarkStableInt1K


```haxe
function benchmarkStableInt1K(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1529>)


## function benchmarkStableInt1K\_Slice


```haxe
function benchmarkStableInt1K_Slice(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1547>)


## function benchmarkStableInt64K


```haxe
function benchmarkStableInt64K(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1607>)


## function benchmarkStableString1K


```haxe
function benchmarkStableString1K(_b:stdgo.Ref<stdgo.testing.B>):Void
```


 


[\(view code\)](<./Sort.hx#L1435>)


## function example


```haxe
function example():Void
```


 


[\(view code\)](<./Sort.hx#L606>)


## function exampleFloat64s


```haxe
function exampleFloat64s():Void
```


 


[\(view code\)](<./Sort.hx#L765>)


## function exampleFloat64sAreSorted


```haxe
function exampleFloat64sAreSorted():Void
```


 


[\(view code\)](<./Sort.hx#L775>)


## function exampleInts


```haxe
function exampleInts():Void
```


 


[\(view code\)](<./Sort.hx#L750>)


## function exampleIntsAreSorted


```haxe
function exampleIntsAreSorted():Void
```


 


[\(view code\)](<./Sort.hx#L756>)


## function exampleReverse


```haxe
function exampleReverse():Void
```


 


[\(view code\)](<./Sort.hx#L784>)


## function exampleSearch


```haxe
function exampleSearch():Void
```


This example demonstrates searching a list sorted in ascending order. 


[\(view code\)](<./Sort.hx#L690>)


## function exampleSearchFloat64s


```haxe
function exampleSearchFloat64s():Void
```


This example demonstrates searching for float64 in a list sorted in ascending order. 


[\(view code\)](<./Sort.hx#L726>)


## function exampleSearchInts


```haxe
function exampleSearchInts():Void
```


This example demonstrates searching for int in a list sorted in ascending order. 


[\(view code\)](<./Sort.hx#L740>)


## function exampleSearch\_descendingOrder


```haxe
function exampleSearch_descendingOrder():Void
```


This example demonstrates searching a list sorted in descending order. The approach is the same as searching a list in ascending order, but with the condition inverted. 


[\(view code\)](<./Sort.hx#L709>)


## function exampleSlice


```haxe
function exampleSlice():Void
```


 


[\(view code\)](<./Sort.hx#L790>)


## function exampleSliceStable


```haxe
function exampleSliceStable():Void
```


 


[\(view code\)](<./Sort.hx#L804>)


## function exampleStrings


```haxe
function exampleStrings():Void
```


 


[\(view code\)](<./Sort.hx#L820>)


## function example\_sortKeys


```haxe
function example_sortKeys():Void
```


ExampleSortKeys demonstrates a technique for sorting a struct type using programmable sort criteria. 


[\(view code\)](<./Sort.hx#L625>)


## function example\_sortMultiKeys


```haxe
function example_sortMultiKeys():Void
```


ExampleMultiKeys demonstrates a technique for sorting a struct type using different sets of multiple fields in the comparison. We chain together "Less" functions, each of which compares a single field. 


[\(view code\)](<./Sort.hx#L662>)


## function example\_sortWrapper


```haxe
function example_sortWrapper():Void
```


 


[\(view code\)](<./Sort.hx#L827>)


## function orderedBy


```haxe
function orderedBy(_less:haxe.Rest<stdgo.sort_test._Sort_test.T_lessFunc>):stdgo.Ref<stdgo.sort_test._Sort_test.T_multiSorter>
```


OrderedBy returns a Sorter that sorts using the less functions, in order. Call its Sort method to sort the data. 


[\(view code\)](<./Sort.hx#L652>)


## function testAdversary


```haxe
function testAdversary(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1800>)


## function testBreakPatterns


```haxe
function testBreakPatterns(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1316>)


## function testCountSortOps


```haxe
function testCountSortOps(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1907>)


## function testCountStableOps


```haxe
function testCountStableOps(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1903>)


## function testFind


```haxe
function testFind(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L865>)


## function testFindExhaustive


```haxe
function testFindExhaustive(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Abstract exhaustive test for Find. 


[\(view code\)](<./Sort.hx#L1173>)


## function testFloat64s


```haxe
function testFloat64s(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1244>)


## function testHeapsortBM


```haxe
function testHeapsortBM(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1771>)


## function testInts


```haxe
function testInts(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1235>)


## function testNonDeterministicComparison


```haxe
function testNonDeterministicComparison(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1348>)


## function testReverseRange


```haxe
function testReverseRange(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1327>)


## function testReverseSortIntSlice


```haxe
function testReverseSortIntSlice(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1296>)


## function testSearch


```haxe
function testSearch(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L856>)


## function testSearchEfficiency


```haxe
function testSearchEfficiency(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1077>)


## function testSearchExhaustive


```haxe
function testSearchExhaustive(_t:stdgo.Ref<stdgo.testing.T>):Void
```


Abstract exhaustive test: all sizes up to 100, all possible return values. If there are any small corner cases, this test exercises them. 


[\(view code\)](<./Sort.hx#L1151>)


## function testSearchWrappers


```haxe
function testSearchWrappers(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1107>)


## function testSearchWrappersDontAlloc


```haxe
function testSearchWrappersDontAlloc(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1124>)


## function testSlice


```haxe
function testSlice(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1262>)


## function testSortBM


```haxe
function testSortBM(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1765>)


## function testSortFloat64Slice


```haxe
function testSortFloat64Slice(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1215>)


## function testSortIntSlice


```haxe
function testSortIntSlice(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1205>)


## function testSortLarge\_Random


```haxe
function testSortLarge_Random(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1275>)


## function testSortStringSlice


```haxe
function testSortStringSlice(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1225>)


## function testStability


```haxe
function testStability(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1820>)


## function testStableBM


```haxe
function testStableBM(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1777>)


## function testStableInts


```haxe
function testStableInts(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1812>)


## function testStrings


```haxe
function testStrings(_t:stdgo.Ref<stdgo.testing.T>):Void
```


 


[\(view code\)](<./Sort.hx#L1253>)


## function main


```haxe
function main():Void
```


 


[\(view code\)](<./Sort.hx#L146>)


# Classes


```haxe
import stdgo.sort_test.*
```


## class ByName


ByName implements sort.Interface by providing Less and using the Len and Swap methods of the embedded Organs value. 


```haxe
var organs:stdgo.sort_test.Organs
```


### ByName function len


```haxe
function len():stdgo.GoInt
```


 


[\(view code\)](<./Sort_test.hx#L395>)


### ByName function new


```haxe
function new(?organs:Null<stdgo.sort_test.Organs>):Void
```


 


[\(view code\)](<./Sort_test.hx#L388>)


### ByName function swap


```haxe
function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort_test.hx#L399>)


### ByName function len


```haxe
function len():stdgo.GoInt
```


 


[\(view code\)](<./Sort_test.hx#L2206>)


### ByName function less


```haxe
function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```


 


[\(view code\)](<./Sort_test.hx#L2196>)


### ByName function swap


```haxe
function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort_test.hx#L2202>)


## class ByWeight


ByWeight implements sort.Interface by providing Less and using the Len and Swap methods of the embedded Organs value. 


```haxe
var organs:stdgo.sort_test.Organs
```


### ByWeight function len


```haxe
function len():stdgo.GoInt
```


 


[\(view code\)](<./Sort_test.hx#L424>)


### ByWeight function new


```haxe
function new(?organs:Null<stdgo.sort_test.Organs>):Void
```


 


[\(view code\)](<./Sort_test.hx#L417>)


### ByWeight function swap


```haxe
function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort_test.hx#L428>)


### ByWeight function len


```haxe
function len():stdgo.GoInt
```


 


[\(view code\)](<./Sort_test.hx#L2245>)


### ByWeight function less


```haxe
function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```


 


[\(view code\)](<./Sort_test.hx#L2235>)


### ByWeight function swap


```haxe
function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort_test.hx#L2241>)


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


 


[\(view code\)](<./Sort_test.hx#L322>)


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


 


[\(view code\)](<./Sort_test.hx#L365>)


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


 


[\(view code\)](<./Sort_test.hx#L247>)


### Person function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Sort_test.hx#L1998>)


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


 


[\(view code\)](<./Sort_test.hx#L270>)


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


[\(view code\)](<./Sort_test.hx#L2481>)


## typedef ByAge


```haxe
typedef ByAge = var x:stdgo.sort_test.Person
```


ByAge implements sort.Interface for \[\]Person based on the Age field. 


### ByAge function len


```haxe
function len():stdgo.GoInt
```


 


[\(view code\)](<./Sort_test.hx#L2452>)


### ByAge function less


```haxe
function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```


 


[\(view code\)](<./Sort_test.hx#L2437>)


### ByAge function swap


```haxe
function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort_test.hx#L2442>)


## typedef Grams


```haxe
typedef Grams = var t:{<>}
```


 


### Grams function string


```haxe
function string():stdgo.GoString
```


 


[\(view code\)](<./Sort_test.hx#L2505>)


## typedef Organs


```haxe
typedef Organs = var x:stdgo.Ref<stdgo.sort_test.Organ>
```


 


### Organs function len


```haxe
function len():stdgo.GoInt
```


 


[\(view code\)](<./Sort_test.hx#L2542>)


### Organs function swap


```haxe
function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort_test.hx#L2532>)



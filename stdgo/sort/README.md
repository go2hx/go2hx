# Module: `stdgo.sort`

[(view library index)](../stdgo.md)


# Overview


Package sort provides primitives for sorting slices and user\-defined collections. 


<details><summary>hl tests passed</summary>
<p>

```
=== RUN   TestSearch
--- PASS: TestSearch (0.0013740062713623)
=== RUN   TestFind
--- PASS: TestFind (4.69684600830078e-05)
=== RUN   TestSearchEfficiency
--- PASS: TestSearchEfficiency (0.0177938938140869)
=== RUN   TestSearchWrappers
--- PASS: TestSearchWrappers (1.09672546386719e-05)
=== RUN   TestSearchWrappersDontAlloc
--- PASS: TestSearchWrappersDontAlloc (1.09672546386719e-05)
=== RUN   TestSearchExhaustive
--- PASS: TestSearchExhaustive (0.0364689826965332)
=== RUN   TestFindExhaustive
--- PASS: TestFindExhaustive (0.074293851852417)
=== RUN   TestSortIntSlice
--- PASS: TestSortIntSlice (5.19752502441406e-05)
=== RUN   TestSortFloat64Slice
--- PASS: TestSortFloat64Slice (4.1961669921875e-05)
=== RUN   TestSortStringSlice
--- PASS: TestSortStringSlice (8.0108642578125e-05)
=== RUN   TestInts
--- PASS: TestInts (3.38554382324219e-05)
=== RUN   TestFloat64s
--- PASS: TestFloat64s (4.31537628173828e-05)
=== RUN   TestStrings
--- PASS: TestStrings (6.103515625e-05)
=== RUN   TestSlice
--- PASS: TestSlice (0.000178098678588867)
=== RUN   TestSortLarge_Random
--- PASS: TestSortLarge_Random (0.15363597869873)
=== RUN   TestReverseSortIntSlice
--- PASS: TestReverseSortIntSlice (7.08103179931641e-05)
=== RUN   TestBreakPatterns
--- PASS: TestBreakPatterns (7.91549682617188e-05)
=== RUN   TestReverseRange
--- PASS: TestReverseRange (3.09944152832031e-05)
=== RUN   TestNonDeterministicComparison
--- PASS: TestNonDeterministicComparison (4.91925096511841)
=== RUN   TestSortBM
--- PASS: TestSortBM (0.290256977081299)
=== RUN   TestHeapsortBM
--- PASS: TestHeapsortBM (0.442838907241821)
=== RUN   TestStableBM
--- PASS: TestStableBM (0.632217168807983)
=== RUN   TestAdversary
--- PASS: TestAdversary (0.0215859413146973)
=== RUN   TestStableInts
--- PASS: TestStableInts (3.60012054443359e-05)
=== RUN   TestStability
--- PASS: TestStability (0.0355789661407471)
=== RUN   TestCountStableOps
--- PASS: TestCountStableOps (0.571748971939087)
=== RUN   TestCountSortOps
--- PASS: TestCountSortOps (0.230613946914673)
```
</p>
</details>

<details><summary>interp tests passed</summary>
<p>

```
=== RUN   TestSearch
--- PASS: TestSearch (0.00137114524841308594)
=== RUN   TestFind
--- PASS: TestFind (0.000152826309204101562)
=== RUN   TestSearchEfficiency
--- PASS: TestSearchEfficiency (0.0806820392608642578)
=== RUN   TestSearchWrappers
--- PASS: TestSearchWrappers (1.78813934326171875e-05)
=== RUN   TestSearchWrappersDontAlloc
--- PASS: TestSearchWrappersDontAlloc (1.50203704833984375e-05)
=== RUN   TestSearchExhaustive
--- PASS: TestSearchExhaustive (0.169901847839355469)
=== RUN   TestFindExhaustive
--- PASS: TestFindExhaustive (0.363474845886230469)
=== RUN   TestSortIntSlice
--- PASS: TestSortIntSlice (0.000241041183471679688)
=== RUN   TestSortFloat64Slice
--- PASS: TestSortFloat64Slice (0.000231027603149414062)
=== RUN   TestSortStringSlice
--- PASS: TestSortStringSlice (0.000147104263305664062)
=== RUN   TestInts
--- PASS: TestInts (0.000171184539794921875)
=== RUN   TestFloat64s
--- PASS: TestFloat64s (0.000218152999877929688)
=== RUN   TestStrings
--- PASS: TestStrings (0.000116109848022460938)
=== RUN   TestSlice
--- PASS: TestSlice (0.000427007675170898438)
=== RUN   TestSortLarge_Random
--- PASS: TestSortLarge_Random (0.874493122100830078)
=== RUN   TestReverseSortIntSlice
--- PASS: TestReverseSortIntSlice (0.0003910064697265625)
=== RUN   TestBreakPatterns
--- PASS: TestBreakPatterns (0.000540018081665039062)
=== RUN   TestReverseRange
--- PASS: TestReverseRange (6.198883056640625e-05)
=== RUN   TestNonDeterministicComparison
--- PASS: TestNonDeterministicComparison (31.3856520652771)
=== RUN   TestSortBM
--- PASS: TestSortBM (2.19977593421936035)
=== RUN   TestHeapsortBM
--- PASS: TestHeapsortBM (4.31500005722045898)
=== RUN   TestStableBM
--- PASS: TestStableBM (4.40977120399475098)
=== RUN   TestAdversary
--- PASS: TestAdversary (0.233900070190429688)
=== RUN   TestStableInts
--- PASS: TestStableInts (0.000198841094970703125)
=== RUN   TestStability
--- PASS: TestStability (0.244382143020629883)
=== RUN   TestCountStableOps
--- PASS: TestCountStableOps (3.44327592849731445)
=== RUN   TestCountSortOps
--- PASS: TestCountSortOps (1.3760530948638916)
```
</p>
</details>

<details><summary>jvm tests failed</summary>
<p>

```
IO.Overflow("write_ui16")
```
</p>
</details>


# Index


- [`function _breakPatterns(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-_breakpatterns>)

- [`function _breakPatterns_func(_data:stdgo.sort._Sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-_breakpatterns_func>)

- [`function _choosePivot(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):{_1:stdgo.sort._Sort.T_sortedHint, _0:stdgo.GoInt}`](<#function-_choosepivot>)

- [`function _choosePivot_func(_data:stdgo.sort._Sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):{_1:stdgo.sort._Sort.T_sortedHint, _0:stdgo.GoInt}`](<#function-_choosepivot_func>)

- [`function _heapSort(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-_heapsort>)

- [`function _heapSort_func(_data:stdgo.sort._Sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-_heapsort_func>)

- [`function _insertionSort(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-_insertionsort>)

- [`function _insertionSort_func(_data:stdgo.sort._Sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-_insertionsort_func>)

- [`function _isNaN(_f:stdgo.GoFloat64):Bool`](<#function-_isnan>)

- [`function _median(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt`](<#function-_median>)

- [`function _medianAdjacent(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt`](<#function-_medianadjacent>)

- [`function _medianAdjacent_func(_data:stdgo.sort._Sort.T_lessSwap, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt`](<#function-_medianadjacent_func>)

- [`function _median_func(_data:stdgo.sort._Sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt`](<#function-_median_func>)

- [`function _nextPowerOfTwo(_length:stdgo.GoInt):stdgo.GoUInt`](<#function-_nextpoweroftwo>)

- [`function _order2(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):{_1:stdgo.GoInt, _0:stdgo.GoInt}`](<#function-_order2>)

- [`function _order2_func(_data:stdgo.sort._Sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):{_1:stdgo.GoInt, _0:stdgo.GoInt}`](<#function-_order2_func>)

- [`function _partialInsertionSort(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Bool`](<#function-_partialinsertionsort>)

- [`function _partialInsertionSort_func(_data:stdgo.sort._Sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Bool`](<#function-_partialinsertionsort_func>)

- [`function _partition(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):{_1:Bool, _0:stdgo.GoInt}`](<#function-_partition>)

- [`function _partitionEqual(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):stdgo.GoInt`](<#function-_partitionequal>)

- [`function _partitionEqual_func(_data:stdgo.sort._Sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):stdgo.GoInt`](<#function-_partitionequal_func>)

- [`function _partition_func(_data:stdgo.sort._Sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):{_1:Bool, _0:stdgo.GoInt}`](<#function-_partition_func>)

- [`function _pdqsort(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt):Void`](<#function-_pdqsort>)

- [`function _pdqsort_func(_data:stdgo.sort._Sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt):Void`](<#function-_pdqsort_func>)

- [`function _reverseRange(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-_reverserange>)

- [`function _reverseRange_func(_data:stdgo.sort._Sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-_reverserange_func>)

- [`function _rotate(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-_rotate>)

- [`function _rotate_func(_data:stdgo.sort._Sort.T_lessSwap, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-_rotate_func>)

- [`function _siftDown(_data:stdgo.sort.Interface, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt):Void`](<#function-_siftdown>)

- [`function _siftDown_func(_data:stdgo.sort._Sort.T_lessSwap, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt):Void`](<#function-_siftdown_func>)

- [`function _stable(_data:stdgo.sort.Interface, _n:stdgo.GoInt):Void`](<#function-_stable>)

- [`function _stable_func(_data:stdgo.sort._Sort.T_lessSwap, _n:stdgo.GoInt):Void`](<#function-_stable_func>)

- [`function _swapRange(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt):Void`](<#function-_swaprange>)

- [`function _swapRange_func(_data:stdgo.sort._Sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt):Void`](<#function-_swaprange_func>)

- [`function _symMerge(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-_symmerge>)

- [`function _symMerge_func(_data:stdgo.sort._Sort.T_lessSwap, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-_symmerge_func>)

- [`function find(_n:stdgo.GoInt, _cmp:()):{_1:Bool, _0:stdgo.GoInt}`](<#function-find>)

- [`function float64s(_x:stdgo.Slice<stdgo.GoFloat64>):Void`](<#function-float64s>)

- [`function float64sAreSorted(_x:stdgo.Slice<stdgo.GoFloat64>):Bool`](<#function-float64saresorted>)

- [`function heapsort(_data:stdgo.sort.Interface):Void`](<#function-heapsort>)

- [`function ints(_x:stdgo.Slice<stdgo.GoInt>):Void`](<#function-ints>)

- [`function intsAreSorted(_x:stdgo.Slice<stdgo.GoInt>):Bool`](<#function-intsaresorted>)

- [`function isSorted(_data:stdgo.sort.Interface):Bool`](<#function-issorted>)

- [`function reverse(_data:stdgo.sort.Interface):stdgo.sort.Interface`](<#function-reverse>)

- [`function reverseRange(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-reverserange>)

- [`function search(_n:stdgo.GoInt, _f:()):stdgo.GoInt`](<#function-search>)

- [`function searchFloat64s(_a:stdgo.Slice<stdgo.GoFloat64>, _x:stdgo.GoFloat64):stdgo.GoInt`](<#function-searchfloat64s>)

- [`function searchInts(_a:stdgo.Slice<stdgo.GoInt>, _x:stdgo.GoInt):stdgo.GoInt`](<#function-searchints>)

- [`function searchStrings(_a:stdgo.Slice<stdgo.GoString>, _x:stdgo.GoString):stdgo.GoInt`](<#function-searchstrings>)

- [`function slice(_x:stdgo.AnyInterface, _less:(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool):Void`](<#function-slice>)

- [`function sliceIsSorted(_x:stdgo.AnyInterface, _less:(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool):Bool`](<#function-sliceissorted>)

- [`function sliceStable(_x:stdgo.AnyInterface, _less:(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool):Void`](<#function-slicestable>)

- [`function sort(_data:stdgo.sort.Interface):Void`](<#function-sort>)

- [`function stable(_data:stdgo.sort.Interface):Void`](<#function-stable>)

- [`function strings(_x:stdgo.Slice<stdgo.GoString>):Void`](<#function-strings>)

- [`function stringsAreSorted(_x:stdgo.Slice<stdgo.GoString>):Bool`](<#function-stringsaresorted>)

- [class Float64Slice\_static\_extension](<#class-float64slice_static_extension>)

  - [`function len():stdgo.GoInt`](<#float64slice_static_extension-function-len>)

  - [`function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool`](<#float64slice_static_extension-function-less>)

  - [`function search( _x:stdgo.GoFloat64):stdgo.GoInt`](<#float64slice_static_extension-function-search>)

  - [`function sort():Void`](<#float64slice_static_extension-function-sort>)

  - [`function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void`](<#float64slice_static_extension-function-swap>)

- [class IntSlice\_static\_extension](<#class-intslice_static_extension>)

  - [`function len():stdgo.GoInt`](<#intslice_static_extension-function-len>)

  - [`function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool`](<#intslice_static_extension-function-less>)

  - [`function search( _x:stdgo.GoInt):stdgo.GoInt`](<#intslice_static_extension-function-search>)

  - [`function sort():Void`](<#intslice_static_extension-function-sort>)

  - [`function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void`](<#intslice_static_extension-function-swap>)

- [class StringSlice\_static\_extension](<#class-stringslice_static_extension>)

  - [`function len():stdgo.GoInt`](<#stringslice_static_extension-function-len>)

  - [`function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool`](<#stringslice_static_extension-function-less>)

  - [`function search( _x:stdgo.GoString):stdgo.GoInt`](<#stringslice_static_extension-function-search>)

  - [`function sort():Void`](<#stringslice_static_extension-function-sort>)

  - [`function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void`](<#stringslice_static_extension-function-swap>)

- [class T\_reverse\_static\_extension](<#class-t_reverse_static_extension>)

  - [`function len(__self__:stdgo.sort._Sort.T_reverse):stdgo.GoInt`](<#t_reverse_static_extension-function-len>)

  - [`function less(_r:stdgo.sort._Sort.T_reverse, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool`](<#t_reverse_static_extension-function-less>)

  - [`function swap(__self__:stdgo.sort._Sort.T_reverse, _i_:stdgo.GoInt, _j_:stdgo.GoInt):Void`](<#t_reverse_static_extension-function-swap>)

- [class T\_xorshift\_static\_extension](<#class-t_xorshift_static_extension>)

  - [`function next(____:stdgo.sort._Sort.T_xorshift, _r:stdgo.Pointer<stdgo.sort._Sort.T_xorshift>):stdgo.GoUInt64`](<#t_xorshift_static_extension-function-next>)

- [typedef Float64Slice](<#typedef-float64slice>)

  - [`function len():stdgo.GoInt`](<#float64slice-function-len>)

  - [`function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool`](<#float64slice-function-less>)

  - [`function search( _x:stdgo.GoFloat64):stdgo.GoInt`](<#float64slice-function-search>)

  - [`function sort():Void`](<#float64slice-function-sort>)

  - [`function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void`](<#float64slice-function-swap>)

- [typedef IntSlice](<#typedef-intslice>)

  - [`function len():stdgo.GoInt`](<#intslice-function-len>)

  - [`function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool`](<#intslice-function-less>)

  - [`function search( _x:stdgo.GoInt):stdgo.GoInt`](<#intslice-function-search>)

  - [`function sort():Void`](<#intslice-function-sort>)

  - [`function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void`](<#intslice-function-swap>)

- [typedef Interface](<#typedef-interface>)

- [typedef StringSlice](<#typedef-stringslice>)

  - [`function len():stdgo.GoInt`](<#stringslice-function-len>)

  - [`function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool`](<#stringslice-function-less>)

  - [`function search( _x:stdgo.GoString):stdgo.GoInt`](<#stringslice-function-search>)

  - [`function sort():Void`](<#stringslice-function-sort>)

  - [`function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void`](<#stringslice-function-swap>)

# Examples


- [`exampleFloat64s`](<#examplefloat64s>)

- [`exampleFloat64sAreSorted`](<#examplefloat64saresorted>)

- [`exampleInts`](<#exampleints>)

- [`exampleIntsAreSorted`](<#exampleintsaresorted>)

- [`exampleReverse`](<#examplereverse>)

- [`exampleSearch`](<#examplesearch>)

- [`exampleSearchFloat64s`](<#examplesearchfloat64s>)

- [`exampleSearchInts`](<#examplesearchints>)

- [`exampleSearch_descendingOrder`](<#examplesearch_descendingorder>)

- [`exampleSlice`](<#exampleslice>)

- [`exampleSliceStable`](<#exampleslicestable>)

- [`exampleStrings`](<#examplestrings>)

# Functions


```haxe
import stdgo.sort.Sort
```


## function \_breakPatterns


```haxe
function _breakPatterns(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void
```


breakPatterns scatters some elements around in an attempt to break some patterns that might cause imbalanced partitions in quicksort. 


[\(view code\)](<./Sort.hx#L1189>)


## function \_breakPatterns\_func


```haxe
function _breakPatterns_func(_data:stdgo.sort._Sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void
```


breakPatterns\_func scatters some elements around in an attempt to break some patterns that might cause imbalanced partitions in quicksort. 


[\(view code\)](<./Sort.hx#L679>)


## function \_choosePivot


```haxe
function _choosePivot(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):{_1:stdgo.sort._Sort.T_sortedHint, _0:stdgo.GoInt}
```


choosePivot chooses a pivot in data\[a:b\].  \[0,8\): chooses a static pivot. \[8,shortestNinther\): uses the simple median\-of\-three method. \[shortestNinther,∞\): uses the Tukey ninther method. 


[\(view code\)](<./Sort.hx#L1214>)


## function \_choosePivot\_func


```haxe
function _choosePivot_func(_data:stdgo.sort._Sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):{_1:stdgo.sort._Sort.T_sortedHint, _0:stdgo.GoInt}
```


choosePivot\_func chooses a pivot in data\[a:b\].  \[0,8\): chooses a static pivot. \[8,shortestNinther\): uses the simple median\-of\-three method. \[shortestNinther,∞\): uses the Tukey ninther method. 


[\(view code\)](<./Sort.hx#L704>)


## function \_heapSort


```haxe
function _heapSort(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort.hx#L981>)


## function \_heapSort\_func


```haxe
function _heapSort_func(_data:stdgo.sort._Sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort.hx#L471>)


## function \_insertionSort


```haxe
function _insertionSort(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void
```


insertionSort sorts data\[a:b\] using insertion sort. 


[\(view code\)](<./Sort.hx#L945>)


## function \_insertionSort\_func


```haxe
function _insertionSort_func(_data:stdgo.sort._Sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void
```


insertionSort\_func sorts data\[a:b\] using insertion sort. 


[\(view code\)](<./Sort.hx#L435>)


## function \_isNaN


```haxe
function _isNaN(_f:stdgo.GoFloat64):Bool
```


isNaN is a copy of math.IsNaN to avoid a dependency on the math package. 


[\(view code\)](<./Sort.hx#L373>)


## function \_median


```haxe
function _median(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt
```


median returns x where data\[x\] is the median of data\[a\],data\[b\],data\[c\], where x is a, b, or c. 


[\(view code\)](<./Sort.hx#L1258>)


## function \_medianAdjacent


```haxe
function _medianAdjacent(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt
```


medianAdjacent finds the median of data\[a \- 1\], data\[a\], data\[a \+ 1\] and stores the index into a. 


[\(view code\)](<./Sort.hx#L1280>)


## function \_medianAdjacent\_func


```haxe
function _medianAdjacent_func(_data:stdgo.sort._Sort.T_lessSwap, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt
```


medianAdjacent\_func finds the median of data\[a \- 1\], data\[a\], data\[a \+ 1\] and stores the index into a. 


[\(view code\)](<./Sort.hx#L770>)


## function \_median\_func


```haxe
function _median_func(_data:stdgo.sort._Sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt
```


median\_func returns x where data\[x\] is the median of data\[a\],data\[b\],data\[c\], where x is a, b, or c. 


[\(view code\)](<./Sort.hx#L748>)


## function \_nextPowerOfTwo


```haxe
function _nextPowerOfTwo(_length:stdgo.GoInt):stdgo.GoUInt
```


 


[\(view code\)](<./Sort.hx#L342>)


## function \_order2


```haxe
function _order2(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):{_1:stdgo.GoInt, _0:stdgo.GoInt}
```


order2 returns x,y where data\[x\] \<= data\[y\], where x,y=a,b or x,y=b,a. 


[\(view code\)](<./Sort.hx#L1247>)


## function \_order2\_func


```haxe
function _order2_func(_data:stdgo.sort._Sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):{_1:stdgo.GoInt, _0:stdgo.GoInt}
```


order2\_func returns x,y where data\[x\] \<= data\[y\], where x,y=a,b or x,y=b,a. 


[\(view code\)](<./Sort.hx#L737>)


## function \_partialInsertionSort


```haxe
function _partialInsertionSort(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Bool
```


partialInsertionSort partially sorts a slice, returns true if the slice is sorted at the end. 


[\(view code\)](<./Sort.hx#L1142>)


## function \_partialInsertionSort\_func


```haxe
function _partialInsertionSort_func(_data:stdgo.sort._Sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Bool
```


partialInsertionSort\_func partially sorts a slice, returns true if the slice is sorted at the end. 


[\(view code\)](<./Sort.hx#L632>)


## function \_partition


```haxe
function _partition(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):{_1:Bool, _0:stdgo.GoInt}
```


partition does one quicksort partition. Let p = data\[pivot\] Moves elements in data\[a:b\] around, so that data\[i\]\<p and data\[j\]\>=p for i\<newpivot and j\>newpivot. On return, data\[newpivot\] = p 


[\(view code\)](<./Sort.hx#L1073>)


## function \_partitionEqual


```haxe
function _partitionEqual(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):stdgo.GoInt
```


partitionEqual partitions data\[a:b\] into elements equal to data\[pivot\] followed by elements greater than data\[pivot\]. It assumed that data\[a:b\] does not contain elements smaller than the data\[pivot\]. 


[\(view code\)](<./Sort.hx#L1115>)


## function \_partitionEqual\_func


```haxe
function _partitionEqual_func(_data:stdgo.sort._Sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):stdgo.GoInt
```


partitionEqual\_func partitions data\[a:b\] into elements equal to data\[pivot\] followed by elements greater than data\[pivot\]. It assumed that data\[a:b\] does not contain elements smaller than the data\[pivot\]. 


[\(view code\)](<./Sort.hx#L605>)


## function \_partition\_func


```haxe
function _partition_func(_data:stdgo.sort._Sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):{_1:Bool, _0:stdgo.GoInt}
```


partition\_func does one quicksort partition. Let p = data\[pivot\] Moves elements in data\[a:b\] around, so that data\[i\]\<p and data\[j\]\>=p for i\<newpivot and j\>newpivot. On return, data\[newpivot\] = p 


[\(view code\)](<./Sort.hx#L563>)


## function \_pdqsort


```haxe
function _pdqsort(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt):Void
```


pdqsort sorts data\[a:b\]. The algorithm based on pattern\-defeating quicksort\(pdqsort\), but without the optimizations from BlockQuicksort. pdqsort paper: https://arxiv.org/pdf/2106.05123.pdf C\+\+ implementation: https://github.com/orlp/pdqsort Rust implementation: https://docs.rs/pdqsort/latest/pdqsort/ limit is the number of allowed bad \(very unbalanced\) pivots before falling back to heapsort. 


[\(view code\)](<./Sort.hx#L1008>)


## function \_pdqsort\_func


```haxe
function _pdqsort_func(_data:stdgo.sort._Sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt):Void
```


pdqsort\_func sorts data\[a:b\]. The algorithm based on pattern\-defeating quicksort\(pdqsort\), but without the optimizations from BlockQuicksort. pdqsort paper: https://arxiv.org/pdf/2106.05123.pdf C\+\+ implementation: https://github.com/orlp/pdqsort Rust implementation: https://docs.rs/pdqsort/latest/pdqsort/ limit is the number of allowed bad \(very unbalanced\) pivots before falling back to heapsort. 


[\(view code\)](<./Sort.hx#L498>)


## function \_reverseRange


```haxe
function _reverseRange(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort.hx#L1284>)


## function \_reverseRange\_func


```haxe
function _reverseRange_func(_data:stdgo.sort._Sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort.hx#L774>)


## function \_rotate


```haxe
function _rotate(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void
```


rotate rotates two consecutive blocks u = data\[a:m\] and v = data\[m:b\] in data: Data of the form 'x u v y' is changed to 'x v u y'. rotate performs at most b\-a many calls to data.Swap, and it assumes non\-degenerate arguments: a \< m && m \< b. 


[\(view code\)](<./Sort.hx#L1437>)


## function \_rotate\_func


```haxe
function _rotate_func(_data:stdgo.sort._Sort.T_lessSwap, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void
```


rotate\_func rotates two consecutive blocks u = data\[a:m\] and v = data\[m:b\] in data: Data of the form 'x u v y' is changed to 'x v u y'. rotate performs at most b\-a many calls to data.Swap, and it assumes non\-degenerate arguments: a \< m && m \< b. 


[\(view code\)](<./Sort.hx#L927>)


## function \_siftDown


```haxe
function _siftDown(_data:stdgo.sort.Interface, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt):Void
```


siftDown implements the heap property on data\[lo:hi\]. first is an offset into the array where the root of the heap lies. 


[\(view code\)](<./Sort.hx#L963>)


## function \_siftDown\_func


```haxe
function _siftDown_func(_data:stdgo.sort._Sort.T_lessSwap, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt):Void
```


siftDown\_func implements the heap property on data\[lo:hi\]. first is an offset into the array where the root of the heap lies. 


[\(view code\)](<./Sort.hx#L453>)


## function \_stable


```haxe
function _stable(_data:stdgo.sort.Interface, _n:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort.hx#L1303>)


## function \_stable\_func


```haxe
function _stable_func(_data:stdgo.sort._Sort.T_lessSwap, _n:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort.hx#L793>)


## function \_swapRange


```haxe
function _swapRange(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort.hx#L1294>)


## function \_swapRange\_func


```haxe
function _swapRange_func(_data:stdgo.sort._Sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort.hx#L784>)


## function \_symMerge


```haxe
function _symMerge(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void
```


symMerge merges the two sorted subsequences data\[a:m\] and data\[m:b\] using the SymMerge algorithm from Pok\-Son Kim and Arne Kutzner, "Stable Minimum Storage Merging by Symmetric Comparisons", in Susanne Albers and Tomasz Radzik, editors, Algorithms \- ESA 2004, volume 3221 of Lecture Notes in Computer Science, pages 714\-723. Springer, 2004.  Let M = m\-a and N = b\-n. Wolog M \< N. The recursion depth is bound by ceil\(log\(N\+M\)\). The algorithm needs O\(M\*log\(N/M \+ 1\)\) calls to data.Less. The algorithm needs O\(\(M\+N\)\*log\(M\)\) calls to data.Swap.  The paper gives O\(\(M\+N\)\*log\(M\)\) as the number of assignments assuming a rotation algorithm which uses O\(M\+N\+gcd\(M\+N\)\) assignments. The argumentation in the paper carries through for Swap operations, especially as the block swapping rotate uses only O\(M\+N\) Swaps.  symMerge assumes non\-degenerate arguments: a \< m && m \< b. Having the caller check this condition eliminates many leaf recursion calls, which improves performance. 


[\(view code\)](<./Sort.hx#L1358>)


## function \_symMerge\_func


```haxe
function _symMerge_func(_data:stdgo.sort._Sort.T_lessSwap, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void
```


symMerge\_func merges the two sorted subsequences data\[a:m\] and data\[m:b\] using the SymMerge algorithm from Pok\-Son Kim and Arne Kutzner, "Stable Minimum Storage Merging by Symmetric Comparisons", in Susanne Albers and Tomasz Radzik, editors, Algorithms \- ESA 2004, volume 3221 of Lecture Notes in Computer Science, pages 714\-723. Springer, 2004.  Let M = m\-a and N = b\-n. Wolog M \< N. The recursion depth is bound by ceil\(log\(N\+M\)\). The algorithm needs O\(M\*log\(N/M \+ 1\)\) calls to data.Less. The algorithm needs O\(\(M\+N\)\*log\(M\)\) calls to data.Swap.  The paper gives O\(\(M\+N\)\*log\(M\)\) as the number of assignments assuming a rotation algorithm which uses O\(M\+N\+gcd\(M\+N\)\) assignments. The argumentation in the paper carries through for Swap operations, especially as the block swapping rotate uses only O\(M\+N\) Swaps.  symMerge assumes non\-degenerate arguments: a \< m && m \< b. Having the caller check this condition eliminates many leaf recursion calls, which improves performance. 


[\(view code\)](<./Sort.hx#L848>)


## function find


```haxe
function find(_n:stdgo.GoInt, _cmp:()):{_1:Bool, _0:stdgo.GoInt}
```


Find uses binary search to find and return the smallest index i in \[0, n\) at which cmp\(i\) \<= 0. If there is no such index i, Find returns i = n. The found result is true if i \< n and cmp\(i\) == 0. Find calls cmp\(i\) only for i in the range \[0, n\).  To permit binary search, Find requires that cmp\(i\) \> 0 for a leading prefix of the range, cmp\(i\) == 0 in the middle, and cmp\(i\) \< 0 for the final suffix of the range. \(Each subrange could be empty.\) The usual way to establish this condition is to interpret cmp\(i\) as a comparison of a desired target value t against entry i in an underlying indexed data structure x, returning \<0, 0, and \>0 when t \< x\[i\], t == x\[i\], and t \> x\[i\], respectively.  For example, to look for a particular string in a sorted, random\-access list of strings:  i, found := sort.Find\(x.Len\(\), func\(i int\) int \{ return strings.Compare\(target, x.At\(i\)\) \}\) if found \{ fmt.Printf\("found %s at entry %d\\n", target, i\) \} else \{ fmt.Printf\("%s not found, would insert at %d", target, i\) \} 


[\(view code\)](<./Sort.hx#L227>)


## function float64s


```haxe
function float64s(_x:stdgo.Slice<stdgo.GoFloat64>):Void
```


Float64s sorts a slice of float64s in increasing order. Not\-a\-number \(NaN\) values are ordered before other values. 


### exampleFloat64s


<details><summary></summary>
<p>


```haxe
function exampleFloat64s():Void {
	var _s = (new Slice<GoFloat64>(0, 0, (5.2 : GoFloat64), (-1.3 : GoFloat64), (0.7 : GoFloat64), (-3.8 : GoFloat64), (2.6 : GoFloat64)) : Slice<GoFloat64>);
	stdgo.sort.Sort.float64s(_s);
	stdgo.fmt.Fmt.println(_s);
	_s = (new Slice<GoFloat64>(0, 0, stdgo.math.Math.inf((1 : GoInt)), stdgo.math.Math.naN(), stdgo.math.Math.inf((-1 : GoInt)),
		(0 : GoFloat64)) : Slice<GoFloat64>);
	stdgo.sort.Sort.float64s(_s);
	stdgo.fmt.Fmt.println(_s);
}
```


</p>
</details>


[\(view code\)](<./Sort.hx#L388>)


## function float64sAreSorted


```haxe
function float64sAreSorted(_x:stdgo.Slice<stdgo.GoFloat64>):Bool
```


Float64sAreSorted reports whether the slice x is sorted in increasing order, with not\-a\-number \(NaN\) values before any other values. 


### exampleFloat64sAreSorted


<details><summary></summary>
<p>


```haxe
function exampleFloat64sAreSorted():Void {
	var _s = (new Slice<GoFloat64>(0, 0, (0.7 : GoFloat64), (1.3 : GoFloat64), (2.6 : GoFloat64), (3.8 : GoFloat64), (5.2 : GoFloat64)) : Slice<GoFloat64>);
	stdgo.fmt.Fmt.println(stdgo.sort.Sort.float64sAreSorted(_s));
	_s = (new Slice<GoFloat64>(0, 0, (5.2 : GoFloat64), (3.8 : GoFloat64), (2.6 : GoFloat64), (1.3 : GoFloat64), (0.7 : GoFloat64)) : Slice<GoFloat64>);
	stdgo.fmt.Fmt.println(stdgo.sort.Sort.float64sAreSorted(_s));
	_s = (new Slice<GoFloat64>(0, 0, (5.2 : GoFloat64), (1.3 : GoFloat64), (0.7 : GoFloat64), (3.8 : GoFloat64), (2.6 : GoFloat64)) : Slice<GoFloat64>);
	stdgo.fmt.Fmt.println(stdgo.sort.Sort.float64sAreSorted(_s));
}
```


</p>
</details>


[\(view code\)](<./Sort.hx#L410>)


## function heapsort


```haxe
function heapsort(_data:stdgo.sort.Interface):Void
```


 


[\(view code\)](<./Sort.hx#L129>)


## function ints


```haxe
function ints(_x:stdgo.Slice<stdgo.GoInt>):Void
```


Ints sorts a slice of ints in increasing order. 


### exampleInts


<details><summary></summary>
<p>


```haxe
function exampleInts():Void {
	var _s = (new Slice<GoInt>(0, 0, (5 : GoInt), (2 : GoInt), (6 : GoInt), (3 : GoInt), (1 : GoInt), (4 : GoInt)) : Slice<GoInt>);
	stdgo.sort.Sort.ints(_s);
	stdgo.fmt.Fmt.println(_s);
}
```


</p>
</details>


[\(view code\)](<./Sort.hx#L380>)


## function intsAreSorted


```haxe
function intsAreSorted(_x:stdgo.Slice<stdgo.GoInt>):Bool
```


IntsAreSorted reports whether the slice x is sorted in increasing order. 


### exampleIntsAreSorted


<details><summary></summary>
<p>


```haxe
function exampleIntsAreSorted():Void {
	var _s = (new Slice<GoInt>(0, 0, (1 : GoInt), (2 : GoInt), (3 : GoInt), (4 : GoInt), (5 : GoInt), (6 : GoInt)) : Slice<GoInt>);
	stdgo.fmt.Fmt.println(stdgo.sort.Sort.intsAreSorted(_s));
	_s = (new Slice<GoInt>(0, 0, (6 : GoInt), (5 : GoInt), (4 : GoInt), (3 : GoInt), (2 : GoInt), (1 : GoInt)) : Slice<GoInt>);
	stdgo.fmt.Fmt.println(stdgo.sort.Sort.intsAreSorted(_s));
	_s = (new Slice<GoInt>(0, 0, (3 : GoInt), (2 : GoInt), (4 : GoInt), (1 : GoInt), (5 : GoInt)) : Slice<GoInt>);
	stdgo.fmt.Fmt.println(stdgo.sort.Sort.intsAreSorted(_s));
}
```


</p>
</details>


[\(view code\)](<./Sort.hx#L402>)


## function isSorted


```haxe
function isSorted(_data:stdgo.sort.Interface):Bool
```


IsSorted reports whether data is sorted. 


[\(view code\)](<./Sort.hx#L357>)


## function reverse


```haxe
function reverse(_data:stdgo.sort.Interface):stdgo.sort.Interface
```


Reverse returns the reverse order for data. 


### exampleReverse


<details><summary></summary>
<p>


```haxe
function exampleReverse():Void {
	var _s = (new Slice<GoInt>(0, 0, (5 : GoInt), (2 : GoInt), (6 : GoInt), (3 : GoInt), (1 : GoInt), (4 : GoInt)) : Slice<GoInt>);
	stdgo.sort.Sort.sort(stdgo.sort.Sort.reverse(Go.asInterface((_s : IntSlice))));
	stdgo.fmt.Fmt.println(_s);
}
```


</p>
</details>


[\(view code\)](<./Sort.hx#L350>)


## function reverseRange


```haxe
function reverseRange(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort.hx#L133>)


## function search


```haxe
function search(_n:stdgo.GoInt, _f:()):stdgo.GoInt
```


Search uses binary search to find and return the smallest index i in \[0, n\) at which f\(i\) is true, assuming that on the range \[0, n\), f\(i\) == true implies f\(i\+1\) == true. That is, Search requires that f is false for some \(possibly empty\) prefix of the input range \[0, n\) and then true for the \(possibly empty\) remainder; Search returns the first true index. If there is no such index, Search returns n. \(Note that the "not found" return value is not \-1 as in, for instance, strings.Index.\) Search calls f\(i\) only for i in the range \[0, n\).  A common use of Search is to find the index i for a value x in a sorted, indexable data structure such as an array or slice. In this case, the argument f, typically a closure, captures the value to be searched for, and how the data structure is indexed and ordered.  For instance, given a slice data sorted in ascending order, the call Search\(len\(data\), func\(i int\) bool \{ return data\[i\] \>= 23 \}\) returns the smallest index i such that data\[i\] \>= 23. If the caller wants to find whether 23 is in the slice, it must test data\[i\] == 23 separately.  Searching data sorted in descending order would use the \<= operator instead of the \>= operator.  To complete the example above, the following code tries to find the value x in an integer slice data sorted in ascending order:  x := 23 i := sort.Search\(len\(data\), func\(i int\) bool \{ return data\[i\] \>= x \}\) if i \< len\(data\) && data\[i\] == x \{ // x is present at data\[i\] \} else \{ // x is not present in data, // but i is the index where it would be inserted. \}  As a more whimsical example, this program guesses your number:  func GuessingGame\(\) \{ var s string fmt.Printf\("Pick an integer from 0 to 100.\\n"\) answer := sort.Search\(100, func\(i int\) bool \{ fmt.Printf\("Is your number \<= %d? ", i\) fmt.Scanf\("%s", &s\) return s \!= "" && s\[0\] == 'y' \}\) fmt.Printf\("Your number is %d.\\n", answer\) \} 


### exampleSearch


<details><summary></summary>
<p>


```haxe
function exampleSearch():Void {
	var _a = (new Slice<GoInt>(0, 0, (1 : GoInt), (3 : GoInt), (6 : GoInt), (10 : GoInt), (15 : GoInt), (21 : GoInt), (28 : GoInt), (36 : GoInt),
		(45 : GoInt), (55 : GoInt)) : Slice<GoInt>);
	var _x:GoInt = (6 : GoInt);
	var _i:GoInt = stdgo.sort.Sort.search((_a.length), function(_i:GoInt):Bool {
		return _a[_i] >= _x;
	});
	if ((_i < _a.length) && (_a[_i] == _x)) {
		stdgo.fmt.Fmt.printf(Go.str("found %d at index %d in %v\n"), Go.toInterface(_x), Go.toInterface(_i), Go.toInterface(_a));
	} else {
		stdgo.fmt.Fmt.printf(Go.str("%d not found in %v\n"), Go.toInterface(_x), Go.toInterface(_a));
	};
}
```


</p>
</details>


### exampleSearch\_descendingOrder


<details><summary></summary>
<p>


```haxe
function exampleSearch_descendingOrder():Void {
	var _a = (new Slice<GoInt>(0, 0, (55 : GoInt), (45 : GoInt), (36 : GoInt), (28 : GoInt), (21 : GoInt), (15 : GoInt), (10 : GoInt), (6 : GoInt),
		(3 : GoInt), (1 : GoInt)) : Slice<GoInt>);
	var _x:GoInt = (6 : GoInt);
	var _i:GoInt = stdgo.sort.Sort.search((_a.length), function(_i:GoInt):Bool {
		return _a[_i] <= _x;
	});
	if ((_i < _a.length) && (_a[_i] == _x)) {
		stdgo.fmt.Fmt.printf(Go.str("found %d at index %d in %v\n"), Go.toInterface(_x), Go.toInterface(_i), Go.toInterface(_a));
	} else {
		stdgo.fmt.Fmt.printf(Go.str("%d not found in %v\n"), Go.toInterface(_x), Go.toInterface(_a));
	};
}
```


</p>
</details>


[\(view code\)](<./Sort.hx#L188>)


## function searchFloat64s


```haxe
function searchFloat64s(_a:stdgo.Slice<stdgo.GoFloat64>, _x:stdgo.GoFloat64):stdgo.GoInt
```


SearchFloat64s searches for x in a sorted slice of float64s and returns the index as specified by Search. The return value is the index to insert x if x is not present \(it could be len\(a\)\). The slice must be sorted in ascending order. 


### exampleSearchFloat64s


<details><summary></summary>
<p>


```haxe
function exampleSearchFloat64s():Void {
	var _a = (new Slice<GoFloat64>(0, 0, (1 : GoFloat64), (2 : GoFloat64), (3.3 : GoFloat64), (4.6 : GoFloat64), (6.1 : GoFloat64), (7.2 : GoFloat64),
		(8 : GoFloat64)) : Slice<GoFloat64>);
	var _x:GoFloat64 = (2 : GoFloat64);
	var _i:GoInt = stdgo.sort.Sort.searchFloat64s(_a, _x);
	stdgo.fmt.Fmt.printf(Go.str("found %g at index %d in %v\n"), Go.toInterface(_x), Go.toInterface(_i), Go.toInterface(_a));
	_x = (0.5 : GoFloat64);
	_i = stdgo.sort.Sort.searchFloat64s(_a, _x);
	stdgo.fmt.Fmt.printf(Go.str("%g not found, can be inserted at index %d in %v\n"), Go.toInterface(_x), Go.toInterface(_i), Go.toInterface(_a));
}
```


</p>
</details>


[\(view code\)](<./Sort.hx#L259>)


## function searchInts


```haxe
function searchInts(_a:stdgo.Slice<stdgo.GoInt>, _x:stdgo.GoInt):stdgo.GoInt
```


SearchInts searches for x in a sorted slice of ints and returns the index as specified by Search. The return value is the index to insert x if x is not present \(it could be len\(a\)\). The slice must be sorted in ascending order. 


### exampleSearchInts


<details><summary></summary>
<p>


```haxe
function exampleSearchInts():Void {
	var _a = (new Slice<GoInt>(0, 0, (1 : GoInt), (2 : GoInt), (3 : GoInt), (4 : GoInt), (6 : GoInt), (7 : GoInt), (8 : GoInt)) : Slice<GoInt>);
	var _x:GoInt = (2 : GoInt);
	var _i:GoInt = stdgo.sort.Sort.searchInts(_a, _x);
	stdgo.fmt.Fmt.printf(Go.str("found %d at index %d in %v\n"), Go.toInterface(_x), Go.toInterface(_i), Go.toInterface(_a));
	_x = (5 : GoInt);
	_i = stdgo.sort.Sort.searchInts(_a, _x);
	stdgo.fmt.Fmt.printf(Go.str("%d not found, can be inserted at index %d in %v\n"), Go.toInterface(_x), Go.toInterface(_i), Go.toInterface(_a));
}
```


</p>
</details>


[\(view code\)](<./Sort.hx#L247>)


## function searchStrings


```haxe
function searchStrings(_a:stdgo.Slice<stdgo.GoString>, _x:stdgo.GoString):stdgo.GoInt
```


SearchStrings searches for x in a sorted slice of strings and returns the index as specified by Search. The return value is the index to insert x if x is not present \(it could be len\(a\)\). The slice must be sorted in ascending order. 


[\(view code\)](<./Sort.hx#L271>)


## function slice


```haxe
function slice(_x:stdgo.AnyInterface, _less:(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool):Void
```


Slice sorts the slice x given the provided less function. It panics if x is not a slice.  The sort is not guaranteed to be stable: equal elements may be reversed from their original order. For a stable sort, use SliceStable.  The less function must satisfy the same requirements as the Interface type's Less method. 


### exampleSlice


<details><summary></summary>
<p>


```haxe
function exampleSlice():Void {
	var _people = (new Slice<Person>(0, 0, (new Person(Go.str("Gopher"), (7 : GoInt)) : Person), (new Person(Go.str("Alice"), (55 : GoInt)) : Person),
		(new Person(Go.str("Vera"), (24 : GoInt)) : Person), (new Person(Go.str("Bob"), (75 : GoInt)) : Person)) : Slice<Person>);
	stdgo.sort.Sort.slice(Go.toInterface(_people), function(_i:GoInt, _j:GoInt):Bool {
		return _people[_i].name < _people[_j].name;
	});
	stdgo.fmt.Fmt.println(Go.str("By name:"), _people);
	stdgo.sort.Sort.slice(Go.toInterface(_people), function(_i:GoInt, _j:GoInt):Bool {
		return _people[_i].age < _people[_j].age;
	});
	stdgo.fmt.Fmt.println(Go.str("By age:"), _people);
}
```


</p>
</details>


[\(view code\)](<./Sort.hx#L288>)


## function sliceIsSorted


```haxe
function sliceIsSorted(_x:stdgo.AnyInterface, _less:(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool):Bool
```


SliceIsSorted reports whether the slice x is sorted according to the provided less function. It panics if x is not a slice. 


[\(view code\)](<./Sort.hx#L314>)


## function sliceStable


```haxe
function sliceStable(_x:stdgo.AnyInterface, _less:(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool):Void
```


SliceStable sorts the slice x using the provided less function, keeping equal elements in their original order. It panics if x is not a slice.  The less function must satisfy the same requirements as the Interface type's Less method. 


### exampleSliceStable


<details><summary></summary>
<p>


```haxe
function exampleSliceStable():Void {
	var _people = (new Slice<Person>(0, 0, (new Person(Go.str("Alice"), (25 : GoInt)) : Person), (new Person(Go.str("Elizabeth"), (75 : GoInt)) : Person),
		(new Person(Go.str("Alice"), (75 : GoInt)) : Person), (new Person(Go.str("Bob"), (75 : GoInt)) : Person),
		(new Person(Go.str("Alice"), (75 : GoInt)) : Person), (new Person(Go.str("Bob"), (25 : GoInt)) : Person),
		(new Person(Go.str("Colin"), (25 : GoInt)) : Person), (new Person(Go.str("Elizabeth"), (25 : GoInt)) : Person)) : Slice<Person>);
	stdgo.sort.Sort.sliceStable(Go.toInterface(_people), function(_i:GoInt, _j:GoInt):Bool {
		return _people[_i].name < _people[_j].name;
	});
	stdgo.fmt.Fmt.println(Go.str("By name:"), _people);
	stdgo.sort.Sort.sliceStable(Go.toInterface(_people), function(_i:GoInt, _j:GoInt):Bool {
		return _people[_i].age < _people[_j].age;
	});
	stdgo.fmt.Fmt.println(Go.str("By age,name:"), _people);
}
```


</p>
</details>


[\(view code\)](<./Sort.hx#L304>)


## function sort


```haxe
function sort(_data:stdgo.sort.Interface):Void
```


Sort sorts data in ascending order as determined by the Less method. It makes one call to data.Len to determine n and O\(n\*log\(n\)\) calls to data.Less and data.Swap. The sort is not guaranteed to be stable. 


[\(view code\)](<./Sort.hx#L333>)


## function stable


```haxe
function stable(_data:stdgo.sort.Interface):Void
```


Stable sorts data in ascending order as determined by the Less method, while keeping the original order of equal elements.  It makes one call to data.Len to determine n, O\(n\*log\(n\)\) calls to data.Less and O\(n\*log\(n\)\*log\(n\)\) calls to data.Swap. 


[\(view code\)](<./Sort.hx#L428>)


## function strings


```haxe
function strings(_x:stdgo.Slice<stdgo.GoString>):Void
```


Strings sorts a slice of strings in increasing order. 


### exampleStrings


<details><summary></summary>
<p>


```haxe
function exampleStrings():Void {
	var _s = (new Slice<GoString>(0, 0, Go.str("Go"), Go.str("Bravo"), Go.str("Gopher"), Go.str("Alpha"), Go.str("Grin"), Go.str("Delta")) : Slice<GoString>);
	stdgo.sort.Sort.strings(_s);
	stdgo.fmt.Fmt.println(_s);
}
```


</p>
</details>


[\(view code\)](<./Sort.hx#L395>)


## function stringsAreSorted


```haxe
function stringsAreSorted(_x:stdgo.Slice<stdgo.GoString>):Bool
```


StringsAreSorted reports whether the slice x is sorted in increasing order. 


[\(view code\)](<./Sort.hx#L417>)


# Classes


```haxe
import stdgo.sort.*
```


## class Float64Slice\_static\_extension


 


### Float64Slice\_static\_extension function len


```haxe
function len():stdgo.GoInt
```


 


[\(view code\)](<./Sort.hx#L1692>)


### Float64Slice\_static\_extension function less


```haxe
function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```


Less reports whether x\[i\] should be ordered before x\[j\], as required by the sort Interface. Note that floating\-point comparison by itself is not a transitive relation: it does not report a consistent ordering for not\-a\-number \(NaN\) values. This implementation of Less places NaN values before any others, by using:  x\[i\] \< x\[j\] || \(math.IsNaN\(x\[i\]\) && \!math.IsNaN\(x\[j\]\)\) 


[\(view code\)](<./Sort.hx#L1687>)


### Float64Slice\_static\_extension function search


```haxe
function search( _x:stdgo.GoFloat64):stdgo.GoInt
```


Search returns the result of applying SearchFloat64s to the receiver and x. 


[\(view code\)](<./Sort.hx#L1700>)


### Float64Slice\_static\_extension function sort


```haxe
function sort():Void
```


Sort is a convenience method: x.Sort\(\) calls Sort\(x\). 


[\(view code\)](<./Sort.hx#L1664>)


### Float64Slice\_static\_extension function swap


```haxe
function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort.hx#L1669>)


## class IntSlice\_static\_extension


 


### IntSlice\_static\_extension function len


```haxe
function len():stdgo.GoInt
```


 


[\(view code\)](<./Sort.hx#L1597>)


### IntSlice\_static\_extension function less


```haxe
function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```


 


[\(view code\)](<./Sort.hx#L1592>)


### IntSlice\_static\_extension function search


```haxe
function search( _x:stdgo.GoInt):stdgo.GoInt
```


Search returns the result of applying SearchInts to the receiver and x. 


[\(view code\)](<./Sort.hx#L1605>)


### IntSlice\_static\_extension function sort


```haxe
function sort():Void
```


Sort is a convenience method: x.Sort\(\) calls Sort\(x\). 


[\(view code\)](<./Sort.hx#L1577>)


### IntSlice\_static\_extension function swap


```haxe
function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort.hx#L1582>)


## class StringSlice\_static\_extension


 


### StringSlice\_static\_extension function len


```haxe
function len():stdgo.GoInt
```


 


[\(view code\)](<./Sort.hx#L1771>)


### StringSlice\_static\_extension function less


```haxe
function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```


 


[\(view code\)](<./Sort.hx#L1766>)


### StringSlice\_static\_extension function search


```haxe
function search( _x:stdgo.GoString):stdgo.GoInt
```


Search returns the result of applying SearchStrings to the receiver and x. 


[\(view code\)](<./Sort.hx#L1779>)


### StringSlice\_static\_extension function sort


```haxe
function sort():Void
```


Sort is a convenience method: x.Sort\(\) calls Sort\(x\). 


[\(view code\)](<./Sort.hx#L1751>)


### StringSlice\_static\_extension function swap


```haxe
function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort.hx#L1756>)


## class T\_reverse\_static\_extension


 


### T\_reverse\_static\_extension function len


```haxe
function len(__self__:stdgo.sort._Sort.T_reverse):stdgo.GoInt
```


 


[\(view code\)](<./Sort.hx#L1497>)


### T\_reverse\_static\_extension function less


```haxe
function less(_r:stdgo.sort._Sort.T_reverse, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```


Less returns the opposite of the embedded implementation's Less method. 


[\(view code\)](<./Sort.hx#L1487>)


### T\_reverse\_static\_extension function swap


```haxe
function swap(__self__:stdgo.sort._Sort.T_reverse, _i_:stdgo.GoInt, _j_:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort.hx#L1493>)


## class T\_xorshift\_static\_extension


 


### T\_xorshift\_static\_extension function next


```haxe
function next(____:stdgo.sort._Sort.T_xorshift, _r:stdgo.Pointer<stdgo.sort._Sort.T_xorshift>):stdgo.GoUInt64
```


 


[\(view code\)](<./Sort.hx#L1523>)


# Typedefs


```haxe
import stdgo.sort.*
```


## typedef Float64Slice


```haxe
typedef Float64Slice = var x:stdgo.GoFloat64
```


Float64Slice implements Interface for a \[\]float64, sorting in increasing order, with not\-a\-number \(NaN\) values ordered before other values. 


### Float64Slice function len


```haxe
function len():stdgo.GoInt
```


 


[\(view code\)](<./Sort.hx#L1692>)


### Float64Slice function less


```haxe
function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```


Less reports whether x\[i\] should be ordered before x\[j\], as required by the sort Interface. Note that floating\-point comparison by itself is not a transitive relation: it does not report a consistent ordering for not\-a\-number \(NaN\) values. This implementation of Less places NaN values before any others, by using:  x\[i\] \< x\[j\] || \(math.IsNaN\(x\[i\]\) && \!math.IsNaN\(x\[j\]\)\) 


[\(view code\)](<./Sort.hx#L1687>)


### Float64Slice function search


```haxe
function search( _x:stdgo.GoFloat64):stdgo.GoInt
```


Search returns the result of applying SearchFloat64s to the receiver and x. 


[\(view code\)](<./Sort.hx#L1700>)


### Float64Slice function sort


```haxe
function sort():Void
```


Sort is a convenience method: x.Sort\(\) calls Sort\(x\). 


[\(view code\)](<./Sort.hx#L1664>)


### Float64Slice function swap


```haxe
function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort.hx#L1669>)


## typedef IntSlice


```haxe
typedef IntSlice = var x:stdgo.GoInt
```


IntSlice attaches the methods of Interface to \[\]int, sorting in increasing order. 


### IntSlice function len


```haxe
function len():stdgo.GoInt
```


 


[\(view code\)](<./Sort.hx#L1597>)


### IntSlice function less


```haxe
function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```


 


[\(view code\)](<./Sort.hx#L1592>)


### IntSlice function search


```haxe
function search( _x:stdgo.GoInt):stdgo.GoInt
```


Search returns the result of applying SearchInts to the receiver and x. 


[\(view code\)](<./Sort.hx#L1605>)


### IntSlice function sort


```haxe
function sort():Void
```


Sort is a convenience method: x.Sort\(\) calls Sort\(x\). 


[\(view code\)](<./Sort.hx#L1577>)


### IntSlice function swap


```haxe
function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort.hx#L1582>)


## typedef Interface


```haxe
typedef Interface = var a:{<__underlying__> | (_i:stdgo.GoInt, _j:stdgo.GoInt):Void | {<haxe_doc>} | (_i:stdgo.GoInt, _j:stdgo.GoInt):Bool | {<haxe_doc>} | ():stdgo.GoInt | {<haxe_doc>} | ():stdgo.AnyInterface}
```


An implementation of Interface can be sorted by the routines in this package. The methods refer to elements of the underlying collection by integer index. 


## typedef StringSlice


```haxe
typedef StringSlice = var x:stdgo.GoString
```


StringSlice attaches the methods of Interface to \[\]string, sorting in increasing order. 


### StringSlice function len


```haxe
function len():stdgo.GoInt
```


 


[\(view code\)](<./Sort.hx#L1771>)


### StringSlice function less


```haxe
function less( _i:stdgo.GoInt, _j:stdgo.GoInt):Bool
```


 


[\(view code\)](<./Sort.hx#L1766>)


### StringSlice function search


```haxe
function search( _x:stdgo.GoString):stdgo.GoInt
```


Search returns the result of applying SearchStrings to the receiver and x. 


[\(view code\)](<./Sort.hx#L1779>)


### StringSlice function sort


```haxe
function sort():Void
```


Sort is a convenience method: x.Sort\(\) calls Sort\(x\). 


[\(view code\)](<./Sort.hx#L1751>)


### StringSlice function swap


```haxe
function swap( _i:stdgo.GoInt, _j:stdgo.GoInt):Void
```


 


[\(view code\)](<./Sort.hx#L1756>)



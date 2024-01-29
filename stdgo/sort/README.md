# Module: `stdgo.sort`

[(view library index)](../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [`function _breakPatterns(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-_breakpatterns>)

- [`function _breakPatterns_func(_data:stdgo.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-_breakpatterns_func>)

- [`function _choosePivot(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-_choosepivot>)

- [`function _choosePivot_func(_data:stdgo.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-_choosepivot_func>)

- [`function _heapSort(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-_heapsort>)

- [`function _heapSort_func(_data:stdgo.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-_heapsort_func>)

- [`function _insertionSort(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-_insertionsort>)

- [`function _insertionSort_func(_data:stdgo.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-_insertionsort_func>)

- [`function _isNaN(_f:stdgo.GoFloat64):Void`](<#function-_isnan>)

- [`function _median(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):Void`](<#function-_median>)

- [`function _medianAdjacent(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):Void`](<#function-_medianadjacent>)

- [`function _medianAdjacent_func(_data:stdgo.sort.T_lessSwap, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):Void`](<#function-_medianadjacent_func>)

- [`function _median_func(_data:stdgo.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):Void`](<#function-_median_func>)

- [`function _nextPowerOfTwo(_length:stdgo.GoInt):Void`](<#function-_nextpoweroftwo>)

- [`function _order2(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):Void`](<#function-_order2>)

- [`function _order2_func(_data:stdgo.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):Void`](<#function-_order2_func>)

- [`function _partialInsertionSort(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-_partialinsertionsort>)

- [`function _partialInsertionSort_func(_data:stdgo.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-_partialinsertionsort_func>)

- [`function _partition(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):Void`](<#function-_partition>)

- [`function _partitionEqual(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):Void`](<#function-_partitionequal>)

- [`function _partitionEqual_func(_data:stdgo.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):Void`](<#function-_partitionequal_func>)

- [`function _partition_func(_data:stdgo.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):Void`](<#function-_partition_func>)

- [`function _pdqsort(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt):Void`](<#function-_pdqsort>)

- [`function _pdqsort_func(_data:stdgo.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt):Void`](<#function-_pdqsort_func>)

- [`function _reverseRange(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-_reverserange>)

- [`function _reverseRange_func(_data:stdgo.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-_reverserange_func>)

- [`function _rotate(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-_rotate>)

- [`function _rotate_func(_data:stdgo.sort.T_lessSwap, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-_rotate_func>)

- [`function _siftDown(_data:stdgo.sort.Interface, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt):Void`](<#function-_siftdown>)

- [`function _siftDown_func(_data:stdgo.sort.T_lessSwap, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt):Void`](<#function-_siftdown_func>)

- [`function _stable(_data:stdgo.sort.Interface, _n:stdgo.GoInt):Void`](<#function-_stable>)

- [`function _stable_func(_data:stdgo.sort.T_lessSwap, _n:stdgo.GoInt):Void`](<#function-_stable_func>)

- [`function _swapRange(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt):Void`](<#function-_swaprange>)

- [`function _swapRange_func(_data:stdgo.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt):Void`](<#function-_swaprange_func>)

- [`function _symMerge(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-_symmerge>)

- [`function _symMerge_func(_data:stdgo.sort.T_lessSwap, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-_symmerge_func>)

- [`function find(_n:stdgo.GoInt, _cmp:()):Void`](<#function-find>)

- [`function float64s(_x:stdgo.Slice<stdgo.GoFloat64>):Void`](<#function-float64s>)

- [`function float64sAreSorted(_x:stdgo.Slice<stdgo.GoFloat64>):Void`](<#function-float64saresorted>)

- [`function heapsort(_data:stdgo.sort.Interface):Void`](<#function-heapsort>)

- [`function ints(_x:stdgo.Slice<stdgo.GoInt>):Void`](<#function-ints>)

- [`function intsAreSorted(_x:stdgo.Slice<stdgo.GoInt>):Void`](<#function-intsaresorted>)

- [`function isSorted(_data:stdgo.sort.Interface):Void`](<#function-issorted>)

- [`function reverse(_data:stdgo.sort.Interface):Void`](<#function-reverse>)

- [`function reverseRange(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-reverserange>)

- [`function search(_n:stdgo.GoInt, _f:()):Void`](<#function-search>)

- [`function searchFloat64s(_a:stdgo.Slice<stdgo.GoFloat64>, _x:stdgo.GoFloat64):Void`](<#function-searchfloat64s>)

- [`function searchInts(_a:stdgo.Slice<stdgo.GoInt>, _x:stdgo.GoInt):Void`](<#function-searchints>)

- [`function searchStrings(_a:stdgo.Slice<stdgo.GoString>, _x:stdgo.GoString):Void`](<#function-searchstrings>)

- [`function slice(_x:stdgo.AnyInterface, _less:(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool):Void`](<#function-slice>)

- [`function sliceIsSorted(_x:stdgo.AnyInterface, _less:(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool):Void`](<#function-sliceissorted>)

- [`function sliceStable(_x:stdgo.AnyInterface, _less:(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool):Void`](<#function-slicestable>)

- [`function sort(_data:stdgo.sort.Interface):Void`](<#function-sort>)

- [`function stable(_data:stdgo.sort.Interface):Void`](<#function-stable>)

- [`function strings(_x:stdgo.Slice<stdgo.GoString>):Void`](<#function-strings>)

- [`function stringsAreSorted(_x:stdgo.Slice<stdgo.GoString>):Void`](<#function-stringsaresorted>)

- [typedef Float64Slice](<#typedef-float64slice>)

- [typedef Float64Slice\_asInterface](<#typedef-float64slice_asinterface>)

- [typedef Float64Slice\_static\_extension](<#typedef-float64slice_static_extension>)

- [typedef IntSlice](<#typedef-intslice>)

- [typedef IntSlice\_asInterface](<#typedef-intslice_asinterface>)

- [typedef IntSlice\_static\_extension](<#typedef-intslice_static_extension>)

- [typedef Interface](<#typedef-interface>)

- [typedef StringSlice](<#typedef-stringslice>)

- [typedef StringSlice\_asInterface](<#typedef-stringslice_asinterface>)

- [typedef StringSlice\_static\_extension](<#typedef-stringslice_static_extension>)

- [typedef T\_lessSwap](<#typedef-t_lessswap>)

- [typedef T\_reverse](<#typedef-t_reverse>)

- [typedef T\_reverse\_asInterface](<#typedef-t_reverse_asinterface>)

- [typedef T\_reverse\_static\_extension](<#typedef-t_reverse_static_extension>)

- [typedef T\_sortedHint](<#typedef-t_sortedhint>)

- [typedef T\_xorshift](<#typedef-t_xorshift>)

- [typedef T\_xorshift\_asInterface](<#typedef-t_xorshift_asinterface>)

- [typedef T\_xorshift\_static\_extension](<#typedef-t_xorshift_static_extension>)

# Variables


```haxe
import stdgo.sort.Sort
```


```haxe
var __go2hxdoc__package:Dynamic
```


```haxe
var _decreasingHint:Dynamic
```


```haxe
var _increasingHint:Dynamic
```


```haxe
var _unknownHint:Dynamic
```


# Functions


```haxe
import stdgo.sort.Sort
```


## function \_breakPatterns


```haxe
function _breakPatterns(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L60>)


## function \_breakPatterns\_func


```haxe
function _breakPatterns_func(_data:stdgo.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L43>)


## function \_choosePivot


```haxe
function _choosePivot(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L61>)


## function \_choosePivot\_func


```haxe
function _choosePivot_func(_data:stdgo.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L44>)


## function \_heapSort


```haxe
function _heapSort(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L55>)


## function \_heapSort\_func


```haxe
function _heapSort_func(_data:stdgo.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L38>)


## function \_insertionSort


```haxe
function _insertionSort(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L53>)


## function \_insertionSort\_func


```haxe
function _insertionSort_func(_data:stdgo.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L36>)


## function \_isNaN


```haxe
function _isNaN(_f:stdgo.GoFloat64):Void
```


[\(view code\)](<./Sort.hx#L28>)


## function \_median


```haxe
function _median(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):Void
```


[\(view code\)](<./Sort.hx#L63>)


## function \_medianAdjacent


```haxe
function _medianAdjacent(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):Void
```


[\(view code\)](<./Sort.hx#L64>)


## function \_medianAdjacent\_func


```haxe
function _medianAdjacent_func(_data:stdgo.sort.T_lessSwap, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):Void
```


[\(view code\)](<./Sort.hx#L47>)


## function \_median\_func


```haxe
function _median_func(_data:stdgo.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):Void
```


[\(view code\)](<./Sort.hx#L46>)


## function \_nextPowerOfTwo


```haxe
function _nextPowerOfTwo(_length:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L25>)


## function \_order2


```haxe
function _order2(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):Void
```


[\(view code\)](<./Sort.hx#L62>)


## function \_order2\_func


```haxe
function _order2_func(_data:stdgo.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):Void
```


[\(view code\)](<./Sort.hx#L45>)


## function \_partialInsertionSort


```haxe
function _partialInsertionSort(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L59>)


## function \_partialInsertionSort\_func


```haxe
function _partialInsertionSort_func(_data:stdgo.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L42>)


## function \_partition


```haxe
function _partition(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L57>)


## function \_partitionEqual


```haxe
function _partitionEqual(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L58>)


## function \_partitionEqual\_func


```haxe
function _partitionEqual_func(_data:stdgo.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L41>)


## function \_partition\_func


```haxe
function _partition_func(_data:stdgo.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L40>)


## function \_pdqsort


```haxe
function _pdqsort(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L56>)


## function \_pdqsort\_func


```haxe
function _pdqsort_func(_data:stdgo.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L39>)


## function \_reverseRange


```haxe
function _reverseRange(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L65>)


## function \_reverseRange\_func


```haxe
function _reverseRange_func(_data:stdgo.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L48>)


## function \_rotate


```haxe
function _rotate(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L69>)


## function \_rotate\_func


```haxe
function _rotate_func(_data:stdgo.sort.T_lessSwap, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L52>)


## function \_siftDown


```haxe
function _siftDown(_data:stdgo.sort.Interface, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L54>)


## function \_siftDown\_func


```haxe
function _siftDown_func(_data:stdgo.sort.T_lessSwap, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L37>)


## function \_stable


```haxe
function _stable(_data:stdgo.sort.Interface, _n:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L67>)


## function \_stable\_func


```haxe
function _stable_func(_data:stdgo.sort.T_lessSwap, _n:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L50>)


## function \_swapRange


```haxe
function _swapRange(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L66>)


## function \_swapRange\_func


```haxe
function _swapRange_func(_data:stdgo.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L49>)


## function \_symMerge


```haxe
function _symMerge(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L68>)


## function \_symMerge\_func


```haxe
function _symMerge_func(_data:stdgo.sort.T_lessSwap, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L51>)


## function find


```haxe
function find(_n:stdgo.GoInt, _cmp:()):Void
```


[\(view code\)](<./Sort.hx#L17>)


## function float64s


```haxe
function float64s(_x:stdgo.Slice<stdgo.GoFloat64>):Void
```


[\(view code\)](<./Sort.hx#L30>)


## function float64sAreSorted


```haxe
function float64sAreSorted(_x:stdgo.Slice<stdgo.GoFloat64>):Void
```


[\(view code\)](<./Sort.hx#L33>)


## function heapsort


```haxe
function heapsort(_data:stdgo.sort.Interface):Void
```


[\(view code\)](<./Sort.hx#L14>)


## function ints


```haxe
function ints(_x:stdgo.Slice<stdgo.GoInt>):Void
```


[\(view code\)](<./Sort.hx#L29>)


## function intsAreSorted


```haxe
function intsAreSorted(_x:stdgo.Slice<stdgo.GoInt>):Void
```


[\(view code\)](<./Sort.hx#L32>)


## function isSorted


```haxe
function isSorted(_data:stdgo.sort.Interface):Void
```


[\(view code\)](<./Sort.hx#L27>)


## function reverse


```haxe
function reverse(_data:stdgo.sort.Interface):Void
```


[\(view code\)](<./Sort.hx#L26>)


## function reverseRange


```haxe
function reverseRange(_data:stdgo.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L15>)


## function search


```haxe
function search(_n:stdgo.GoInt, _f:()):Void
```


[\(view code\)](<./Sort.hx#L16>)


## function searchFloat64s


```haxe
function searchFloat64s(_a:stdgo.Slice<stdgo.GoFloat64>, _x:stdgo.GoFloat64):Void
```


[\(view code\)](<./Sort.hx#L19>)


## function searchInts


```haxe
function searchInts(_a:stdgo.Slice<stdgo.GoInt>, _x:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L18>)


## function searchStrings


```haxe
function searchStrings(_a:stdgo.Slice<stdgo.GoString>, _x:stdgo.GoString):Void
```


[\(view code\)](<./Sort.hx#L20>)


## function slice


```haxe
function slice(_x:stdgo.AnyInterface, _less:(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool):Void
```


[\(view code\)](<./Sort.hx#L21>)


## function sliceIsSorted


```haxe
function sliceIsSorted(_x:stdgo.AnyInterface, _less:(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool):Void
```


[\(view code\)](<./Sort.hx#L23>)


## function sliceStable


```haxe
function sliceStable(_x:stdgo.AnyInterface, _less:(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool):Void
```


[\(view code\)](<./Sort.hx#L22>)


## function sort


```haxe
function sort(_data:stdgo.sort.Interface):Void
```


[\(view code\)](<./Sort.hx#L24>)


## function stable


```haxe
function stable(_data:stdgo.sort.Interface):Void
```


[\(view code\)](<./Sort.hx#L35>)


## function strings


```haxe
function strings(_x:stdgo.Slice<stdgo.GoString>):Void
```


[\(view code\)](<./Sort.hx#L31>)


## function stringsAreSorted


```haxe
function stringsAreSorted(_x:stdgo.Slice<stdgo.GoString>):Void
```


[\(view code\)](<./Sort.hx#L34>)


# Typedefs


```haxe
import stdgo.sort.*
```


## typedef Float64Slice


```haxe
typedef Float64Slice = stdgo._internal.sort.Float64Slice;
```


## typedef Float64Slice\_asInterface


```haxe
typedef Float64Slice_asInterface = Dynamic;
```


## typedef Float64Slice\_static\_extension


```haxe
typedef Float64Slice_static_extension = Dynamic;
```


## typedef IntSlice


```haxe
typedef IntSlice = stdgo._internal.sort.IntSlice;
```


## typedef IntSlice\_asInterface


```haxe
typedef IntSlice_asInterface = Dynamic;
```


## typedef IntSlice\_static\_extension


```haxe
typedef IntSlice_static_extension = Dynamic;
```


## typedef Interface


```haxe
typedef Interface = stdgo._internal.sort.Interface;
```


## typedef StringSlice


```haxe
typedef StringSlice = stdgo._internal.sort.StringSlice;
```


## typedef StringSlice\_asInterface


```haxe
typedef StringSlice_asInterface = Dynamic;
```


## typedef StringSlice\_static\_extension


```haxe
typedef StringSlice_static_extension = Dynamic;
```


## typedef T\_lessSwap


```haxe
typedef T_lessSwap = Dynamic;
```


## typedef T\_reverse


```haxe
typedef T_reverse = Dynamic;
```


## typedef T\_reverse\_asInterface


```haxe
typedef T_reverse_asInterface = Dynamic;
```


## typedef T\_reverse\_static\_extension


```haxe
typedef T_reverse_static_extension = Dynamic;
```


## typedef T\_sortedHint


```haxe
typedef T_sortedHint = stdgo._internal.sort.T_sortedHint;
```


## typedef T\_xorshift


```haxe
typedef T_xorshift = stdgo._internal.sort.T_xorshift;
```


## typedef T\_xorshift\_asInterface


```haxe
typedef T_xorshift_asInterface = Dynamic;
```


## typedef T\_xorshift\_static\_extension


```haxe
typedef T_xorshift_static_extension = Dynamic;
```



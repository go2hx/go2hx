# Module: `stdgo._internal.sort`

[(view library index)](../../stdgo.md)


# Overview


stdgo/_internal/internal/Macro.macro.hx:54: non hxb types:,388

# Index


- [Constants](<#constants>)

- [`function _breakPatterns(_data:stdgo._internal.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-_breakpatterns>)

- [`function _breakPatterns_func(_data:stdgo._internal.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-_breakpatterns_func>)

- [`function _choosePivot(_data:stdgo._internal.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):{
	_1:stdgo._internal.sort.T_sortedHint;
	_0:stdgo.GoInt;
}`](<#function-_choosepivot>)

- [`function _choosePivot_func(_data:stdgo._internal.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):{
	_1:stdgo._internal.sort.T_sortedHint;
	_0:stdgo.GoInt;
}`](<#function-_choosepivot_func>)

- [`function _heapSort(_data:stdgo._internal.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-_heapsort>)

- [`function _heapSort_func(_data:stdgo._internal.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-_heapsort_func>)

- [`function _insertionSort(_data:stdgo._internal.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-_insertionsort>)

- [`function _insertionSort_func(_data:stdgo._internal.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-_insertionsort_func>)

- [`function _isNaN(_f:stdgo.GoFloat64):Bool`](<#function-_isnan>)

- [`function _median(_data:stdgo._internal.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt`](<#function-_median>)

- [`function _medianAdjacent(_data:stdgo._internal.sort.Interface, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt`](<#function-_medianadjacent>)

- [`function _medianAdjacent_func(_data:stdgo._internal.sort.T_lessSwap, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt`](<#function-_medianadjacent_func>)

- [`function _median_func(_data:stdgo._internal.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt`](<#function-_median_func>)

- [`function _nextPowerOfTwo(_length:stdgo.GoInt):stdgo.GoUInt`](<#function-_nextpoweroftwo>)

- [`function _order2(_data:stdgo._internal.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):{
	_1:stdgo.GoInt;
	_0:stdgo.GoInt;
}`](<#function-_order2>)

- [`function _order2_func(_data:stdgo._internal.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):{
	_1:stdgo.GoInt;
	_0:stdgo.GoInt;
}`](<#function-_order2_func>)

- [`function _partialInsertionSort(_data:stdgo._internal.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Bool`](<#function-_partialinsertionsort>)

- [`function _partialInsertionSort_func(_data:stdgo._internal.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Bool`](<#function-_partialinsertionsort_func>)

- [`function _partition(_data:stdgo._internal.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):{
	_1:Bool;
	_0:stdgo.GoInt;
}`](<#function-_partition>)

- [`function _partitionEqual(_data:stdgo._internal.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):stdgo.GoInt`](<#function-_partitionequal>)

- [`function _partitionEqual_func(_data:stdgo._internal.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):stdgo.GoInt`](<#function-_partitionequal_func>)

- [`function _partition_func(_data:stdgo._internal.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):{
	_1:Bool;
	_0:stdgo.GoInt;
}`](<#function-_partition_func>)

- [`function _pdqsort(_data:stdgo._internal.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt):Void`](<#function-_pdqsort>)

- [`function _pdqsort_func(_data:stdgo._internal.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt):Void`](<#function-_pdqsort_func>)

- [`function _reverseRange(_data:stdgo._internal.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-_reverserange>)

- [`function _reverseRange_func(_data:stdgo._internal.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-_reverserange_func>)

- [`function _rotate(_data:stdgo._internal.sort.Interface, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-_rotate>)

- [`function _rotate_func(_data:stdgo._internal.sort.T_lessSwap, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-_rotate_func>)

- [`function _siftDown(_data:stdgo._internal.sort.Interface, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt):Void`](<#function-_siftdown>)

- [`function _siftDown_func(_data:stdgo._internal.sort.T_lessSwap, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt):Void`](<#function-_siftdown_func>)

- [`function _stable(_data:stdgo._internal.sort.Interface, _n:stdgo.GoInt):Void`](<#function-_stable>)

- [`function _stable_func(_data:stdgo._internal.sort.T_lessSwap, _n:stdgo.GoInt):Void`](<#function-_stable_func>)

- [`function _swapRange(_data:stdgo._internal.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt):Void`](<#function-_swaprange>)

- [`function _swapRange_func(_data:stdgo._internal.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt):Void`](<#function-_swaprange_func>)

- [`function _symMerge(_data:stdgo._internal.sort.Interface, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-_symmerge>)

- [`function _symMerge_func(_data:stdgo._internal.sort.T_lessSwap, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-_symmerge_func>)

- [`function find(_n:stdgo.GoInt, _cmp:()):{
	_1:Bool;
	_0:stdgo.GoInt;
}`](<#function-find>)

- [`function float64s(_x:stdgo.Slice<stdgo.GoFloat64>):Void`](<#function-float64s>)

- [`function float64sAreSorted(_x:stdgo.Slice<stdgo.GoFloat64>):Bool`](<#function-float64saresorted>)

- [`function heapsort(_data:stdgo._internal.sort.Interface):Void`](<#function-heapsort>)

- [`function ints(_x:stdgo.Slice<stdgo.GoInt>):Void`](<#function-ints>)

- [`function intsAreSorted(_x:stdgo.Slice<stdgo.GoInt>):Bool`](<#function-intsaresorted>)

- [`function isSorted(_data:stdgo._internal.sort.Interface):Bool`](<#function-issorted>)

- [`function reverse(_data:stdgo._internal.sort.Interface):stdgo._internal.sort.Interface`](<#function-reverse>)

- [`function reverseRange(_data:stdgo._internal.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void`](<#function-reverserange>)

- [`function search(_n:stdgo.GoInt, _f:()):stdgo.GoInt`](<#function-search>)

- [`function searchFloat64s(_a:stdgo.Slice<stdgo.GoFloat64>, _x:stdgo.GoFloat64):stdgo.GoInt`](<#function-searchfloat64s>)

- [`function searchInts(_a:stdgo.Slice<stdgo.GoInt>, _x:stdgo.GoInt):stdgo.GoInt`](<#function-searchints>)

- [`function searchStrings(_a:stdgo.Slice<stdgo.GoString>, _x:stdgo.GoString):stdgo.GoInt`](<#function-searchstrings>)

- [`function slice(_x:stdgo.AnyInterface, _less:(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool):Void`](<#function-slice>)

- [`function sliceIsSorted(_x:stdgo.AnyInterface, _less:(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool):Bool`](<#function-sliceissorted>)

- [`function sliceStable(_x:stdgo.AnyInterface, _less:(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool):Void`](<#function-slicestable>)

- [`function sort(_data:stdgo._internal.sort.Interface):Void`](<#function-sort>)

- [`function stable(_data:stdgo._internal.sort.Interface):Void`](<#function-stable>)

- [`function strings(_x:stdgo.Slice<stdgo.GoString>):Void`](<#function-strings>)

- [`function stringsAreSorted(_x:stdgo.Slice<stdgo.GoString>):Bool`](<#function-stringsaresorted>)

- [typedef Float64Slice](<#typedef-float64slice>)

- [typedef IntSlice](<#typedef-intslice>)

- [typedef Interface](<#typedef-interface>)

- [typedef StringSlice](<#typedef-stringslice>)

- [typedef T\_sortedHint](<#typedef-t_sortedhint>)

- [typedef T\_xorshift](<#typedef-t_xorshift>)

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

# Constants


```haxe
import stdgo._internal.sort.Sort
```


```haxe
final _decreasingHint:stdgo._internal.sort.T_sortedHint = ((2 : stdgo._internal.sort.Sort.T_sortedHint))
```


```haxe
final _increasingHint:stdgo._internal.sort.T_sortedHint = ((2 : stdgo._internal.sort.Sort.T_sortedHint))
```


```haxe
final _unknownHint:stdgo._internal.sort.T_sortedHint = ((2 : stdgo._internal.sort.Sort.T_sortedHint))
```


# Functions


```haxe
import stdgo._internal.sort.Sort
```


## function \_breakPatterns


```haxe
function _breakPatterns(_data:stdgo._internal.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L782>)


## function \_breakPatterns\_func


```haxe
function _breakPatterns_func(_data:stdgo._internal.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L391>)


## function \_choosePivot


```haxe
function _choosePivot(_data:stdgo._internal.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):{
	_1:stdgo._internal.sort.T_sortedHint;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Sort.hx#L799>)


## function \_choosePivot\_func


```haxe
function _choosePivot_func(_data:stdgo._internal.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):{
	_1:stdgo._internal.sort.T_sortedHint;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Sort.hx#L408>)


## function \_heapSort


```haxe
function _heapSort(_data:stdgo._internal.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L620>)


## function \_heapSort\_func


```haxe
function _heapSort_func(_data:stdgo._internal.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L229>)


## function \_insertionSort


```haxe
function _insertionSort(_data:stdgo._internal.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L590>)


## function \_insertionSort\_func


```haxe
function _insertionSort_func(_data:stdgo._internal.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L199>)


## function \_isNaN


```haxe
function _isNaN(_f:stdgo.GoFloat64):Bool
```


[\(view code\)](<./Sort.hx#L175>)


## function \_median


```haxe
function _median(_data:stdgo._internal.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt
```


[\(view code\)](<./Sort.hx#L830>)


## function \_medianAdjacent


```haxe
function _medianAdjacent(_data:stdgo._internal.sort.Interface, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt
```


[\(view code\)](<./Sort.hx#L848>)


## function \_medianAdjacent\_func


```haxe
function _medianAdjacent_func(_data:stdgo._internal.sort.T_lessSwap, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt
```


[\(view code\)](<./Sort.hx#L457>)


## function \_median\_func


```haxe
function _median_func(_data:stdgo._internal.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt
```


[\(view code\)](<./Sort.hx#L439>)


## function \_nextPowerOfTwo


```haxe
function _nextPowerOfTwo(_length:stdgo.GoInt):stdgo.GoUInt
```


[\(view code\)](<./Sort.hx#L156>)


## function \_order2


```haxe
function _order2(_data:stdgo._internal.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):{
	_1:stdgo.GoInt;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Sort.hx#L823>)


## function \_order2\_func


```haxe
function _order2_func(_data:stdgo._internal.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):{
	_1:stdgo.GoInt;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Sort.hx#L432>)


## function \_partialInsertionSort


```haxe
function _partialInsertionSort(_data:stdgo._internal.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Bool
```


[\(view code\)](<./Sort.hx#L740>)


## function \_partialInsertionSort\_func


```haxe
function _partialInsertionSort_func(_data:stdgo._internal.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Bool
```


[\(view code\)](<./Sort.hx#L349>)


## function \_partition


```haxe
function _partition(_data:stdgo._internal.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):{
	_1:Bool;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Sort.hx#L686>)


## function \_partitionEqual


```haxe
function _partitionEqual(_data:stdgo._internal.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Sort.hx#L720>)


## function \_partitionEqual\_func


```haxe
function _partitionEqual_func(_data:stdgo._internal.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):stdgo.GoInt
```


[\(view code\)](<./Sort.hx#L329>)


## function \_partition\_func


```haxe
function _partition_func(_data:stdgo._internal.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):{
	_1:Bool;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Sort.hx#L295>)


## function \_pdqsort


```haxe
function _pdqsort(_data:stdgo._internal.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L638>)


## function \_pdqsort\_func


```haxe
function _pdqsort_func(_data:stdgo._internal.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L247>)


## function \_reverseRange


```haxe
function _reverseRange(_data:stdgo._internal.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L851>)


## function \_reverseRange\_func


```haxe
function _reverseRange_func(_data:stdgo._internal.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L460>)


## function \_rotate


```haxe
function _rotate(_data:stdgo._internal.sort.Interface, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L967>)


## function \_rotate\_func


```haxe
function _rotate_func(_data:stdgo._internal.sort.T_lessSwap, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L576>)


## function \_siftDown


```haxe
function _siftDown(_data:stdgo._internal.sort.Interface, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L603>)


## function \_siftDown\_func


```haxe
function _siftDown_func(_data:stdgo._internal.sort.T_lessSwap, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L212>)


## function \_stable


```haxe
function _stable(_data:stdgo._internal.sort.Interface, _n:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L868>)


## function \_stable\_func


```haxe
function _stable_func(_data:stdgo._internal.sort.T_lessSwap, _n:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L477>)


## function \_swapRange


```haxe
function _swapRange(_data:stdgo._internal.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L860>)


## function \_swapRange\_func


```haxe
function _swapRange_func(_data:stdgo._internal.sort.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L469>)


## function \_symMerge


```haxe
function _symMerge(_data:stdgo._internal.sort.Interface, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L898>)


## function \_symMerge\_func


```haxe
function _symMerge_func(_data:stdgo._internal.sort.T_lessSwap, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L507>)


## function find


```haxe
function find(_n:stdgo.GoInt, _cmp:()):{
	_1:Bool;
	_0:stdgo.GoInt;
}
```


[\(view code\)](<./Sort.hx#L95>)


## function float64s


```haxe
function float64s(_x:stdgo.Slice<stdgo.GoFloat64>):Void
```


### exampleFloat64s


<details><summary></summary>
<p>


```haxe
function exampleFloat64s():Void {
        var _s = (new stdgo.Slice<stdgo.GoFloat64>(5, 5, ...[(5.2 : stdgo.GoFloat64), (-1.3 : stdgo.GoFloat64), (0.7 : stdgo.GoFloat64), (-3.8 : stdgo.GoFloat64), (2.6 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        stdgo._internal.sort.Sort.float64s(_s);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_s));
        _s = (new stdgo.Slice<stdgo.GoFloat64>(4, 4, ...[stdgo._internal.math.Math.inf((1 : stdgo.GoInt)), stdgo._internal.math.Math.naN(), stdgo._internal.math.Math.inf((-1 : stdgo.GoInt)), (0 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        stdgo._internal.sort.Sort.float64s(_s);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_s));
    }
```


</p>
</details>


[\(view code\)](<./Sort.hx#L181>)


## function float64sAreSorted


```haxe
function float64sAreSorted(_x:stdgo.Slice<stdgo.GoFloat64>):Bool
```


### exampleFloat64sAreSorted


<details><summary></summary>
<p>


```haxe
function exampleFloat64sAreSorted():Void {
        var _s = (new stdgo.Slice<stdgo.GoFloat64>(5, 5, ...[(0.7 : stdgo.GoFloat64), (1.3 : stdgo.GoFloat64), (2.6 : stdgo.GoFloat64), (3.8 : stdgo.GoFloat64), (5.2 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.sort.Sort.float64sAreSorted(_s)));
        _s = (new stdgo.Slice<stdgo.GoFloat64>(5, 5, ...[(5.2 : stdgo.GoFloat64), (3.8 : stdgo.GoFloat64), (2.6 : stdgo.GoFloat64), (1.3 : stdgo.GoFloat64), (0.7 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.sort.Sort.float64sAreSorted(_s)));
        _s = (new stdgo.Slice<stdgo.GoFloat64>(5, 5, ...[(5.2 : stdgo.GoFloat64), (1.3 : stdgo.GoFloat64), (0.7 : stdgo.GoFloat64), (3.8 : stdgo.GoFloat64), (2.6 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.sort.Sort.float64sAreSorted(_s)));
    }
```


</p>
</details>


[\(view code\)](<./Sort.hx#L190>)


## function heapsort


```haxe
function heapsort(_data:stdgo._internal.sort.Interface):Void
```


[\(view code\)](<./Sort.hx#L77>)


## function ints


```haxe
function ints(_x:stdgo.Slice<stdgo.GoInt>):Void
```


### exampleInts


<details><summary></summary>
<p>


```haxe
function exampleInts():Void {
        var _s = (new stdgo.Slice<stdgo.GoInt>(6, 6, ...[(5 : stdgo.GoInt), (2 : stdgo.GoInt), (6 : stdgo.GoInt), (3 : stdgo.GoInt), (1 : stdgo.GoInt), (4 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        stdgo._internal.sort.Sort.ints(_s);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_s));
    }
```


</p>
</details>


[\(view code\)](<./Sort.hx#L178>)


## function intsAreSorted


```haxe
function intsAreSorted(_x:stdgo.Slice<stdgo.GoInt>):Bool
```


### exampleIntsAreSorted


<details><summary></summary>
<p>


```haxe
function exampleIntsAreSorted():Void {
        var _s = (new stdgo.Slice<stdgo.GoInt>(6, 6, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.sort.Sort.intsAreSorted(_s)));
        _s = (new stdgo.Slice<stdgo.GoInt>(6, 6, ...[(6 : stdgo.GoInt), (5 : stdgo.GoInt), (4 : stdgo.GoInt), (3 : stdgo.GoInt), (2 : stdgo.GoInt), (1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.sort.Sort.intsAreSorted(_s)));
        _s = (new stdgo.Slice<stdgo.GoInt>(5, 5, ...[(3 : stdgo.GoInt), (2 : stdgo.GoInt), (4 : stdgo.GoInt), (1 : stdgo.GoInt), (5 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(stdgo._internal.sort.Sort.intsAreSorted(_s)));
    }
```


</p>
</details>


[\(view code\)](<./Sort.hx#L187>)


## function isSorted


```haxe
function isSorted(_data:stdgo._internal.sort.Interface):Bool
```


[\(view code\)](<./Sort.hx#L163>)


## function reverse


```haxe
function reverse(_data:stdgo._internal.sort.Interface):stdgo._internal.sort.Interface
```


### exampleReverse


<details><summary></summary>
<p>


```haxe
function exampleReverse():Void {
        var _s = (new stdgo.Slice<stdgo.GoInt>(6, 6, ...[(5 : stdgo.GoInt), (2 : stdgo.GoInt), (6 : stdgo.GoInt), (3 : stdgo.GoInt), (1 : stdgo.GoInt), (4 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        stdgo._internal.sort.Sort.sort(stdgo._internal.sort.Sort.reverse(stdgo.Go.asInterface((_s : stdgo._internal.sort.Sort.IntSlice))));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_s));
    }
```


</p>
</details>


[\(view code\)](<./Sort.hx#L160>)


## function reverseRange


```haxe
function reverseRange(_data:stdgo._internal.sort.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void
```


[\(view code\)](<./Sort.hx#L80>)


## function search


```haxe
function search(_n:stdgo.GoInt, _f:()):stdgo.GoInt
```


### exampleSearch


<details><summary></summary>
<p>


```haxe
function exampleSearch():Void {
        var _a = (new stdgo.Slice<stdgo.GoInt>(10, 10, ...[(1 : stdgo.GoInt), (3 : stdgo.GoInt), (6 : stdgo.GoInt), (10 : stdgo.GoInt), (15 : stdgo.GoInt), (21 : stdgo.GoInt), (28 : stdgo.GoInt), (36 : stdgo.GoInt), (45 : stdgo.GoInt), (55 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _x:stdgo.GoInt = (6 : stdgo.GoInt);
        var _i:stdgo.GoInt = stdgo._internal.sort.Sort.search((_a.length), function(_i:stdgo.GoInt):Bool {
            return (_a[(_i : stdgo.GoInt)] >= _x : Bool);
        });
        if (((_i < (_a.length) : Bool) && (_a[(_i : stdgo.GoInt)] == _x) : Bool)) {
            stdgo._internal.fmt.Fmt.printf(("found %d at index %d in %v\n" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_a));
        } else {
            stdgo._internal.fmt.Fmt.printf(("%d not found in %v\n" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_a));
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
        var _a = (new stdgo.Slice<stdgo.GoInt>(10, 10, ...[(55 : stdgo.GoInt), (45 : stdgo.GoInt), (36 : stdgo.GoInt), (28 : stdgo.GoInt), (21 : stdgo.GoInt), (15 : stdgo.GoInt), (10 : stdgo.GoInt), (6 : stdgo.GoInt), (3 : stdgo.GoInt), (1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _x:stdgo.GoInt = (6 : stdgo.GoInt);
        var _i:stdgo.GoInt = stdgo._internal.sort.Sort.search((_a.length), function(_i:stdgo.GoInt):Bool {
            return (_a[(_i : stdgo.GoInt)] <= _x : Bool);
        });
        if (((_i < (_a.length) : Bool) && (_a[(_i : stdgo.GoInt)] == _x) : Bool)) {
            stdgo._internal.fmt.Fmt.printf(("found %d at index %d in %v\n" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_a));
        } else {
            stdgo._internal.fmt.Fmt.printf(("%d not found in %v\n" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_a));
        };
    }
```


</p>
</details>


[\(view code\)](<./Sort.hx#L83>)


## function searchFloat64s


```haxe
function searchFloat64s(_a:stdgo.Slice<stdgo.GoFloat64>, _x:stdgo.GoFloat64):stdgo.GoInt
```


### exampleSearchFloat64s


<details><summary></summary>
<p>


```haxe
function exampleSearchFloat64s():Void {
        var _a = (new stdgo.Slice<stdgo.GoFloat64>(7, 7, ...[(1 : stdgo.GoFloat64), (2 : stdgo.GoFloat64), (3.3 : stdgo.GoFloat64), (4.6 : stdgo.GoFloat64), (6.1 : stdgo.GoFloat64), (7.2 : stdgo.GoFloat64), (8 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        var _x:stdgo.GoFloat64 = (2 : stdgo.GoFloat64);
        var _i:stdgo.GoInt = stdgo._internal.sort.Sort.searchFloat64s(_a, _x);
        stdgo._internal.fmt.Fmt.printf(("found %g at index %d in %v\n" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_a));
        _x = (0.5 : stdgo.GoFloat64);
        _i = stdgo._internal.sort.Sort.searchFloat64s(_a, _x);
        stdgo._internal.fmt.Fmt.printf(("%g not found, can be inserted at index %d in %v\n" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_a));
    }
```


</p>
</details>


[\(view code\)](<./Sort.hx#L113>)


## function searchInts


```haxe
function searchInts(_a:stdgo.Slice<stdgo.GoInt>, _x:stdgo.GoInt):stdgo.GoInt
```


### exampleSearchInts


<details><summary></summary>
<p>


```haxe
function exampleSearchInts():Void {
        var _a = (new stdgo.Slice<stdgo.GoInt>(7, 7, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (6 : stdgo.GoInt), (7 : stdgo.GoInt), (8 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _x:stdgo.GoInt = (2 : stdgo.GoInt);
        var _i:stdgo.GoInt = stdgo._internal.sort.Sort.searchInts(_a, _x);
        stdgo._internal.fmt.Fmt.printf(("found %d at index %d in %v\n" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_a));
        _x = (5 : stdgo.GoInt);
        _i = stdgo._internal.sort.Sort.searchInts(_a, _x);
        stdgo._internal.fmt.Fmt.printf(("%d not found, can be inserted at index %d in %v\n" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_a));
    }
```


</p>
</details>


[\(view code\)](<./Sort.hx#L108>)


## function searchStrings


```haxe
function searchStrings(_a:stdgo.Slice<stdgo.GoString>, _x:stdgo.GoString):stdgo.GoInt
```


[\(view code\)](<./Sort.hx#L118>)


## function slice


```haxe
function slice(_x:stdgo.AnyInterface, _less:(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool):Void
```


### exampleSlice


<details><summary></summary>
<p>


```haxe
function exampleSlice():Void {
        var _people = (new stdgo.Slice<Person>(4, 4, ...[(new Person(("Gopher" : stdgo.GoString), (7 : stdgo.GoInt)) : Person), (new Person(("Alice" : stdgo.GoString), (55 : stdgo.GoInt)) : Person), (new Person(("Vera" : stdgo.GoString), (24 : stdgo.GoInt)) : Person), (new Person(("Bob" : stdgo.GoString), (75 : stdgo.GoInt)) : Person)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : Person)])) : stdgo.Slice<Person>);
        stdgo._internal.sort.Sort.slice(stdgo.Go.toInterface(_people), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return (_people[(_i : stdgo.GoInt)].name < _people[(_j : stdgo.GoInt)].name : Bool);
        });
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("By name:" : stdgo.GoString)), stdgo.Go.toInterface(_people));
        stdgo._internal.sort.Sort.slice(stdgo.Go.toInterface(_people), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return (_people[(_i : stdgo.GoInt)].age < _people[(_j : stdgo.GoInt)].age : Bool);
        });
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("By age:" : stdgo.GoString)), stdgo.Go.toInterface(_people));
    }
```


</p>
</details>


[\(view code\)](<./Sort.hx#L123>)


## function sliceIsSorted


```haxe
function sliceIsSorted(_x:stdgo.AnyInterface, _less:(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool):Bool
```


[\(view code\)](<./Sort.hx#L135>)


## function sliceStable


```haxe
function sliceStable(_x:stdgo.AnyInterface, _less:(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool):Void
```


### exampleSliceStable


<details><summary></summary>
<p>


```haxe
function exampleSliceStable():Void {
        var _people = (new stdgo.Slice<Person>(8, 8, ...[(new Person(("Alice" : stdgo.GoString), (25 : stdgo.GoInt)) : Person), (new Person(("Elizabeth" : stdgo.GoString), (75 : stdgo.GoInt)) : Person), (new Person(("Alice" : stdgo.GoString), (75 : stdgo.GoInt)) : Person), (new Person(("Bob" : stdgo.GoString), (75 : stdgo.GoInt)) : Person), (new Person(("Alice" : stdgo.GoString), (75 : stdgo.GoInt)) : Person), (new Person(("Bob" : stdgo.GoString), (25 : stdgo.GoInt)) : Person), (new Person(("Colin" : stdgo.GoString), (25 : stdgo.GoInt)) : Person), (new Person(("Elizabeth" : stdgo.GoString), (25 : stdgo.GoInt)) : Person)].concat([for (i in 8 ... (8 > 8 ? 8 : 8 : stdgo.GoInt).toBasic()) ({} : Person)])) : stdgo.Slice<Person>);
        stdgo._internal.sort.Sort.sliceStable(stdgo.Go.toInterface(_people), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return (_people[(_i : stdgo.GoInt)].name < _people[(_j : stdgo.GoInt)].name : Bool);
        });
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("By name:" : stdgo.GoString)), stdgo.Go.toInterface(_people));
        stdgo._internal.sort.Sort.sliceStable(stdgo.Go.toInterface(_people), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return (_people[(_i : stdgo.GoInt)].age < _people[(_j : stdgo.GoInt)].age : Bool);
        });
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("By age,name:" : stdgo.GoString)), stdgo.Go.toInterface(_people));
    }
```


</p>
</details>


[\(view code\)](<./Sort.hx#L130>)


## function sort


```haxe
function sort(_data:stdgo._internal.sort.Interface):Void
```


[\(view code\)](<./Sort.hx#L148>)


## function stable


```haxe
function stable(_data:stdgo._internal.sort.Interface):Void
```


[\(view code\)](<./Sort.hx#L196>)


## function strings


```haxe
function strings(_x:stdgo.Slice<stdgo.GoString>):Void
```


### exampleStrings


<details><summary></summary>
<p>


```haxe
function exampleStrings():Void {
        var _s = (new stdgo.Slice<stdgo.GoString>(6, 6, ...[("Go" : stdgo.GoString), ("Bravo" : stdgo.GoString), ("Gopher" : stdgo.GoString), ("Alpha" : stdgo.GoString), ("Grin" : stdgo.GoString), ("Delta" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        stdgo._internal.sort.Sort.strings(_s);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_s));
    }
```


</p>
</details>


[\(view code\)](<./Sort.hx#L184>)


## function stringsAreSorted


```haxe
function stringsAreSorted(_x:stdgo.Slice<stdgo.GoString>):Bool
```


[\(view code\)](<./Sort.hx#L193>)


# Typedefs


```haxe
import stdgo._internal.sort.*
```


## typedef Float64Slice


```haxe
typedef Float64Slice = stdgo.Slice<stdgo.GoFloat64>;
```


## typedef IntSlice


```haxe
typedef IntSlice = stdgo.Slice<stdgo.GoInt>;
```


## typedef Interface


```haxe
typedef Interface = {
	public function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void;	// Swap swaps the elements with indexes i and j.
	public function less(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool;	// Less reports whether the element with index i must sort before the element with index j. If both Less(i, j) and Less(j, i) are false, then the elements at index i and j are considered equal. Sort may place equal elements in any order in the final result, while Stable preserves the original input order of equal elements. Less must describe a transitive ordering: - if both Less(i, j) and Less(j, k) are true, then Less(i, k) must be true as well. - if both Less(i, j) and Less(j, k) are false, then Less(i, k) must be false as well. Note that floating-point comparison (the < operator on float32 or float64 values) is not a transitive ordering when not-a-number (NaN) values are involved. See Float64Slice.Less for a correct implementation for floating-point values.
	public function len():stdgo.GoInt;	// Len is the number of elements in the collection.
};
```


## typedef StringSlice


```haxe
typedef StringSlice = stdgo.Slice<stdgo.GoString>;
```


## typedef T\_sortedHint


```haxe
typedef T_sortedHint = stdgo.GoInt;
```


## typedef T\_xorshift


```haxe
typedef T_xorshift = stdgo.GoUInt64;
```



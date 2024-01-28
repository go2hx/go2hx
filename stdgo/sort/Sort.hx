package stdgo.sort;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var _unknownHint : Dynamic;
@:invalid var _increasingHint : Dynamic;
@:invalid var _decreasingHint : Dynamic;
typedef Interface = stdgo._internal.sort.Sort.Interface;
@:invalid typedef T_lessSwap = Dynamic;
@:invalid typedef T_reverse = Dynamic;
typedef T_sortedHint = stdgo._internal.sort.Sort.T_sortedHint;
typedef T_xorshift = stdgo._internal.sort.Sort.T_xorshift;
typedef IntSlice = stdgo._internal.sort.Sort.IntSlice;
typedef Float64Slice = stdgo._internal.sort.Sort.Float64Slice;
typedef StringSlice = stdgo._internal.sort.Sort.StringSlice;
function heapsort(_data:Interface):Void {}
function reverseRange(_data:Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {}
function search(_n:stdgo.GoInt, _f:stdgo.GoInt -> Bool):Void {}
function find(_n:stdgo.GoInt, _cmp:stdgo.GoInt -> stdgo.GoInt):Void {}
function searchInts(_a:stdgo.Slice<stdgo.GoInt>, _x:stdgo.GoInt):Void {}
function searchFloat64s(_a:stdgo.Slice<stdgo.GoFloat64>, _x:stdgo.GoFloat64):Void {}
function searchStrings(_a:stdgo.Slice<stdgo.GoString>, _x:stdgo.GoString):Void {}
function slice(_x:stdgo.AnyInterface, _less:(_i:stdgo.GoInt, _j:stdgo.GoInt) -> Bool):Void {}
function sliceStable(_x:stdgo.AnyInterface, _less:(_i:stdgo.GoInt, _j:stdgo.GoInt) -> Bool):Void {}
function sliceIsSorted(_x:stdgo.AnyInterface, _less:(_i:stdgo.GoInt, _j:stdgo.GoInt) -> Bool):Void {}
function sort(_data:Interface):Void {}
function _nextPowerOfTwo(_length:stdgo.GoInt):Void {}
function reverse(_data:Interface):Void {}
function isSorted(_data:Interface):Void {}
function _isNaN(_f:stdgo.GoFloat64):Void {}
function ints(_x:stdgo.Slice<stdgo.GoInt>):Void {}
function float64s(_x:stdgo.Slice<stdgo.GoFloat64>):Void {}
function strings(_x:stdgo.Slice<stdgo.GoString>):Void {}
function intsAreSorted(_x:stdgo.Slice<stdgo.GoInt>):Void {}
function float64sAreSorted(_x:stdgo.Slice<stdgo.GoFloat64>):Void {}
function stringsAreSorted(_x:stdgo.Slice<stdgo.GoString>):Void {}
function stable(_data:Interface):Void {}
function _insertionSort_func(_data:T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {}
function _siftDown_func(_data:T_lessSwap, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt):Void {}
function _heapSort_func(_data:T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {}
function _pdqsort_func(_data:T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt):Void {}
function _partition_func(_data:T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):Void {}
function _partitionEqual_func(_data:T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):Void {}
function _partialInsertionSort_func(_data:T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {}
function _breakPatterns_func(_data:T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {}
function _choosePivot_func(_data:T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {}
function _order2_func(_data:T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):Void {}
function _median_func(_data:T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):Void {}
function _medianAdjacent_func(_data:T_lessSwap, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):Void {}
function _reverseRange_func(_data:T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {}
function _swapRange_func(_data:T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt):Void {}
function _stable_func(_data:T_lessSwap, _n:stdgo.GoInt):Void {}
function _symMerge_func(_data:T_lessSwap, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void {}
function _rotate_func(_data:T_lessSwap, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void {}
function _insertionSort(_data:Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {}
function _siftDown(_data:Interface, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt):Void {}
function _heapSort(_data:Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {}
function _pdqsort(_data:Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt):Void {}
function _partition(_data:Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):Void {}
function _partitionEqual(_data:Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):Void {}
function _partialInsertionSort(_data:Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {}
function _breakPatterns(_data:Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {}
function _choosePivot(_data:Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {}
function _order2(_data:Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):Void {}
function _median(_data:Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):Void {}
function _medianAdjacent(_data:Interface, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):Void {}
function _reverseRange(_data:Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {}
function _swapRange(_data:Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt):Void {}
function _stable(_data:Interface, _n:stdgo.GoInt):Void {}
function _symMerge(_data:Interface, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void {}
function _rotate(_data:Interface, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void {}
@:invalid typedef T_reverse_asInterface = Dynamic;
@:invalid typedef T_reverse_static_extension = Dynamic;
@:invalid typedef T_xorshift_asInterface = Dynamic;
@:invalid typedef T_xorshift_static_extension = Dynamic;
@:invalid typedef IntSlice_asInterface = Dynamic;
@:invalid typedef IntSlice_static_extension = Dynamic;
@:invalid typedef Float64Slice_asInterface = Dynamic;
@:invalid typedef Float64Slice_static_extension = Dynamic;
@:invalid typedef StringSlice_asInterface = Dynamic;
@:invalid typedef StringSlice_static_extension = Dynamic;

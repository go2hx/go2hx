package stdgo.slices;
@:invalid var __go2hxdoc__package : Dynamic;
@:invalid var _equalIntTests : Dynamic;
@:invalid var _equalFloatTests : Dynamic;
@:invalid var _compareIntTests : Dynamic;
@:invalid var _compareFloatTests : Dynamic;
@:invalid var _indexTests : Dynamic;
@:invalid var _insertTests : Dynamic;
@:invalid var _deleteTests : Dynamic;
@:invalid var _deleteFuncTests : Dynamic;
@:invalid var _compactTests : Dynamic;
@:invalid var _ints : Dynamic;
@:invalid var _float64s : Dynamic;
@:invalid var _float64sWithNaNs : Dynamic;
@:invalid var _strs : Dynamic;
@:invalid var _unknownHint : Dynamic;
@:invalid var _increasingHint : Dynamic;
@:invalid var _decreasingHint : Dynamic;
@:invalid var n : Dynamic;
@:invalid typedef T_myStruct = Dynamic;
@:invalid typedef T_intPair = Dynamic;
@:invalid typedef S = Dynamic;
@:invalid typedef T__struct_0_asInterface = Dynamic;
@:invalid typedef T__struct_0_static_extension = Dynamic;
typedef T__struct_0 = stdgo._internal.slices.Slices.T__struct_0;
@:invalid typedef T__struct_1_asInterface = Dynamic;
@:invalid typedef T__struct_1_static_extension = Dynamic;
typedef T__struct_1 = stdgo._internal.slices.Slices.T__struct_1;
@:invalid typedef T__struct_2_asInterface = Dynamic;
@:invalid typedef T__struct_2_static_extension = Dynamic;
typedef T__struct_2 = stdgo._internal.slices.Slices.T__struct_2;
@:invalid typedef T__struct_3_asInterface = Dynamic;
@:invalid typedef T__struct_3_static_extension = Dynamic;
typedef T__struct_3 = stdgo._internal.slices.Slices.T__struct_3;
@:invalid typedef T__struct_4_asInterface = Dynamic;
@:invalid typedef T__struct_4_static_extension = Dynamic;
typedef T__struct_4 = stdgo._internal.slices.Slices.T__struct_4;
@:invalid typedef T__struct_5_asInterface = Dynamic;
@:invalid typedef T__struct_5_static_extension = Dynamic;
typedef T__struct_5 = stdgo._internal.slices.Slices.T__struct_5;
@:invalid typedef T__struct_6_asInterface = Dynamic;
@:invalid typedef T__struct_6_static_extension = Dynamic;
typedef T__struct_6 = stdgo._internal.slices.Slices.T__struct_6;
@:invalid typedef T__struct_7_asInterface = Dynamic;
@:invalid typedef T__struct_7_static_extension = Dynamic;
typedef T__struct_7 = stdgo._internal.slices.Slices.T__struct_7;
@:invalid typedef T__struct_8_asInterface = Dynamic;
@:invalid typedef T__struct_8_static_extension = Dynamic;
typedef T__struct_8 = stdgo._internal.slices.Slices.T__struct_8;
@:invalid typedef T__struct_9_asInterface = Dynamic;
@:invalid typedef T__struct_9_static_extension = Dynamic;
typedef T__struct_9 = stdgo._internal.slices.Slices.T__struct_9;
@:invalid typedef T__struct_10_asInterface = Dynamic;
@:invalid typedef T__struct_10_static_extension = Dynamic;
typedef T__struct_10 = stdgo._internal.slices.Slices.T__struct_10;
@:invalid typedef T__struct_11_asInterface = Dynamic;
@:invalid typedef T__struct_11_static_extension = Dynamic;
typedef T__struct_11 = stdgo._internal.slices.Slices.T__struct_11;
@:invalid typedef T__struct_12_asInterface = Dynamic;
@:invalid typedef T__struct_12_static_extension = Dynamic;
typedef T__struct_12 = stdgo._internal.slices.Slices.T__struct_12;
@:invalid typedef T__struct_13_asInterface = Dynamic;
@:invalid typedef T__struct_13_static_extension = Dynamic;
typedef T__struct_13 = stdgo._internal.slices.Slices.T__struct_13;
@:invalid typedef T__struct_14_asInterface = Dynamic;
@:invalid typedef T__struct_14_static_extension = Dynamic;
typedef T__struct_14 = stdgo._internal.slices.Slices.T__struct_14;
@:invalid typedef T__struct_15_asInterface = Dynamic;
@:invalid typedef T__struct_15_static_extension = Dynamic;
typedef T__struct_15 = stdgo._internal.slices.Slices.T__struct_15;
@:invalid typedef T__struct_16_asInterface = Dynamic;
@:invalid typedef T__struct_16_static_extension = Dynamic;
typedef T__struct_16 = stdgo._internal.slices.Slices.T__struct_16;
typedef T_sortedHint = stdgo._internal.slices.Slices.T_sortedHint;
typedef T_xorshift = stdgo._internal.slices.Slices.T_xorshift;
typedef T_myStructs = stdgo._internal.slices.Slices.T_myStructs;
typedef T_intPairs = stdgo._internal.slices.Slices.T_intPairs;
macro function equal<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s1:haxe.macro.Expr.ExprOf<S>, _s2:haxe.macro.Expr.ExprOf<S>):Void {}
macro function equalFunc<S1, S2, E1, E2>(__generic__0:haxe.macro.Expr.ExprOf<S1>, __generic__1:haxe.macro.Expr.ExprOf<S2>, __generic__2:haxe.macro.Expr.ExprOf<E1>, __generic__3:haxe.macro.Expr.ExprOf<E2>, _s1:haxe.macro.Expr.ExprOf<S1>, _s2:haxe.macro.Expr.ExprOf<S2>, _eq:haxe.macro.Expr.ExprOf<($E1, $E2) -> Bool>):Void {}
macro function compare<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s1:haxe.macro.Expr.ExprOf<S>, _s2:haxe.macro.Expr.ExprOf<S>):Void {}
macro function compareFunc<S1, S2, E1, E2>(__generic__0:haxe.macro.Expr.ExprOf<S1>, __generic__1:haxe.macro.Expr.ExprOf<S2>, __generic__2:haxe.macro.Expr.ExprOf<E1>, __generic__3:haxe.macro.Expr.ExprOf<E2>, _s1:haxe.macro.Expr.ExprOf<S1>, _s2:haxe.macro.Expr.ExprOf<S2>, _cmp:haxe.macro.Expr.ExprOf<($E1, $E2) -> stdgo.GoInt>):Void {}
macro function index<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>, _v:haxe.macro.Expr.ExprOf<E>):Void {}
macro function indexFunc<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>, _f:haxe.macro.Expr.ExprOf<$E -> Bool>):Void {}
macro function contains<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>, _v:haxe.macro.Expr.ExprOf<E>):Void {}
macro function containsFunc<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>, _f:haxe.macro.Expr.ExprOf<$E -> Bool>):Void {}
macro function insert<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>, _i:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _v:haxe.macro.Expr.ExprOf<haxe.Rest<E>>):Void {}
macro function delete<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>, _i:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _j:haxe.macro.Expr.ExprOf<stdgo.GoInt>):Void {}
macro function deleteFunc<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>, _del:haxe.macro.Expr.ExprOf<$E -> Bool>):Void {}
macro function replace<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>, _i:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _j:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _v:haxe.macro.Expr.ExprOf<haxe.Rest<E>>):Void {}
macro function clone<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>):Void {}
macro function compact<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>):Void {}
macro function compactFunc<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>, _eq:haxe.macro.Expr.ExprOf<($E, $E) -> Bool>):Void {}
macro function grow<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>, _n:haxe.macro.Expr.ExprOf<stdgo.GoInt>):Void {}
macro function clip<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>):Void {}
macro function _rotateLeft<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _r:haxe.macro.Expr.ExprOf<stdgo.GoInt>):Void {}
macro function _rotateRight<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _r:haxe.macro.Expr.ExprOf<stdgo.GoInt>):Void {}
macro function _swap<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _x:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _y:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>):Void {}
macro function _overlaps<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _a:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _b:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>):Void {}
macro function _startIdx<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _haystack:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _needle:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>):Void {}
macro function reverse<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>):Void {}
function testEqual(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
macro function _equal<T_>(__generic__0:haxe.macro.Expr.ExprOf<T_>, _v1:haxe.macro.Expr.ExprOf<T_>, _v2:haxe.macro.Expr.ExprOf<T_>):Void {}
macro function _equalNaN<T_>(__generic__0:haxe.macro.Expr.ExprOf<T_>, _v1:haxe.macro.Expr.ExprOf<T_>, _v2:haxe.macro.Expr.ExprOf<T_>):Void {}
function _offByOne(_v1:stdgo.GoInt, _v2:stdgo.GoInt):Void {}
function testEqualFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
typedef T_benchmarkEqualFunc_Large_15___localname___Large = stdgo._internal.slices.Slices.T_benchmarkEqualFunc_Large_15___localname___Large;
function benchmarkEqualFunc_Large(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function testCompare(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
macro function _equalToCmp<T_>(__generic__0:haxe.macro.Expr.ExprOf<T_>, _eq:haxe.macro.Expr.ExprOf<($T_, $T_) -> Bool>):Void {}
function testCompareFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
macro function _equalToIndex<T_>(__generic__0:haxe.macro.Expr.ExprOf<T_>, _f:haxe.macro.Expr.ExprOf<($T_, $T_) -> Bool>, _v1:haxe.macro.Expr.ExprOf<T_>):Void {}
typedef T_benchmarkIndex_Large_16___localname___Large = stdgo._internal.slices.Slices.T_benchmarkIndex_Large_16___localname___Large;
function benchmarkIndex_Large(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function testIndexFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
typedef T_benchmarkIndexFunc_Large_17___localname___Large = stdgo._internal.slices.Slices.T_benchmarkIndexFunc_Large_17___localname___Large;
function benchmarkIndexFunc_Large(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function testContains(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testContainsFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testInsert(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testInsertOverlap(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testDelete(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testDeleteFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _panics(_f:() -> Void):Void {}
function testDeletePanics(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testClone(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testCompact(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function benchmarkCompact(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
typedef T_benchmarkCompact_Large_18___localname___Large = stdgo._internal.slices.Slices.T_benchmarkCompact_Large_18___localname___Large;
function benchmarkCompact_Large(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function testCompactFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
typedef T_benchmarkCompactFunc_Large_19___localname___Large = stdgo._internal.slices.Slices.T_benchmarkCompactFunc_Large_19___localname___Large;
function benchmarkCompactFunc_Large(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function testGrow(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testClip(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testReverse(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
macro function _naiveReplace<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _s:haxe.macro.Expr.ExprOf<S>, _i:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _j:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _v:haxe.macro.Expr.ExprOf<haxe.Rest<E>>):Void {}
function testReplace(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testReplacePanics(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testReplaceOverlap(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function benchmarkReplace(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function testRotate(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testInsertGrowthRate(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testReplaceGrowthRate(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
macro function _apply<T_>(__generic__0:haxe.macro.Expr.ExprOf<T_>, _v:haxe.macro.Expr.ExprOf<T_>, _f:haxe.macro.Expr.ExprOf<$T_ -> Void>):Void {}
typedef T_testInference_20___localname___S = stdgo._internal.slices.Slices.T_testInference_20___localname___S;
function testInference(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
macro function sort<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _x:haxe.macro.Expr.ExprOf<S>):Void {}
macro function sortFunc<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _x:haxe.macro.Expr.ExprOf<S>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):Void {}
macro function sortStableFunc<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _x:haxe.macro.Expr.ExprOf<S>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):Void {}
macro function isSorted<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _x:haxe.macro.Expr.ExprOf<S>):Void {}
macro function isSortedFunc<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _x:haxe.macro.Expr.ExprOf<S>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):Void {}
macro function min<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _x:haxe.macro.Expr.ExprOf<S>):Void {}
macro function minFunc<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _x:haxe.macro.Expr.ExprOf<S>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):Void {}
macro function max<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _x:haxe.macro.Expr.ExprOf<S>):Void {}
macro function maxFunc<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _x:haxe.macro.Expr.ExprOf<S>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):Void {}
macro function binarySearch<S, E>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, _x:haxe.macro.Expr.ExprOf<S>, _target:haxe.macro.Expr.ExprOf<E>):Void {}
macro function binarySearchFunc<S, E, T_>(__generic__0:haxe.macro.Expr.ExprOf<S>, __generic__1:haxe.macro.Expr.ExprOf<E>, __generic__2:haxe.macro.Expr.ExprOf<T_>, _x:haxe.macro.Expr.ExprOf<S>, _target:haxe.macro.Expr.ExprOf<T_>, _cmp:haxe.macro.Expr.ExprOf<($E, $T_) -> stdgo.GoInt>):Void {}
function _nextPowerOfTwo(_length:stdgo.GoInt):Void {}
macro function _isNaN<T_>(__generic__0:haxe.macro.Expr.ExprOf<T_>, _x:haxe.macro.Expr.ExprOf<T_>):Void {}
function _makeRandomInts(_n:stdgo.GoInt):Void {}
function _makeSortedInts(_n:stdgo.GoInt):Void {}
function _makeReversedInts(_n:stdgo.GoInt):Void {}
function benchmarkSortInts(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function _makeSortedStrings(_n:stdgo.GoInt):Void {}
function benchmarkSlicesSortInts(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkSlicesSortInts_Sorted(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkSlicesSortInts_Reversed(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkIntsAreSorted(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkIsSorted(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function testIntSorts(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _makeRandomStrings(_n:stdgo.GoInt):Void {}
function testStringSorts(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function benchmarkSortStrings(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkSortStrings_Sorted(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkSlicesSortStrings(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkSlicesSortStrings_Sorted(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function _makeRandomStructs(_n:stdgo.GoInt):Void {}
function testStructSorts(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function benchmarkSortStructs(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkSortFuncStructs(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkBinarySearchFloats(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function benchmarkBinarySearchFuncStruct(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {}
function testSortIntSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testSortFuncIntSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testSortFloat64Slice(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testSortFloat64SliceWithNaNs(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testSortStringSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testSortLarge_Random(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _intPairCmp(_x:T_intPair, _y:T_intPair):Void {}
function testStability(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function _cmpS(_s1:S, _s2:S):Void {}
function testMinMax(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testMinMaxNaNs(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testMinMaxPanics(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testBinarySearch(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testBinarySearchInts(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testBinarySearchFloats(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
function testBinarySearchFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {}
macro function _insertionSortCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):Void {}
macro function _siftDownCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _lo:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _hi:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _first:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):Void {}
macro function _heapSortCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):Void {}
macro function _pdqsortCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _limit:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):Void {}
macro function _partitionCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _pivot:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):Void {}
macro function _partitionEqualCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _pivot:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):Void {}
macro function _partialInsertionSortCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):Void {}
macro function _breakPatternsCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):Void {}
macro function _choosePivotCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):Void {}
macro function _order2CmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _swaps:haxe.macro.Expr.ExprOf<stdgo.Pointer<stdgo.GoInt>>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):Void {}
macro function _medianCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _c:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _swaps:haxe.macro.Expr.ExprOf<stdgo.Pointer<stdgo.GoInt>>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):Void {}
macro function _medianAdjacentCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _swaps:haxe.macro.Expr.ExprOf<stdgo.Pointer<stdgo.GoInt>>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):Void {}
macro function _reverseRangeCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):Void {}
macro function _swapRangeCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _n:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):Void {}
macro function _stableCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _n:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):Void {}
macro function _symMergeCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _m:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):Void {}
macro function _rotateCmpFunc<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _m:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _cmp:haxe.macro.Expr.ExprOf<(_a:E, _b:E) -> stdgo.GoInt>):Void {}
macro function _insertionSortOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>):Void {}
macro function _siftDownOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _lo:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _hi:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _first:haxe.macro.Expr.ExprOf<stdgo.GoInt>):Void {}
macro function _heapSortOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>):Void {}
macro function _pdqsortOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _limit:haxe.macro.Expr.ExprOf<stdgo.GoInt>):Void {}
macro function _partitionOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _pivot:haxe.macro.Expr.ExprOf<stdgo.GoInt>):Void {}
macro function _partitionEqualOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _pivot:haxe.macro.Expr.ExprOf<stdgo.GoInt>):Void {}
macro function _partialInsertionSortOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>):Void {}
macro function _breakPatternsOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>):Void {}
macro function _choosePivotOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>):Void {}
macro function _order2Ordered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _swaps:haxe.macro.Expr.ExprOf<stdgo.Pointer<stdgo.GoInt>>):Void {}
macro function _medianOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _c:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _swaps:haxe.macro.Expr.ExprOf<stdgo.Pointer<stdgo.GoInt>>):Void {}
macro function _medianAdjacentOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _swaps:haxe.macro.Expr.ExprOf<stdgo.Pointer<stdgo.GoInt>>):Void {}
macro function _reverseRangeOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>):Void {}
macro function _swapRangeOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _n:haxe.macro.Expr.ExprOf<stdgo.GoInt>):Void {}
macro function _stableOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _n:haxe.macro.Expr.ExprOf<stdgo.GoInt>):Void {}
macro function _symMergeOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _m:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>):Void {}
macro function _rotateOrdered<E>(__generic__0:haxe.macro.Expr.ExprOf<E>, _data:haxe.macro.Expr.ExprOf<stdgo.Slice<E>>, _a:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _m:haxe.macro.Expr.ExprOf<stdgo.GoInt>, _b:haxe.macro.Expr.ExprOf<stdgo.GoInt>):Void {}
@:invalid typedef T_xorshift_asInterface = Dynamic;
@:invalid typedef T_xorshift_static_extension = Dynamic;
@:invalid typedef T_myStructs_asInterface = Dynamic;
@:invalid typedef T_myStructs_static_extension = Dynamic;
@:invalid typedef T_intPairs_asInterface = Dynamic;
@:invalid typedef T_intPairs_static_extension = Dynamic;

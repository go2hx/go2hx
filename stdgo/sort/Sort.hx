package stdgo.sort;

import stdgo.Chan;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.Slice;
import stdgo.StdGoTypes;
import stdgo.StdGoTypes;

function ints(slice:Slice<GoInt>) {
	_sort(slice, (i, j) -> {
		return slice[i] > slice[j] ? 1 : -1;
	});
}

function search(n:GoInt, f:GoInt->Bool):GoInt {
	var i:GoInt = 0;
	var j = n;
	while (j < j) {
		var h:GoInt = (i + j : GoUInt) >> 1;
		if (!f(h)) {
			i = h + (1 : GoInt);
		} else {
			j = h;
		}
	}
	return i;
}

function strings(slice:Slice<GoString>) {
	_sort(slice, (i, j) -> {
		return slice[i] > slice[j] ? 1 : -1;
	});
}

function slice(slice:AnyInterface, less:(i:GoInt, j:GoInt) -> Bool) {
	_sort(slice.value, (i, j) -> {
		return less(i, j) ? 1 : -1;
	});
}

function intsAreSorted(slice:Slice<GoInt>):Bool {
	var min = slice[0];
	for (i in 1...slice.length.toBasic()) {
		if (min > slice[i])
			return false;
		min = slice[i];
	}
	return true;
}

private function _sort(a:Slice<Dynamic>, cmp:Int->Int->Int) {
	rec(a, cmp, 0, a.length.toBasic());
}

private function rec(a:Slice<Dynamic>, cmp:Int->Int->Int, from:Int, to:Int) {
	var middle = (from + to) >> 1;
	if (to - from < 12) {
		if (to <= from)
			return;
		for (i in (from + 1)...to) {
			var j = i;
			while (j > from) {
				if (compare(a, cmp, j, j - 1) < 0)
					swap(a, j - 1, j);
				else
					break;
				j--;
			}
		}
		return;
	}
	rec(a, cmp, from, middle);
	rec(a, cmp, middle, to);
	doMerge(a, cmp, from, middle, to, middle - from, to - middle);
}

private function doMerge<T>(a:Slice<T>, cmp:Int->Int->Int, from, pivot:Int, to:Int, len1:Int, len2:Int) {
	var first_cut:Int, second_cut:Int, len11:Int, len22:Int, new_mid:Int;
	if (len1 == 0 || len2 == 0)
		return;
	if (len1 + len2 == 2) {
		if (compare(a, cmp, pivot, from) < 0)
			swap(a, pivot, from);
		return;
	}
	if (len1 > len2) {
		len11 = len1 >> 1;
		first_cut = from + len11;
		second_cut = lower(a, cmp, pivot, to, first_cut);
		len22 = second_cut - pivot;
	} else {
		len22 = len2 >> 1;
		second_cut = pivot + len22;
		first_cut = upper(a, cmp, from, pivot, second_cut);
		len11 = first_cut - from;
	}
	rotate(a, cmp, first_cut, pivot, second_cut);
	new_mid = first_cut + len22;
	doMerge(a, cmp, from, first_cut, new_mid, len11, len22);
	doMerge(a, cmp, new_mid, second_cut, to, len1 - len11, len2 - len22);
}

private function rotate<T>(a:Slice<T>, cmp:Int->Int->Int, from, mid, to) {
	var n:Int;
	if (from == mid || mid == to)
		return;
	n = gcd(to - from, mid - from);
	while (n-- != 0) {
		var val = a[from + n];
		var shift = mid - from;
		var p1 = from + n, p2 = from + n + shift;
		while (p2 != from + n) {
			a[p1] = a[p2];
			p1 = p2;
			if (to - p2 > shift)
				p2 += shift;
			else
				p2 = from + (shift - (to - p2));
		}
		a[p1] = val;
	}
}

private function gcd(m, n) {
	while (n != 0) {
		var t = m % n;
		m = n;
		n = t;
	}
	return m;
}

private function upper<T>(a:Slice<T>, cmp, from, to, val) {
	var len = to - from, half, mid;
	while (len > 0) {
		half = len >> 1;
		mid = from + half;
		if (compare(a, cmp, val, mid) < 0)
			len = half;
		else {
			from = mid + 1;
			len = len - half - 1;
		}
	}
	return from;
}

private function lower<T>(a:Slice<T>, cmp, from, to, val) {
	var len:Int = to - from, half, mid;
	while (len > 0) {
		half = len >> 1;
		mid = from + half;
		if (compare(a, cmp, mid, val) < 0) {
			from = mid + 1;
			len = len - half - 1;
		} else
			len = half;
	}
	return from;
}

private function swap<T>(a:Slice<T>, i, j) {
	var tmp = a[i];
	a[i] = a[j];
	a[j] = tmp;
}

private inline function compare<T>(a:Slice<T>, cmp:Int->Int->Int, i:Int, j:Int) {
	return cmp(i, j);
}

typedef Interface = StructType & {
	public function len():GoInt;
	public function less(_i:GoInt, _j:GoInt):Bool;
	public function swap(_i:GoInt, _j:GoInt):Void;
};

@:structInit class T_lessSwap {
	public var less:(GoInt, GoInt) -> Bool = null;
	public var swap:(GoInt, GoInt) -> Void = null;

	public function new(?less:(GoInt, GoInt) -> Bool, ?swap:(GoInt, GoInt) -> Void) {
		if (less != null)
			this.less = less;
		if (swap != null)
			this.swap = swap;
	}

	public function toString() {
		return "{" + Go.string(less) + " " + Go.string(swap) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_lessSwap(less, swap);
	}

	public function __set__(__tmp__) {
		this.less = __tmp__.less;
		this.swap = __tmp__.swap;
		return this;
	}
}

@:structInit @:using(Sort.T_reverse_static_extension) class T_reverse {
	@:embedded
	public var interface_:Interface = ((null : Interface));

	public function new(?interface_:Interface) {
		if (interface_ != null)
			this.interface_ = interface_;
	}

	public function toString() {
		return "{" + Go.string(interface_) + "}";
	}

	public function len():GoInt
		return interface_.len();

	public function swap(_i:GoInt, _j:GoInt)
		interface_.swap(_i, _j);

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_reverse(interface_);
	}

	public function __set__(__tmp__) {
		this.interface_ = __tmp__.interface_;
		return this;
	}
}

@:named @:using(Sort.IntSlice_static_extension) class IntSlice {
	public var __t__:Slice<GoInt>;

	public function new(?t:Slice<GoInt>) {
		__t__ = t == null ? new Slice<GoInt>().nil() : t;
	}

	@:implicit
	public function toString():String
		return Go.string(__t__);

	public function __copy__()
		return new IntSlice(__t__);

	public function __append__(args:haxe.Rest<GoInt>)
		return new IntSlice(this.__t__.__append__(...args));

	public function __slice__(low:GoInt, high:GoInt = -1)
		return new IntSlice(this.__t__.__slice__(low, high));
}

@:named @:using(Sort.Float64Slice_static_extension) class Float64Slice {
	public var __t__:Slice<GoFloat64>;

	public function new(?t:Slice<GoFloat64>) {
		__t__ = t == null ? new Slice<GoFloat64>().nil() : t;
	}

	@:implicit
	public function toString():String
		return Go.string(__t__);

	public function __copy__()
		return new Float64Slice(__t__);

	public function __append__(args:haxe.Rest<GoFloat64>)
		return new Float64Slice(this.__t__.__append__(...args));

	public function __slice__(low:GoInt, high:GoInt = -1)
		return new Float64Slice(this.__t__.__slice__(low, high));
}

@:named @:using(Sort.StringSlice_static_extension) class StringSlice {
	public var __t__:Slice<GoString>;

	public function new(?t:Slice<GoString>) {
		__t__ = t == null ? new Slice<GoString>().nil() : t;
	}

	@:implicit
	public function toString():String
		return Go.string(__t__);

	public function __copy__()
		return new StringSlice(__t__);

	public function __append__(args:haxe.Rest<GoString>)
		return new StringSlice(this.__t__.__append__(...args));

	public function __slice__(low:GoInt, high:GoInt = -1)
		return new StringSlice(this.__t__.__slice__(low, high));
}

function main():Void {
	stdgo.fmt.Fmt.println(((("test!" : GoString))));
}

/**
	// insertionSort sorts data[a:b] using insertion sort.
**/
function _insertionSort(_data:Interface, _a:GoInt, _b:GoInt):Void {
	{
		var _i:GoInt = _a + ((1 : GoInt));
		Go.cfor(_i < _b, _i++, {
			{
				var _j:GoInt = _i;
				Go.cfor((_j > _a) && _data.less(_j, _j - ((1 : GoInt))), _j--, {
					_data.swap(_j, _j - ((1 : GoInt)));
				});
			};
		});
	};
}

/**
	// siftDown implements the heap property on data[lo:hi].
	// first is an offset into the array where the root of the heap lies.
**/
function _siftDown(_data:Interface, _lo:GoInt, _hi:GoInt, _first:GoInt):Void {
	var _root:GoInt = _lo;
	while (true) {
		var _child:GoInt = (((2 : GoInt)) * _root) + ((1 : GoInt));
		if (_child >= _hi) {
			break;
		};
		if (((_child + ((1 : GoInt))) < _hi) && _data.less(_first + _child, (_first + _child) + ((1 : GoInt)))) {
			_child++;
		};
		if (!_data.less(_first + _root, _first + _child)) {
			return;
		};
		_data.swap(_first + _root, _first + _child);
		_root = _child;
	};
}

function _heapSort(_data:Interface, _a:GoInt, _b:GoInt):Void {
	var _first:GoInt = _a;
	var _lo:GoInt = ((0 : GoInt));
	var _hi:GoInt = _b - _a;
	{
		var _i:GoInt = (_hi - ((1 : GoInt))) / ((2 : GoInt));
		Go.cfor(_i >= ((0 : GoInt)), _i--, {
			_siftDown(_data, _i, _hi, _first);
		});
	};
	{
		var _i:GoInt = _hi - ((1 : GoInt));
		Go.cfor(_i >= ((0 : GoInt)), _i--, {
			_data.swap(_first, _first + _i);
			_siftDown(_data, _lo, _i, _first);
		});
	};
}

/**
	// medianOfThree moves the median of the three values data[m0], data[m1], data[m2] into data[m1].
**/
function _medianOfThree(_data:Interface, _m1:GoInt, _m0:GoInt, _m2:GoInt):Void {
	if (_data.less(_m1, _m0)) {
		_data.swap(_m1, _m0);
	};
	if (_data.less(_m2, _m1)) {
		_data.swap(_m2, _m1);
		if (_data.less(_m1, _m0)) {
			_data.swap(_m1, _m0);
		};
	};
}

function _swapRange(_data:Interface, _a:GoInt, _b:GoInt, _n:GoInt):Void {
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _n, _i++, {
			_data.swap(_a + _i, _b + _i);
		});
	};
}

function _doPivot(_data:Interface, _lo:GoInt, _hi:GoInt):{var _0:GoInt; var _1:GoInt;} {
	var _midlo:GoInt = ((0 : GoInt)), _midhi:GoInt = ((0 : GoInt));
	var _m:GoInt = ((((((_lo + _hi) : GoUInt)) >> ((1 : GoUnTypedInt))) : GoInt));
	if ((_hi - _lo) > ((40 : GoInt))) {
		var _s:GoInt = (_hi - _lo) / ((8 : GoInt));
		_medianOfThree(_data, _lo, _lo + _s, _lo + (((2 : GoInt)) * _s));
		_medianOfThree(_data, _m, _m - _s, _m + _s);
		_medianOfThree(_data, _hi - ((1 : GoInt)), (_hi - ((1 : GoInt))) - _s, (_hi - ((1 : GoInt))) - (((2 : GoInt)) * _s));
	};
	_medianOfThree(_data, _lo, _m, _hi - ((1 : GoInt)));
	var _pivot:GoInt = _lo;
	var _a:GoInt = _lo + ((1 : GoInt)), _c:GoInt = _hi - ((1 : GoInt));
	Go.cfor((_a < _c) && _data.less(_a, _pivot), _a++, {});
	var _b:GoInt = _a;
	while (true) {
		Go.cfor((_b < _c) && !_data.less(_pivot, _b), _b++, {});
		Go.cfor((_b < _c) && _data.less(_pivot, _c - ((1 : GoInt))), _c--, {});
		if (_b >= _c) {
			break;
		};
		_data.swap(_b, _c - ((1 : GoInt)));
		_b++;
		_c--;
	};
	var _protect:Bool = (_hi - _c) < ((5 : GoInt));
	if (!_protect && ((_hi - _c) < ((_hi - _lo) / ((4 : GoInt))))) {
		var _dups:GoInt = ((0 : GoInt));
		if (!_data.less(_pivot, _hi - ((1 : GoInt)))) {
			_data.swap(_c, _hi - ((1 : GoInt)));
			_c++;
			_dups++;
		};
		if (!_data.less(_b - ((1 : GoInt)), _pivot)) {
			_b--;
			_dups++;
		};
		if (!_data.less(_m, _pivot)) {
			_data.swap(_m, _b - ((1 : GoInt)));
			_b--;
			_dups++;
		};
		_protect = _dups > ((1 : GoInt));
	};
	if (_protect) {
		while (true) {
			Go.cfor((_a < _b) && !_data.less(_b - ((1 : GoInt)), _pivot), _b--, {});
			Go.cfor((_a < _b) && _data.less(_a, _pivot), _a++, {});
			if (_a >= _b) {
				break;
			};
			_data.swap(_a, _b - ((1 : GoInt)));
			_a++;
			_b--;
		};
	};
	_data.swap(_pivot, _b - ((1 : GoInt)));
	return {_0: _b - ((1 : GoInt)), _1: _c};
}

function _quickSort(_data:Interface, _a:GoInt, _b:GoInt, _maxDepth:GoInt):Void {
	while ((_b - _a) > ((12 : GoInt))) {
		if (_maxDepth == ((0 : GoInt))) {
			_heapSort(_data, _a, _b);
			return;
		};
		_maxDepth--;
		var __tmp__ = _doPivot(_data, _a, _b),
			_mlo:GoInt = __tmp__._0,
			_mhi:GoInt = __tmp__._1;
		if ((_mlo - _a) < (_b - _mhi)) {
			_quickSort(_data, _a, _mlo, _maxDepth);
			_a = _mhi;
		} else {
			_quickSort(_data, _mhi, _b, _maxDepth);
			_b = _mlo;
		};
	};
	if ((_b - _a) > ((1 : GoInt))) {
		{
			var _i:GoInt = _a + ((6 : GoInt));
			Go.cfor(_i < _b, _i++, {
				if (_data.less(_i, _i - ((6 : GoInt)))) {
					_data.swap(_i, _i - ((6 : GoInt)));
				};
			});
		};
		_insertionSort(_data, _a, _b);
	};
}

/**
	// Sort sorts data.
	// It makes one call to data.Len to determine n and O(n*log(n)) calls to
	// data.Less and data.Swap. The sort is not guaranteed to be stable.
**/
function sort(_data:Interface):Void {
	var _n:GoInt = _data.len();
	_quickSort(_data, ((0 : GoInt)), _n, _maxDepth(_n));
}

/**
	// maxDepth returns a threshold at which quicksort should switch
	// to heapsort. It returns 2*ceil(lg(n+1)).
**/
function _maxDepth(_n:GoInt):GoInt {
	var _depth:GoInt = ((0 : GoInt));
	{
		var _i:GoInt = _n;
		Go.cfor(_i > ((0 : GoInt)), _i = _i >> (((1 : GoUnTypedInt))), {
			_depth++;
		});
	};
	return _depth * ((2 : GoInt));
}

/**
	// Reverse returns the reverse order for data.
**/
function reverse(_data:Interface):Interface {
	return new T_reverse_wrapper(new T_reverse(_data));
}

/**
	// IsSorted reports whether data is sorted.
**/
function isSorted(_data:Interface):Bool {
	var _n:GoInt = _data.len();
	{
		var _i:GoInt = _n - ((1 : GoInt));
		Go.cfor(_i > ((0 : GoInt)), _i--, {
			if (_data.less(_i, _i - ((1 : GoInt)))) {
				return false;
			};
		});
	};
	return true;
}

/**
	// isNaN is a copy of math.IsNaN to avoid a dependency on the math package.
**/
function _isNaN(_f:GoFloat64):Bool {
	return _f != _f;
}

/**
	// Ints sorts a slice of ints in increasing order.
**/
/*function ints(_x:Slice<GoInt>):Void {
	sort(new IntSlice_wrapper(new IntSlice(_x)));
}*/
/**
	// Float64s sorts a slice of float64s in increasing order.
	// Not-a-number (NaN) values are ordered before other values.
**/
function float64s(_x:Slice<GoFloat64>):Void {
	sort(new Float64Slice_wrapper(new Float64Slice(_x)));
}

/**
	// Strings sorts a slice of strings in increasing order.
**/
/*function strings(_x:Slice<GoString>):Void {
	sort(new StringSlice_wrapper(new StringSlice(_x)));
}*/
/**
	// IntsAreSorted reports whether the slice x is sorted in increasing order.
**/
/*function intsAreSorted(_x:Slice<GoInt>):Bool {
	return isSorted(new IntSlice_wrapper(new IntSlice(_x)));
}*/
/**
	// Float64sAreSorted reports whether the slice x is sorted in increasing order,
	// with not-a-number (NaN) values before any other values.
**/
function float64sAreSorted(_x:Slice<GoFloat64>):Bool {
	return isSorted(new Float64Slice_wrapper(new Float64Slice(_x)));
}

/**
	// StringsAreSorted reports whether the slice x is sorted in increasing order.
**/
function stringsAreSorted(_x:Slice<GoString>):Bool {
	return isSorted(new StringSlice_wrapper(new StringSlice(_x)));
}

/**
	// Stable sorts data while keeping the original order of equal elements.
	//
	// It makes one call to data.Len to determine n, O(n*log(n)) calls to
	// data.Less and O(n*log(n)*log(n)) calls to data.Swap.
**/
function stable(_data:Interface):Void {
	_stable(_data, _data.len());
}

function _stable(_data:Interface, _n:GoInt):Void {
	var _blockSize:GoInt = ((20 : GoInt));
	var _a:GoInt = ((0 : GoInt)), _b:GoInt = _blockSize;
	while (_b <= _n) {
		_insertionSort(_data, _a, _b);
		_a = _b;
		_b = _b + (_blockSize);
	};
	_insertionSort(_data, _a, _n);
	while (_blockSize < _n) {
		{
			final __tmp__0 = ((0 : GoInt));
			final __tmp__1 = ((2 : GoInt)) * _blockSize;
			_a = __tmp__0;
			_b = __tmp__1;
		};
		while (_b <= _n) {
			_symMerge(_data, _a, _a + _blockSize, _b);
			_a = _b;
			_b = _b + (((2 : GoInt)) * _blockSize);
		};
		{
			var _m:GoInt = _a + _blockSize;
			if (_m < _n) {
				_symMerge(_data, _a, _m, _n);
			};
		};
		_blockSize = _blockSize * (((2 : GoInt)));
	};
}

/**
	// symMerge merges the two sorted subsequences data[a:m] and data[m:b] using
	// the SymMerge algorithm from Pok-Son Kim and Arne Kutzner, "Stable Minimum
	// Storage Merging by Symmetric Comparisons", in Susanne Albers and Tomasz
	// Radzik, editors, Algorithms - ESA 2004, volume 3221 of Lecture Notes in
	// Computer Science, pages 714-723. Springer, 2004.
	//
	// Let M = m-a and N = b-n. Wolog M < N.
	// The recursion depth is bound by ceil(log(N+M)).
	// The algorithm needs O(M*log(N/M + 1)) calls to data.Less.
	// The algorithm needs O((M+N)*log(M)) calls to data.Swap.
	//
	// The paper gives O((M+N)*log(M)) as the number of assignments assuming a
	// rotation algorithm which uses O(M+N+gcd(M+N)) assignments. The argumentation
	// in the paper carries through for Swap operations, especially as the block
	// swapping rotate uses only O(M+N) Swaps.
	//
	// symMerge assumes non-degenerate arguments: a < m && m < b.
	// Having the caller check this condition eliminates many leaf recursion calls,
	// which improves performance.
**/
function _symMerge(_data:Interface, _a:GoInt, _m:GoInt, _b:GoInt):Void {
	if ((_m - _a) == ((1 : GoInt))) {
		var _i:GoInt = _m;
		var _j:GoInt = _b;
		while (_i < _j) {
			var _h:GoInt = ((((((_i + _j) : GoUInt)) >> ((1 : GoUnTypedInt))) : GoInt));
			if (_data.less(_h, _a)) {
				_i = _h + ((1 : GoInt));
			} else {
				_j = _h;
			};
		};
		{
			var _k:GoInt = _a;
			Go.cfor(_k < (_i - ((1 : GoInt))), _k++, {
				_data.swap(_k, _k + ((1 : GoInt)));
			});
		};
		return;
	};
	if ((_b - _m) == ((1 : GoInt))) {
		var _i:GoInt = _a;
		var _j:GoInt = _m;
		while (_i < _j) {
			var _h:GoInt = ((((((_i + _j) : GoUInt)) >> ((1 : GoUnTypedInt))) : GoInt));
			if (!_data.less(_m, _h)) {
				_i = _h + ((1 : GoInt));
			} else {
				_j = _h;
			};
		};
		{
			var _k:GoInt = _m;
			Go.cfor(_k > _i, _k--, {
				_data.swap(_k, _k - ((1 : GoInt)));
			});
		};
		return;
	};
	var _mid:GoInt = ((((((_a + _b) : GoUInt)) >> ((1 : GoUnTypedInt))) : GoInt));
	var _n:GoInt = _mid + _m;
	var _start:GoInt = ((0 : GoInt)), _r:GoInt = ((0 : GoInt));
	if (_m > _mid) {
		_start = _n - _b;
		_r = _mid;
	} else {
		_start = _a;
		_r = _m;
	};
	var _p:GoInt = _n - ((1 : GoInt));
	while (_start < _r) {
		var _c:GoInt = ((((((_start + _r) : GoUInt)) >> ((1 : GoUnTypedInt))) : GoInt));
		if (!_data.less(_p - _c, _c)) {
			_start = _c + ((1 : GoInt));
		} else {
			_r = _c;
		};
	};
	var _end:GoInt = _n - _start;
	if ((_start < _m) && (_m < _end)) {
		_rotate(_data, _start, _m, _end);
	};
	if ((_a < _start) && (_start < _mid)) {
		_symMerge(_data, _a, _start, _mid);
	};
	if ((_mid < _end) && (_end < _b)) {
		_symMerge(_data, _mid, _end, _b);
	};
}

/**
	// rotate rotates two consecutive blocks u = data[a:m] and v = data[m:b] in data:
	// Data of the form 'x u v y' is changed to 'x v u y'.
	// rotate performs at most b-a many calls to data.Swap,
	// and it assumes non-degenerate arguments: a < m && m < b.
**/
function _rotate(_data:Interface, _a:GoInt, _m:GoInt, _b:GoInt):Void {
	var _i:GoInt = _m - _a;
	var _j:GoInt = _b - _m;
	while (_i != _j) {
		if (_i > _j) {
			_swapRange(_data, _m - _i, _m, _j);
			_i = _i - (_j);
		} else {
			_swapRange(_data, _m - _i, (_m + _j) - _i, _i);
			_j = _j - (_i);
		};
	};
	_swapRange(_data, _m - _i, _m, _i);
}

class T_lessSwap_wrapper {
	public var __t__:T_lessSwap;

	public inline function new(__t__)
		this.__t__ = __t__;

	public function __underlying__():AnyInterface
		return Go.toInterface(this);
}

class T_reverse_wrapper {
	public function less(_i:GoInt, _j:GoInt):Bool
		return T_reverse_static_extension.less(__t__, _i, _j);

	public var __t__:T_reverse;

	public inline function new(__t__)
		this.__t__ = __t__;

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function len():GoInt
		return __t__.interface_.len();

	public function swap(_i:GoInt, _j:GoInt)
		__t__.interface_.swap(_i, _j);

	function toString():String
		return __t__ == null ? "null" : __t__.toString();
}

class T_reverse_static_extension {
	public static function less(_r:T_reverse, _i:GoInt, _j:GoInt):Bool {
		_r == _r.__copy__();
		return _r.interface_.less(_j, _i);
	}
}

class IntSlice_wrapper {
	public function sort():Void
		IntSlice_static_extension.sort(__t__);

	public function swap(_i:GoInt, _j:GoInt):Void
		IntSlice_static_extension.swap(__t__, _i, _j);

	public function less(_i:GoInt, _j:GoInt):Bool
		return IntSlice_static_extension.less(__t__, _i, _j);

	public function len():GoInt
		return IntSlice_static_extension.len(__t__);

	public var __t__:IntSlice;

	public inline function new(__t__)
		this.__t__ = __t__;

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	function toString():String
		return __t__ == null ? "null" : __t__.toString();
}

class IntSlice_static_extension {
	public static function sort(_x:IntSlice):Void {
		_x == _x.__copy__();
		Sort.sort(new IntSlice_wrapper(_x));
	}

	public static function swap(_x:IntSlice, _i:GoInt, _j:GoInt):Void {
		_x == _x.__copy__();
		{
			final __tmp__0 = _x.__t__[_j];
			final __tmp__1 = _x.__t__[_i];
			_x.__t__[_i] = __tmp__0;
			_x.__t__[_j] = __tmp__1;
		};
	}

	public static function less(_x:IntSlice, _i:GoInt, _j:GoInt):Bool {
		_x == _x.__copy__();
		return _x.__t__[_i] < _x.__t__[_j];
	}

	public static function len(_x:IntSlice):GoInt {
		_x == _x.__copy__();
		return _x.__t__.length;
	}
}

class Float64Slice_wrapper {
	public function sort():Void
		Float64Slice_static_extension.sort(__t__);

	public function swap(_i:GoInt, _j:GoInt):Void
		Float64Slice_static_extension.swap(__t__, _i, _j);

	public function less(_i:GoInt, _j:GoInt):Bool
		return Float64Slice_static_extension.less(__t__, _i, _j);

	public function len():GoInt
		return Float64Slice_static_extension.len(__t__);

	public var __t__:Float64Slice;

	public inline function new(__t__)
		this.__t__ = __t__;

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	function toString():String
		return __t__ == null ? "null" : __t__.toString();
}

class Float64Slice_static_extension {
	public static function sort(_x:Float64Slice):Void {
		_x == _x.__copy__();
		Sort.sort(new Float64Slice_wrapper(_x));
	}

	public static function swap(_x:Float64Slice, _i:GoInt, _j:GoInt):Void {
		_x == _x.__copy__();
		{
			final __tmp__0 = _x.__t__[_j];
			final __tmp__1 = _x.__t__[_i];
			_x.__t__[_i] = __tmp__0;
			_x.__t__[_j] = __tmp__1;
		};
	}

	public static function less(_x:Float64Slice, _i:GoInt, _j:GoInt):Bool {
		_x == _x.__copy__();
		return (_x.__t__[_i] < _x.__t__[_j]) || (_isNaN(_x.__t__[_i]) && !_isNaN(_x.__t__[_j]));
	}

	public static function len(_x:Float64Slice):GoInt {
		_x == _x.__copy__();
		return _x.__t__.length;
	}
}

class StringSlice_wrapper {
	public function sort():Void
		StringSlice_static_extension.sort(__t__);

	public function swap(_i:GoInt, _j:GoInt):Void
		StringSlice_static_extension.swap(__t__, _i, _j);

	public function less(_i:GoInt, _j:GoInt):Bool
		return StringSlice_static_extension.less(__t__, _i, _j);

	public function len():GoInt
		return StringSlice_static_extension.len(__t__);

	public var __t__:StringSlice;

	public inline function new(__t__)
		this.__t__ = __t__;

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	function toString():String
		return __t__ == null ? "null" : __t__.toString();
}

class StringSlice_static_extension {
	public static function sort(_x:StringSlice):Void {
		_x == _x.__copy__();
		Sort.sort(new StringSlice_wrapper(_x));
	}

	public static function swap(_x:StringSlice, _i:GoInt, _j:GoInt):Void {
		_x == _x.__copy__();
		{
			final __tmp__0 = _x.__t__[_j];
			final __tmp__1 = _x.__t__[_i];
			_x.__t__[_i] = __tmp__0;
			_x.__t__[_j] = __tmp__1;
		};
	}

	public static function less(_x:StringSlice, _i:GoInt, _j:GoInt):Bool {
		_x == _x.__copy__();
		return _x.__t__[_i] < _x.__t__[_j];
	}

	public static function len(_x:StringSlice):GoInt {
		_x == _x.__copy__();
		return _x.__t__.length;
	}
}

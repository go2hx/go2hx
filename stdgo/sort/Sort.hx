package stdgo.sort;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var _reflectValueOf : AnyInterface -> stdgo.internal.reflectlite.Reflectlite.Value = stdgo.internal.reflectlite.Reflectlite.valueOf;
var _reflectSwapper : AnyInterface -> ((GoInt, GoInt) -> Void) = stdgo.internal.reflectlite.Reflectlite.swapper;
typedef Interface = StructType & {
    public function len():GoInt;
    public function less(_i:GoInt, _j:GoInt):Bool;
    public function swap(_i:GoInt, _j:GoInt):Void;
};
@:structInit class T_lessSwap {
    public var less : (GoInt, GoInt) -> Bool = null;
    public var swap : (GoInt, GoInt) -> Void = null;
    public function new(?less:(GoInt, GoInt) -> Bool, ?swap:(GoInt, GoInt) -> Void) {
        if (less != null) this.less = less;
        if (swap != null) this.swap = swap;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_lessSwap(less, swap);
    }
}
@:structInit @:using(stdgo.sort.Sort.T_reverse_static_extension) class T_reverse {
    @:embedded
    public var interface_ : Interface = ((null : Interface));
    public function new(?interface_:Interface) {
        if (interface_ != null) this.interface_ = interface_;
    }
    @:embedded
    public function len():GoInt return interface_.len();
    @:embedded
    public function swap(_i_:GoInt, _j_:GoInt) interface_.swap(_i_, _j_);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_reverse(interface_);
    }
}
@:named @:using(stdgo.sort.Sort.IntSlice_static_extension) typedef IntSlice = Slice<GoInt>;
@:named @:using(stdgo.sort.Sort.Float64Slice_static_extension) typedef Float64Slice = Slice<GoFloat64>;
@:named @:using(stdgo.sort.Sort.StringSlice_static_extension) typedef StringSlice = Slice<GoString>;
/**
    // Search uses binary search to find and return the smallest index i
    // in [0, n) at which f(i) is true, assuming that on the range [0, n),
    // f(i) == true implies f(i+1) == true. That is, Search requires that
    // f is false for some (possibly empty) prefix of the input range [0, n)
    // and then true for the (possibly empty) remainder; Search returns
    // the first true index. If there is no such index, Search returns n.
    // (Note that the "not found" return value is not -1 as in, for instance,
    // strings.Index.)
    // Search calls f(i) only for i in the range [0, n).
    //
    // A common use of Search is to find the index i for a value x in
    // a sorted, indexable data structure such as an array or slice.
    // In this case, the argument f, typically a closure, captures the value
    // to be searched for, and how the data structure is indexed and
    // ordered.
    //
    // For instance, given a slice data sorted in ascending order,
    // the call Search(len(data), func(i int) bool { return data[i] >= 23 })
    // returns the smallest index i such that data[i] >= 23. If the caller
    // wants to find whether 23 is in the slice, it must test data[i] == 23
    // separately.
    //
    // Searching data sorted in descending order would use the <=
    // operator instead of the >= operator.
    //
    // To complete the example above, the following code tries to find the value
    // x in an integer slice data sorted in ascending order:
    //
    //	x := 23
    //	i := sort.Search(len(data), func(i int) bool { return data[i] >= x })
    //	if i < len(data) && data[i] == x {
    //		// x is present at data[i]
    //	} else {
    //		// x is not present in data,
    //		// but i is the index where it would be inserted.
    //	}
    //
    // As a more whimsical example, this program guesses your number:
    //
    //	func GuessingGame() {
    //		var s string
    //		fmt.Printf("Pick an integer from 0 to 100.\n")
    //		answer := sort.Search(100, func(i int) bool {
    //			fmt.Printf("Is your number <= %d? ", i)
    //			fmt.Scanf("%s", &s)
    //			return s != "" && s[0] == 'y'
    //		})
    //		fmt.Printf("Your number is %d.\n", answer)
    //	}
    //
**/
function search(_n:GoInt, _f:GoInt -> Bool):GoInt {
        var _i:GoInt = ((0 : GoInt)), _j:GoInt = _n;
        while (_i < _j) {
            var _h:GoInt = ((((((_i + _j) : GoUInt)) >> ((1 : GoUnTypedInt))) : GoInt));
            if (!_f(_h)) {
                _i = _h + ((1 : GoInt));
            } else {
                _j = _h;
            };
        };
        return _i;
    }
/**
    // SearchInts searches for x in a sorted slice of ints and returns the index
    // as specified by Search. The return value is the index to insert x if x is
    // not present (it could be len(a)).
    // The slice must be sorted in ascending order.
    //
**/
function searchInts(_a:Slice<GoInt>, _x:GoInt):GoInt {
        return search((_a != null ? _a.length : ((0 : GoInt))), function(_i:GoInt):Bool {
            return (_a != null ? _a[_i] : ((0 : GoInt))) >= _x;
        });
    }
/**
    // SearchFloat64s searches for x in a sorted slice of float64s and returns the index
    // as specified by Search. The return value is the index to insert x if x is not
    // present (it could be len(a)).
    // The slice must be sorted in ascending order.
    //
**/
function searchFloat64s(_a:Slice<GoFloat64>, _x:GoFloat64):GoInt {
        return search((_a != null ? _a.length : ((0 : GoInt))), function(_i:GoInt):Bool {
            return (_a != null ? _a[_i] : ((0 : GoFloat64))) >= _x;
        });
    }
/**
    // SearchStrings searches for x in a sorted slice of strings and returns the index
    // as specified by Search. The return value is the index to insert x if x is not
    // present (it could be len(a)).
    // The slice must be sorted in ascending order.
    //
**/
function searchStrings(_a:Slice<GoString>, _x:GoString):GoInt {
        return search((_a != null ? _a.length : ((0 : GoInt))), function(_i:GoInt):Bool {
            return (_a != null ? _a[_i] : (("" : GoString))) >= _x;
        });
    }
/**
    // Slice sorts the slice x given the provided less function.
    // It panics if x is not a slice.
    //
    // The sort is not guaranteed to be stable: equal elements
    // may be reversed from their original order.
    // For a stable sort, use SliceStable.
    //
    // The less function must satisfy the same requirements as
    // the Interface type's Less method.
**/
function slice(_x:AnyInterface, _less:(_i:GoInt, _j:GoInt) -> Bool):Void {
        var _rv:stdgo.internal.reflectlite.Reflectlite.Value = (_reflectValueOf(Go.toInterface(_x)) == null ? null : _reflectValueOf(Go.toInterface(_x)).__copy__());
        var _swap:(GoInt, GoInt) -> Void = _reflectSwapper(Go.toInterface(_x));
        var _length:GoInt = _rv.len();
        _quickSort_func(((new T_lessSwap(_less, _swap) : T_lessSwap)), ((0 : GoInt)), _length, _maxDepth(_length));
    }
/**
    // SliceStable sorts the slice x using the provided less
    // function, keeping equal elements in their original order.
    // It panics if x is not a slice.
    //
    // The less function must satisfy the same requirements as
    // the Interface type's Less method.
**/
function sliceStable(_x:AnyInterface, _less:(_i:GoInt, _j:GoInt) -> Bool):Void {
        var _rv:stdgo.internal.reflectlite.Reflectlite.Value = (_reflectValueOf(Go.toInterface(_x)) == null ? null : _reflectValueOf(Go.toInterface(_x)).__copy__());
        var _swap:(GoInt, GoInt) -> Void = _reflectSwapper(Go.toInterface(_x));
        _stable_func(((new T_lessSwap(_less, _swap) : T_lessSwap)), _rv.len());
    }
/**
    // SliceIsSorted reports whether the slice x is sorted according to the provided less function.
    // It panics if x is not a slice.
**/
function sliceIsSorted(_x:AnyInterface, _less:(_i:GoInt, _j:GoInt) -> Bool):Bool {
        var _rv:stdgo.internal.reflectlite.Reflectlite.Value = (_reflectValueOf(Go.toInterface(_x)) == null ? null : _reflectValueOf(Go.toInterface(_x)).__copy__());
        var _n:GoInt = _rv.len();
        {
            var _i:GoInt = _n - ((1 : GoInt));
            Go.cfor(_i > ((0 : GoInt)), _i--, {
                if (_less(_i, _i - ((1 : GoInt)))) {
                    return false;
                };
            });
        };
        return true;
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
function _doPivot(_data:Interface, _lo:GoInt, _hi:GoInt):{ var _0 : GoInt; var _1 : GoInt; } {
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
        return { _0 : _b - ((1 : GoInt)), _1 : _c };
    }
function _quickSort(_data:Interface, _a:GoInt, _b:GoInt, _maxDepth:GoInt):Void {
        while ((_b - _a) > ((12 : GoInt))) {
            if (_maxDepth == ((0 : GoInt))) {
                _heapSort(_data, _a, _b);
                return;
            };
            _maxDepth--;
            var __tmp__ = _doPivot(_data, _a, _b), _mlo:GoInt = __tmp__._0, _mhi:GoInt = __tmp__._1;
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
    // Sort sorts data in ascending order as determined by the Less method.
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
        return {
            final __self__ = new T_reverse_wrapper(((new T_reverse(_data) : T_reverse)));
            __self__.len = #if !macro function():GoInt return ((new T_reverse(_data) : T_reverse)).len() #else null #end;
            __self__.less = #if !macro function(_i_:GoInt, _j_:GoInt):Bool return ((new T_reverse(_data) : T_reverse)).less(_i_, _j_) #else null #end;
            __self__.swap = #if !macro function(_i__:GoInt, _j__:GoInt):Void ((new T_reverse(_data) : T_reverse)).swap(_i__, _j__) #else null #end;
            __self__;
        };
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
function ints(_x:Slice<GoInt>):Void {
        sort({
            final __self__ = new IntSlice_wrapper(((_x : IntSlice)));
            __self__.len = #if !macro function():GoInt return ((_x : IntSlice)).len() #else null #end;
            __self__.less = #if !macro function(_i_:GoInt, _j_:GoInt):Bool return ((_x : IntSlice)).less(_i_, _j_) #else null #end;
            __self__.search = #if !macro function(_x_:GoInt):GoInt return ((_x : IntSlice)).search(_x_) #else null #end;
            __self__.sort = #if !macro function():Void ((_x : IntSlice)).sort() #else null #end;
            __self__.swap = #if !macro function(_i__:GoInt, _j__:GoInt):Void ((_x : IntSlice)).swap(_i__, _j__) #else null #end;
            __self__;
        });
    }
/**
    // Float64s sorts a slice of float64s in increasing order.
    // Not-a-number (NaN) values are ordered before other values.
**/
function float64s(_x:Slice<GoFloat64>):Void {
        sort({
            final __self__ = new Float64Slice_wrapper(((_x : Float64Slice)));
            __self__.len = #if !macro function():GoInt return ((_x : Float64Slice)).len() #else null #end;
            __self__.less = #if !macro function(_i_:GoInt, _j_:GoInt):Bool return ((_x : Float64Slice)).less(_i_, _j_) #else null #end;
            __self__.search = #if !macro function(_x_:GoFloat64):GoInt return ((_x : Float64Slice)).search(_x_) #else null #end;
            __self__.sort = #if !macro function():Void ((_x : Float64Slice)).sort() #else null #end;
            __self__.swap = #if !macro function(_i__:GoInt, _j__:GoInt):Void ((_x : Float64Slice)).swap(_i__, _j__) #else null #end;
            __self__;
        });
    }
/**
    // Strings sorts a slice of strings in increasing order.
**/
function strings(_x:Slice<GoString>):Void {
        sort({
            final __self__ = new StringSlice_wrapper(((_x : StringSlice)));
            __self__.len = #if !macro function():GoInt return ((_x : StringSlice)).len() #else null #end;
            __self__.less = #if !macro function(_i_:GoInt, _j_:GoInt):Bool return ((_x : StringSlice)).less(_i_, _j_) #else null #end;
            __self__.search = #if !macro function(_x_:GoString):GoInt return ((_x : StringSlice)).search(_x_) #else null #end;
            __self__.sort = #if !macro function():Void ((_x : StringSlice)).sort() #else null #end;
            __self__.swap = #if !macro function(_i__:GoInt, _j__:GoInt):Void ((_x : StringSlice)).swap(_i__, _j__) #else null #end;
            __self__;
        });
    }
/**
    // IntsAreSorted reports whether the slice x is sorted in increasing order.
**/
function intsAreSorted(_x:Slice<GoInt>):Bool {
        return isSorted({
            final __self__ = new IntSlice_wrapper(((_x : IntSlice)));
            __self__.len = #if !macro function():GoInt return ((_x : IntSlice)).len() #else null #end;
            __self__.less = #if !macro function(_i_:GoInt, _j_:GoInt):Bool return ((_x : IntSlice)).less(_i_, _j_) #else null #end;
            __self__.search = #if !macro function(_x_:GoInt):GoInt return ((_x : IntSlice)).search(_x_) #else null #end;
            __self__.sort = #if !macro function():Void ((_x : IntSlice)).sort() #else null #end;
            __self__.swap = #if !macro function(_i__:GoInt, _j__:GoInt):Void ((_x : IntSlice)).swap(_i__, _j__) #else null #end;
            __self__;
        });
    }
/**
    // Float64sAreSorted reports whether the slice x is sorted in increasing order,
    // with not-a-number (NaN) values before any other values.
**/
function float64sAreSorted(_x:Slice<GoFloat64>):Bool {
        return isSorted({
            final __self__ = new Float64Slice_wrapper(((_x : Float64Slice)));
            __self__.len = #if !macro function():GoInt return ((_x : Float64Slice)).len() #else null #end;
            __self__.less = #if !macro function(_i_:GoInt, _j_:GoInt):Bool return ((_x : Float64Slice)).less(_i_, _j_) #else null #end;
            __self__.search = #if !macro function(_x_:GoFloat64):GoInt return ((_x : Float64Slice)).search(_x_) #else null #end;
            __self__.sort = #if !macro function():Void ((_x : Float64Slice)).sort() #else null #end;
            __self__.swap = #if !macro function(_i__:GoInt, _j__:GoInt):Void ((_x : Float64Slice)).swap(_i__, _j__) #else null #end;
            __self__;
        });
    }
/**
    // StringsAreSorted reports whether the slice x is sorted in increasing order.
**/
function stringsAreSorted(_x:Slice<GoString>):Bool {
        return isSorted({
            final __self__ = new StringSlice_wrapper(((_x : StringSlice)));
            __self__.len = #if !macro function():GoInt return ((_x : StringSlice)).len() #else null #end;
            __self__.less = #if !macro function(_i_:GoInt, _j_:GoInt):Bool return ((_x : StringSlice)).less(_i_, _j_) #else null #end;
            __self__.search = #if !macro function(_x_:GoString):GoInt return ((_x : StringSlice)).search(_x_) #else null #end;
            __self__.sort = #if !macro function():Void ((_x : StringSlice)).sort() #else null #end;
            __self__.swap = #if !macro function(_i__:GoInt, _j__:GoInt):Void ((_x : StringSlice)).swap(_i__, _j__) #else null #end;
            __self__;
        });
    }
/**
    // Stable sorts data in ascending order as determined by the Less method,
    // while keeping the original order of equal elements.
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
/**
    // Auto-generated variant of sort.go:insertionSort
**/
function _insertionSort_func(_data:T_lessSwap, _a:GoInt, _b:GoInt):Void {
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
    // Auto-generated variant of sort.go:siftDown
**/
function _siftDown_func(_data:T_lessSwap, _lo:GoInt, _hi:GoInt, _first:GoInt):Void {
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
/**
    // Auto-generated variant of sort.go:heapSort
**/
function _heapSort_func(_data:T_lessSwap, _a:GoInt, _b:GoInt):Void {
        var _first:GoInt = _a;
        var _lo:GoInt = ((0 : GoInt));
        var _hi:GoInt = _b - _a;
        {
            var _i:GoInt = (_hi - ((1 : GoInt))) / ((2 : GoInt));
            Go.cfor(_i >= ((0 : GoInt)), _i--, {
                _siftDown_func((_data == null ? null : _data.__copy__()), _i, _hi, _first);
            });
        };
        {
            var _i:GoInt = _hi - ((1 : GoInt));
            Go.cfor(_i >= ((0 : GoInt)), _i--, {
                _data.swap(_first, _first + _i);
                _siftDown_func((_data == null ? null : _data.__copy__()), _lo, _i, _first);
            });
        };
    }
/**
    // Auto-generated variant of sort.go:medianOfThree
**/
function _medianOfThree_func(_data:T_lessSwap, _m1:GoInt, _m0:GoInt, _m2:GoInt):Void {
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
/**
    // Auto-generated variant of sort.go:swapRange
**/
function _swapRange_func(_data:T_lessSwap, _a:GoInt, _b:GoInt, _n:GoInt):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _n, _i++, {
                _data.swap(_a + _i, _b + _i);
            });
        };
    }
/**
    // Auto-generated variant of sort.go:doPivot
**/
function _doPivot_func(_data:T_lessSwap, _lo:GoInt, _hi:GoInt):{ var _0 : GoInt; var _1 : GoInt; } {
        var _midlo:GoInt = ((0 : GoInt)), _midhi:GoInt = ((0 : GoInt));
        var _m:GoInt = ((((((_lo + _hi) : GoUInt)) >> ((1 : GoUnTypedInt))) : GoInt));
        if ((_hi - _lo) > ((40 : GoInt))) {
            var _s:GoInt = (_hi - _lo) / ((8 : GoInt));
            _medianOfThree_func((_data == null ? null : _data.__copy__()), _lo, _lo + _s, _lo + (((2 : GoInt)) * _s));
            _medianOfThree_func((_data == null ? null : _data.__copy__()), _m, _m - _s, _m + _s);
            _medianOfThree_func((_data == null ? null : _data.__copy__()), _hi - ((1 : GoInt)), (_hi - ((1 : GoInt))) - _s, (_hi - ((1 : GoInt))) - (((2 : GoInt)) * _s));
        };
        _medianOfThree_func((_data == null ? null : _data.__copy__()), _lo, _m, _hi - ((1 : GoInt)));
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
        return { _0 : _b - ((1 : GoInt)), _1 : _c };
    }
/**
    // Auto-generated variant of sort.go:quickSort
**/
function _quickSort_func(_data:T_lessSwap, _a:GoInt, _b:GoInt, _maxDepth:GoInt):Void {
        while ((_b - _a) > ((12 : GoInt))) {
            if (_maxDepth == ((0 : GoInt))) {
                _heapSort_func((_data == null ? null : _data.__copy__()), _a, _b);
                return;
            };
            _maxDepth--;
            var __tmp__ = _doPivot_func((_data == null ? null : _data.__copy__()), _a, _b), _mlo:GoInt = __tmp__._0, _mhi:GoInt = __tmp__._1;
            if ((_mlo - _a) < (_b - _mhi)) {
                _quickSort_func((_data == null ? null : _data.__copy__()), _a, _mlo, _maxDepth);
                _a = _mhi;
            } else {
                _quickSort_func((_data == null ? null : _data.__copy__()), _mhi, _b, _maxDepth);
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
            _insertionSort_func((_data == null ? null : _data.__copy__()), _a, _b);
        };
    }
/**
    // Auto-generated variant of sort.go:stable
**/
function _stable_func(_data:T_lessSwap, _n:GoInt):Void {
        var _blockSize:GoInt = ((20 : GoInt));
        var _a:GoInt = ((0 : GoInt)), _b:GoInt = _blockSize;
        while (_b <= _n) {
            _insertionSort_func((_data == null ? null : _data.__copy__()), _a, _b);
            _a = _b;
            _b = _b + (_blockSize);
        };
        _insertionSort_func((_data == null ? null : _data.__copy__()), _a, _n);
        while (_blockSize < _n) {
            {
                final __tmp__0 = ((0 : GoInt));
                final __tmp__1 = ((2 : GoInt)) * _blockSize;
                _a = __tmp__0;
                _b = __tmp__1;
            };
            while (_b <= _n) {
                _symMerge_func((_data == null ? null : _data.__copy__()), _a, _a + _blockSize, _b);
                _a = _b;
                _b = _b + (((2 : GoInt)) * _blockSize);
            };
            {
                var _m:GoInt = _a + _blockSize;
                if (_m < _n) {
                    _symMerge_func((_data == null ? null : _data.__copy__()), _a, _m, _n);
                };
            };
            _blockSize = _blockSize * (((2 : GoInt)));
        };
    }
/**
    // Auto-generated variant of sort.go:symMerge
**/
function _symMerge_func(_data:T_lessSwap, _a:GoInt, _m:GoInt, _b:GoInt):Void {
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
            _rotate_func((_data == null ? null : _data.__copy__()), _start, _m, _end);
        };
        if ((_a < _start) && (_start < _mid)) {
            _symMerge_func((_data == null ? null : _data.__copy__()), _a, _start, _mid);
        };
        if ((_mid < _end) && (_end < _b)) {
            _symMerge_func((_data == null ? null : _data.__copy__()), _mid, _end, _b);
        };
    }
/**
    // Auto-generated variant of sort.go:rotate
**/
function _rotate_func(_data:T_lessSwap, _a:GoInt, _m:GoInt, _b:GoInt):Void {
        var _i:GoInt = _m - _a;
        var _j:GoInt = _b - _m;
        while (_i != _j) {
            if (_i > _j) {
                _swapRange_func((_data == null ? null : _data.__copy__()), _m - _i, _m, _j);
                _i = _i - (_j);
            } else {
                _swapRange_func((_data == null ? null : _data.__copy__()), _m - _i, (_m + _j) - _i, _i);
                _j = _j - (_i);
            };
        };
        _swapRange_func((_data == null ? null : _data.__copy__()), _m - _i, _m, _i);
    }
@:keep class T_reverse_static_extension {
    /**
        // Less returns the opposite of the embedded implementation's Less method.
    **/
    @:keep
    static public function less( _r:T_reverse, _i:GoInt, _j:GoInt):Bool {
        return _r.interface_.less(_j, _i);
    }
    @:embedded
    public static function swap( __self__:T_reverse, _i_:GoInt, _j_:GoInt) __self__.swap(_i_, _j_);
    @:embedded
    public static function len( __self__:T_reverse):GoInt return __self__.len();
}
class T_reverse_wrapper {
    /**
        // Less returns the opposite of the embedded implementation's Less method.
    **/
    @:keep
    public var less : (GoInt, GoInt) -> Bool = null;
    @:embedded
    public var swap : (GoInt, GoInt) -> Void = null;
    @:embedded
    public var len : () -> GoInt = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_reverse;
}
@:keep class IntSlice_static_extension {
    /**
        // Sort is a convenience method: x.Sort() calls Sort(x).
    **/
    @:keep
    static public function sort( _x:IntSlice):Void {
        stdgo.sort.Sort.sort({
            final __self__ = new IntSlice_wrapper(_x);
            __self__.len = #if !macro function():GoInt return _x.len() #else null #end;
            __self__.less = #if !macro function(_i_:GoInt, _j_:GoInt):Bool return _x.less(_i_, _j_) #else null #end;
            __self__.search = #if !macro function(_x_:GoInt):GoInt return _x.search(_x_) #else null #end;
            __self__.sort = #if !macro function():Void _x.sort() #else null #end;
            __self__.swap = #if !macro function(_i__:GoInt, _j__:GoInt):Void _x.swap(_i__, _j__) #else null #end;
            __self__;
        });
    }
    @:keep
    static public function swap( _x:IntSlice, _i:GoInt, _j:GoInt):Void {
        {
            final __tmp__0 = (_x != null ? _x[_j] : ((0 : GoInt)));
            final __tmp__1 = (_x != null ? _x[_i] : ((0 : GoInt)));
            if (_x != null) _x[_i] = __tmp__0;
            if (_x != null) _x[_j] = __tmp__1;
        };
    }
    @:keep
    static public function less( _x:IntSlice, _i:GoInt, _j:GoInt):Bool {
        return (_x != null ? _x[_i] : ((0 : GoInt))) < (_x != null ? _x[_j] : ((0 : GoInt)));
    }
    @:keep
    static public function len( _x:IntSlice):GoInt {
        return (_x != null ? _x.length : ((0 : GoInt)));
    }
    /**
        // Search returns the result of applying SearchInts to the receiver and x.
    **/
    @:keep
    static public function search( _p:IntSlice, _x:GoInt):GoInt {
        return searchInts(_p, _x);
    }
}
class IntSlice_wrapper {
    /**
        // Sort is a convenience method: x.Sort() calls Sort(x).
    **/
    @:keep
    public var sort : () -> Void = null;
    @:keep
    public var swap : (GoInt, GoInt) -> Void = null;
    @:keep
    public var less : (GoInt, GoInt) -> Bool = null;
    @:keep
    public var len : () -> GoInt = null;
    /**
        // Search returns the result of applying SearchInts to the receiver and x.
    **/
    @:keep
    public var search : GoInt -> GoInt = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : IntSlice;
}
@:keep class Float64Slice_static_extension {
    /**
        // Sort is a convenience method: x.Sort() calls Sort(x).
    **/
    @:keep
    static public function sort( _x:Float64Slice):Void {
        stdgo.sort.Sort.sort({
            final __self__ = new Float64Slice_wrapper(_x);
            __self__.len = #if !macro function():GoInt return _x.len() #else null #end;
            __self__.less = #if !macro function(_i_:GoInt, _j_:GoInt):Bool return _x.less(_i_, _j_) #else null #end;
            __self__.search = #if !macro function(_x_:GoFloat64):GoInt return _x.search(_x_) #else null #end;
            __self__.sort = #if !macro function():Void _x.sort() #else null #end;
            __self__.swap = #if !macro function(_i__:GoInt, _j__:GoInt):Void _x.swap(_i__, _j__) #else null #end;
            __self__;
        });
    }
    @:keep
    static public function swap( _x:Float64Slice, _i:GoInt, _j:GoInt):Void {
        {
            final __tmp__0 = (_x != null ? _x[_j] : ((0 : GoFloat64)));
            final __tmp__1 = (_x != null ? _x[_i] : ((0 : GoFloat64)));
            if (_x != null) _x[_i] = __tmp__0;
            if (_x != null) _x[_j] = __tmp__1;
        };
    }
    /**
        // Less reports whether x[i] should be ordered before x[j], as required by the sort Interface.
        // Note that floating-point comparison by itself is not a transitive relation: it does not
        // report a consistent ordering for not-a-number (NaN) values.
        // This implementation of Less places NaN values before any others, by using:
        //
        //	x[i] < x[j] || (math.IsNaN(x[i]) && !math.IsNaN(x[j]))
        //
    **/
    @:keep
    static public function less( _x:Float64Slice, _i:GoInt, _j:GoInt):Bool {
        return ((_x != null ? _x[_i] : ((0 : GoFloat64))) < (_x != null ? _x[_j] : ((0 : GoFloat64)))) || (_isNaN((_x != null ? _x[_i] : ((0 : GoFloat64)))) && !_isNaN((_x != null ? _x[_j] : ((0 : GoFloat64)))));
    }
    @:keep
    static public function len( _x:Float64Slice):GoInt {
        return (_x != null ? _x.length : ((0 : GoInt)));
    }
    /**
        // Search returns the result of applying SearchFloat64s to the receiver and x.
    **/
    @:keep
    static public function search( _p:Float64Slice, _x:GoFloat64):GoInt {
        return searchFloat64s(_p, _x);
    }
}
class Float64Slice_wrapper {
    /**
        // Sort is a convenience method: x.Sort() calls Sort(x).
    **/
    @:keep
    public var sort : () -> Void = null;
    @:keep
    public var swap : (GoInt, GoInt) -> Void = null;
    /**
        // Less reports whether x[i] should be ordered before x[j], as required by the sort Interface.
        // Note that floating-point comparison by itself is not a transitive relation: it does not
        // report a consistent ordering for not-a-number (NaN) values.
        // This implementation of Less places NaN values before any others, by using:
        //
        //	x[i] < x[j] || (math.IsNaN(x[i]) && !math.IsNaN(x[j]))
        //
    **/
    @:keep
    public var less : (GoInt, GoInt) -> Bool = null;
    @:keep
    public var len : () -> GoInt = null;
    /**
        // Search returns the result of applying SearchFloat64s to the receiver and x.
    **/
    @:keep
    public var search : GoFloat64 -> GoInt = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : Float64Slice;
}
@:keep class StringSlice_static_extension {
    /**
        // Sort is a convenience method: x.Sort() calls Sort(x).
    **/
    @:keep
    static public function sort( _x:StringSlice):Void {
        stdgo.sort.Sort.sort({
            final __self__ = new StringSlice_wrapper(_x);
            __self__.len = #if !macro function():GoInt return _x.len() #else null #end;
            __self__.less = #if !macro function(_i_:GoInt, _j_:GoInt):Bool return _x.less(_i_, _j_) #else null #end;
            __self__.search = #if !macro function(_x_:GoString):GoInt return _x.search(_x_) #else null #end;
            __self__.sort = #if !macro function():Void _x.sort() #else null #end;
            __self__.swap = #if !macro function(_i__:GoInt, _j__:GoInt):Void _x.swap(_i__, _j__) #else null #end;
            __self__;
        });
    }
    @:keep
    static public function swap( _x:StringSlice, _i:GoInt, _j:GoInt):Void {
        {
            final __tmp__0 = (_x != null ? _x[_j] : (("" : GoString)));
            final __tmp__1 = (_x != null ? _x[_i] : (("" : GoString)));
            if (_x != null) _x[_i] = __tmp__0;
            if (_x != null) _x[_j] = __tmp__1;
        };
    }
    @:keep
    static public function less( _x:StringSlice, _i:GoInt, _j:GoInt):Bool {
        return (_x != null ? _x[_i] : (("" : GoString))) < (_x != null ? _x[_j] : (("" : GoString)));
    }
    @:keep
    static public function len( _x:StringSlice):GoInt {
        return (_x != null ? _x.length : ((0 : GoInt)));
    }
    /**
        // Search returns the result of applying SearchStrings to the receiver and x.
    **/
    @:keep
    static public function search( _p:StringSlice, _x:GoString):GoInt {
        return searchStrings(_p, _x);
    }
}
class StringSlice_wrapper {
    /**
        // Sort is a convenience method: x.Sort() calls Sort(x).
    **/
    @:keep
    public var sort : () -> Void = null;
    @:keep
    public var swap : (GoInt, GoInt) -> Void = null;
    @:keep
    public var less : (GoInt, GoInt) -> Bool = null;
    @:keep
    public var len : () -> GoInt = null;
    /**
        // Search returns the result of applying SearchStrings to the receiver and x.
    **/
    @:keep
    public var search : GoString -> GoInt = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : StringSlice;
}

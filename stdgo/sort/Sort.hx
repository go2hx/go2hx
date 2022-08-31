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
    public var interface_ : Interface = (null : Interface);
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
@:named typedef T_sortedHint = GoInt;
@:named @:using(stdgo.sort.Sort.T_xorshift_static_extension) typedef T_xorshift = GoUInt64;
@:named @:using(stdgo.sort.Sort.IntSlice_static_extension) typedef IntSlice = Slice<GoInt>;
@:named @:using(stdgo.sort.Sort.Float64Slice_static_extension) typedef Float64Slice = Slice<GoFloat64>;
@:named @:using(stdgo.sort.Sort.StringSlice_static_extension) typedef StringSlice = Slice<GoString>;
function heapsort(_data:Interface):Void {
        _heapSort(_data, (0 : GoInt), _data.len());
    }
function reverseRange(_data:Interface, _a:GoInt, _b:GoInt):Void {
        _reverseRange(_data, _a, _b);
    }
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
**/
function search(_n:GoInt, _f:GoInt -> Bool):GoInt {
        var _i:GoInt = (0 : GoInt), _j:GoInt = _n;
        while (_i < _j) {
            var _h:GoInt = ((_i + _j : GoUInt) >> (1 : GoUnTypedInt) : GoInt);
            if (!_f(_h)) {
                _i = _h + (1 : GoInt);
            } else {
                _j = _h;
            };
        };
        return _i;
    }
/**
    // Find uses binary search to find and return the smallest index i in [0, n)
    // at which cmp(i) <= 0. If there is no such index i, Find returns i = n.
    // The found result is true if i < n and cmp(i) == 0.
    // Find calls cmp(i) only for i in the range [0, n).
    //
    // To permit binary search, Find requires that cmp(i) > 0 for a leading
    // prefix of the range, cmp(i) == 0 in the middle, and cmp(i) < 0 for
    // the final suffix of the range. (Each subrange could be empty.)
    // The usual way to establish this condition is to interpret cmp(i)
    // as a comparison of a desired target value t against entry i in an
    // underlying indexed data structure x, returning <0, 0, and >0
    // when t < x[i], t == x[i], and t > x[i], respectively.
    //
    // For example, to look for a particular string in a sorted, random-access
    // list of strings:
    //
    //	i, found := sort.Find(x.Len(), func(i int) int {
    //	    return strings.Compare(target, x.At(i))
    //	})
    //	if found {
    //	    fmt.Printf("found %s at entry %d\n", target, i)
    //	} else {
    //	    fmt.Printf("%s not found, would insert at %d", target, i)
    //	}
**/
function find(_n:GoInt, _cmp:GoInt -> GoInt):{ var _0 : GoInt; var _1 : Bool; } {
        var _i:GoInt = (0 : GoInt), _found:Bool = false;
        var _i:GoInt = (0 : GoInt), _j:GoInt = _n;
        while (_i < _j) {
            var _h:GoInt = ((_i + _j : GoUInt) >> (1 : GoUnTypedInt) : GoInt);
            if (_cmp(_h) > (0 : GoInt)) {
                _i = _h + (1 : GoInt);
            } else {
                _j = _h;
            };
        };
        return { _0 : _i, _1 : (_i < _n) && (_cmp(_i) == (0 : GoInt)) };
    }
/**
    // SearchInts searches for x in a sorted slice of ints and returns the index
    // as specified by Search. The return value is the index to insert x if x is
    // not present (it could be len(a)).
    // The slice must be sorted in ascending order.
**/
function searchInts(_a:Slice<GoInt>, _x:GoInt):GoInt {
        return search((_a.length), function(_i:GoInt):Bool {
            return _a[_i] >= _x;
        });
    }
/**
    // SearchFloat64s searches for x in a sorted slice of float64s and returns the index
    // as specified by Search. The return value is the index to insert x if x is not
    // present (it could be len(a)).
    // The slice must be sorted in ascending order.
**/
function searchFloat64s(_a:Slice<GoFloat64>, _x:GoFloat64):GoInt {
        return search((_a.length), function(_i:GoInt):Bool {
            return _a[_i] >= _x;
        });
    }
/**
    // SearchStrings searches for x in a sorted slice of strings and returns the index
    // as specified by Search. The return value is the index to insert x if x is not
    // present (it could be len(a)).
    // The slice must be sorted in ascending order.
**/
function searchStrings(_a:Slice<GoString>, _x:GoString):GoInt {
        return search((_a.length), function(_i:GoInt):Bool {
            return _a[_i] >= _x;
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
        var _limit:GoInt = stdgo.math.bits.Bits.len((_length : GoUInt));
        _pdqsort_func((new T_lessSwap(_less, _swap) : T_lessSwap), (0 : GoInt), _length, _limit);
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
        _stable_func((new T_lessSwap(_less, _swap) : T_lessSwap), _rv.len());
    }
/**
    // SliceIsSorted reports whether the slice x is sorted according to the provided less function.
    // It panics if x is not a slice.
**/
function sliceIsSorted(_x:AnyInterface, _less:(_i:GoInt, _j:GoInt) -> Bool):Bool {
        var _rv:stdgo.internal.reflectlite.Reflectlite.Value = (_reflectValueOf(Go.toInterface(_x)) == null ? null : _reflectValueOf(Go.toInterface(_x)).__copy__());
        var _n:GoInt = _rv.len();
        {
            var _i:GoInt = _n - (1 : GoInt);
            Go.cfor(_i > (0 : GoInt), _i--, {
                if (_less(_i, _i - (1 : GoInt))) {
                    return false;
                };
            });
        };
        return true;
    }
/**
    // Sort sorts data in ascending order as determined by the Less method.
    // It makes one call to data.Len to determine n and O(n*log(n)) calls to
    // data.Less and data.Swap. The sort is not guaranteed to be stable.
**/
function sort(_data:Interface):Void {
        var _n:GoInt = _data.len();
        if (_n <= (1 : GoInt)) {
            return;
        };
        var _limit:GoInt = stdgo.math.bits.Bits.len((_n : GoUInt));
        _pdqsort(_data, (0 : GoInt), _n, _limit);
    }
function _nextPowerOfTwo(_length:GoInt):GoUInt {
        var _shift:GoUInt = (stdgo.math.bits.Bits.len((_length : GoUInt)) : GoUInt);
        return ((1 : GoUInt) << _shift : GoUInt);
    }
/**
    // Reverse returns the reverse order for data.
**/
function reverse(_data:Interface):Interface {
        return {
            final __self__ = new T_reverse_wrapper((new T_reverse(_data) : T_reverse));
            __self__.len = #if !macro function():GoInt return (new T_reverse(_data) : T_reverse).len() #else null #end;
            __self__.less = #if !macro function(_i_:GoInt, _j_:GoInt):Bool return (new T_reverse(_data) : T_reverse).less(_i_, _j_) #else null #end;
            __self__.swap = #if !macro function(_i__:GoInt, _j__:GoInt):Void (new T_reverse(_data) : T_reverse).swap(_i__, _j__) #else null #end;
            __self__;
        };
    }
/**
    // IsSorted reports whether data is sorted.
**/
function isSorted(_data:Interface):Bool {
        var _n:GoInt = _data.len();
        {
            var _i:GoInt = _n - (1 : GoInt);
            Go.cfor(_i > (0 : GoInt), _i--, {
                if (_data.less(_i, _i - (1 : GoInt))) {
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
            final __self__ = new IntSlice_wrapper((_x : IntSlice));
            __self__.len = #if !macro function():GoInt return (_x : IntSlice).len() #else null #end;
            __self__.less = #if !macro function(_i_:GoInt, _j_:GoInt):Bool return (_x : IntSlice).less(_i_, _j_) #else null #end;
            __self__.search = #if !macro function(__0:GoInt):GoInt return (_x : IntSlice).search(__0) #else null #end;
            __self__.sort = #if !macro function():Void (_x : IntSlice).sort() #else null #end;
            __self__.swap = #if !macro function(_i__:GoInt, _j__:GoInt):Void (_x : IntSlice).swap(_i__, _j__) #else null #end;
            __self__;
        });
    }
/**
    // Float64s sorts a slice of float64s in increasing order.
    // Not-a-number (NaN) values are ordered before other values.
**/
function float64s(_x:Slice<GoFloat64>):Void {
        sort({
            final __self__ = new Float64Slice_wrapper((_x : Float64Slice));
            __self__.len = #if !macro function():GoInt return (_x : Float64Slice).len() #else null #end;
            __self__.less = #if !macro function(_i_:GoInt, _j_:GoInt):Bool return (_x : Float64Slice).less(_i_, _j_) #else null #end;
            __self__.search = #if !macro function(_x_:GoFloat64):GoInt return (_x : Float64Slice).search(_x_) #else null #end;
            __self__.sort = #if !macro function():Void (_x : Float64Slice).sort() #else null #end;
            __self__.swap = #if !macro function(_i__:GoInt, _j__:GoInt):Void (_x : Float64Slice).swap(_i__, _j__) #else null #end;
            __self__;
        });
    }
/**
    // Strings sorts a slice of strings in increasing order.
**/
function strings(_x:Slice<GoString>):Void {
        sort({
            final __self__ = new StringSlice_wrapper((_x : StringSlice));
            __self__.len = #if !macro function():GoInt return (_x : StringSlice).len() #else null #end;
            __self__.less = #if !macro function(_i_:GoInt, _j_:GoInt):Bool return (_x : StringSlice).less(_i_, _j_) #else null #end;
            __self__.search = #if !macro function(_x_:GoString):GoInt return (_x : StringSlice).search(_x_) #else null #end;
            __self__.sort = #if !macro function():Void (_x : StringSlice).sort() #else null #end;
            __self__.swap = #if !macro function(_i__:GoInt, _j__:GoInt):Void (_x : StringSlice).swap(_i__, _j__) #else null #end;
            __self__;
        });
    }
/**
    // IntsAreSorted reports whether the slice x is sorted in increasing order.
**/
function intsAreSorted(_x:Slice<GoInt>):Bool {
        return isSorted({
            final __self__ = new IntSlice_wrapper((_x : IntSlice));
            __self__.len = #if !macro function():GoInt return (_x : IntSlice).len() #else null #end;
            __self__.less = #if !macro function(_i_:GoInt, _j_:GoInt):Bool return (_x : IntSlice).less(_i_, _j_) #else null #end;
            __self__.search = #if !macro function(__0:GoInt):GoInt return (_x : IntSlice).search(__0) #else null #end;
            __self__.sort = #if !macro function():Void (_x : IntSlice).sort() #else null #end;
            __self__.swap = #if !macro function(_i__:GoInt, _j__:GoInt):Void (_x : IntSlice).swap(_i__, _j__) #else null #end;
            __self__;
        });
    }
/**
    // Float64sAreSorted reports whether the slice x is sorted in increasing order,
    // with not-a-number (NaN) values before any other values.
**/
function float64sAreSorted(_x:Slice<GoFloat64>):Bool {
        return isSorted({
            final __self__ = new Float64Slice_wrapper((_x : Float64Slice));
            __self__.len = #if !macro function():GoInt return (_x : Float64Slice).len() #else null #end;
            __self__.less = #if !macro function(_i_:GoInt, _j_:GoInt):Bool return (_x : Float64Slice).less(_i_, _j_) #else null #end;
            __self__.search = #if !macro function(_x_:GoFloat64):GoInt return (_x : Float64Slice).search(_x_) #else null #end;
            __self__.sort = #if !macro function():Void (_x : Float64Slice).sort() #else null #end;
            __self__.swap = #if !macro function(_i__:GoInt, _j__:GoInt):Void (_x : Float64Slice).swap(_i__, _j__) #else null #end;
            __self__;
        });
    }
/**
    // StringsAreSorted reports whether the slice x is sorted in increasing order.
**/
function stringsAreSorted(_x:Slice<GoString>):Bool {
        return isSorted({
            final __self__ = new StringSlice_wrapper((_x : StringSlice));
            __self__.len = #if !macro function():GoInt return (_x : StringSlice).len() #else null #end;
            __self__.less = #if !macro function(_i_:GoInt, _j_:GoInt):Bool return (_x : StringSlice).less(_i_, _j_) #else null #end;
            __self__.search = #if !macro function(_x_:GoString):GoInt return (_x : StringSlice).search(_x_) #else null #end;
            __self__.sort = #if !macro function():Void (_x : StringSlice).sort() #else null #end;
            __self__.swap = #if !macro function(_i__:GoInt, _j__:GoInt):Void (_x : StringSlice).swap(_i__, _j__) #else null #end;
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
/**
    // insertionSort_func sorts data[a:b] using insertion sort.
**/
function _insertionSort_func(_data:T_lessSwap, _a:GoInt, _b:GoInt):Void {
        {
            var _i:GoInt = _a + (1 : GoInt);
            Go.cfor(_i < _b, _i++, {
                {
                    var _j:GoInt = _i;
                    Go.cfor((_j > _a) && _data.less(_j, _j - (1 : GoInt)), _j--, {
                        _data.swap(_j, _j - (1 : GoInt));
                    });
                };
            });
        };
    }
/**
    // siftDown_func implements the heap property on data[lo:hi].
    // first is an offset into the array where the root of the heap lies.
**/
function _siftDown_func(_data:T_lessSwap, _lo:GoInt, _hi:GoInt, _first:GoInt):Void {
        var _root:GoInt = _lo;
        while (true) {
            var _child:GoInt = ((2 : GoInt) * _root) + (1 : GoInt);
            if (_child >= _hi) {
                break;
            };
            if ((_child + (1 : GoInt) < _hi) && _data.less(_first + _child, (_first + _child) + (1 : GoInt))) {
                _child++;
            };
            if (!_data.less(_first + _root, _first + _child)) {
                return;
            };
            _data.swap(_first + _root, _first + _child);
            _root = _child;
        };
    }
function _heapSort_func(_data:T_lessSwap, _a:GoInt, _b:GoInt):Void {
        var _first:GoInt = _a;
        var _lo:GoInt = (0 : GoInt);
        var _hi:GoInt = _b - _a;
        {
            var _i:GoInt = (_hi - (1 : GoInt)) / (2 : GoInt);
            Go.cfor(_i >= (0 : GoInt), _i--, {
                _siftDown_func((_data == null ? null : _data.__copy__()), _i, _hi, _first);
            });
        };
        {
            var _i:GoInt = _hi - (1 : GoInt);
            Go.cfor(_i >= (0 : GoInt), _i--, {
                _data.swap(_first, _first + _i);
                _siftDown_func((_data == null ? null : _data.__copy__()), _lo, _i, _first);
            });
        };
    }
/**
    // pdqsort_func sorts data[a:b].
    // The algorithm based on pattern-defeating quicksort(pdqsort), but without the optimizations from BlockQuicksort.
    // pdqsort paper: https://arxiv.org/pdf/2106.05123.pdf
    // C++ implementation: https://github.com/orlp/pdqsort
    // Rust implementation: https://docs.rs/pdqsort/latest/pdqsort/
    // limit is the number of allowed bad (very unbalanced) pivots before falling back to heapsort.
**/
function _pdqsort_func(_data:T_lessSwap, _a:GoInt, _b:GoInt, _limit:GoInt):Void {
        {};
        var _wasBalanced:Bool = true, _wasPartitioned:Bool = true;
        while (true) {
            var _length:GoInt = _b - _a;
            if (_length <= (12 : GoInt)) {
                _insertionSort_func((_data == null ? null : _data.__copy__()), _a, _b);
                return;
            };
            if (_limit == (0 : GoInt)) {
                _heapSort_func((_data == null ? null : _data.__copy__()), _a, _b);
                return;
            };
            if (!_wasBalanced) {
                _breakPatterns_func((_data == null ? null : _data.__copy__()), _a, _b);
                _limit--;
            };
            var __tmp__ = _choosePivot_func((_data == null ? null : _data.__copy__()), _a, _b), _pivot:GoInt = __tmp__._0, _hint:T_sortedHint = __tmp__._1;
            if (_hint == (2 : T_sortedHint)) {
                _reverseRange_func((_data == null ? null : _data.__copy__()), _a, _b);
                _pivot = (_b - (1 : GoInt)) - (_pivot - _a);
                _hint = (1 : T_sortedHint);
            };
            if ((_wasBalanced && _wasPartitioned) && (_hint == (1 : T_sortedHint))) {
                if (_partialInsertionSort_func((_data == null ? null : _data.__copy__()), _a, _b)) {
                    return;
                };
            };
            if ((_a > (0 : GoInt)) && !_data.less(_a - (1 : GoInt), _pivot)) {
                var _mid:GoInt = _partitionEqual_func((_data == null ? null : _data.__copy__()), _a, _b, _pivot);
                _a = _mid;
                continue;
            };
            var __tmp__ = _partition_func((_data == null ? null : _data.__copy__()), _a, _b, _pivot), _mid:GoInt = __tmp__._0, _alreadyPartitioned:Bool = __tmp__._1;
            _wasPartitioned = _alreadyPartitioned;
            var _leftLen:GoInt = _mid - _a, _rightLen:GoInt = _b - _mid;
            var _balanceThreshold:GoInt = _length / (8 : GoInt);
            if (_leftLen < _rightLen) {
                _wasBalanced = _leftLen >= _balanceThreshold;
                _pdqsort_func((_data == null ? null : _data.__copy__()), _a, _mid, _limit);
                _a = _mid + (1 : GoInt);
            } else {
                _wasBalanced = _rightLen >= _balanceThreshold;
                _pdqsort_func((_data == null ? null : _data.__copy__()), _mid + (1 : GoInt), _b, _limit);
                _b = _mid;
            };
        };
    }
/**
    // partition_func does one quicksort partition.
    // Let p = data[pivot]
    // Moves elements in data[a:b] around, so that data[i]<p and data[j]>=p for i<newpivot and j>newpivot.
    // On return, data[newpivot] = p
**/
function _partition_func(_data:T_lessSwap, _a:GoInt, _b:GoInt, _pivot:GoInt):{ var _0 : GoInt; var _1 : Bool; } {
        var _newpivot:GoInt = (0 : GoInt), _alreadyPartitioned:Bool = false;
        _data.swap(_a, _pivot);
        var _i:GoInt = _a + (1 : GoInt), _j:GoInt = _b - (1 : GoInt);
        while ((_i <= _j) && _data.less(_i, _a)) {
            _i++;
        };
        while ((_i <= _j) && !_data.less(_j, _a)) {
            _j--;
        };
        if (_i > _j) {
            _data.swap(_j, _a);
            return { _0 : _j, _1 : true };
        };
        _data.swap(_i, _j);
        _i++;
        _j--;
        while (true) {
            while ((_i <= _j) && _data.less(_i, _a)) {
                _i++;
            };
            while ((_i <= _j) && !_data.less(_j, _a)) {
                _j--;
            };
            if (_i > _j) {
                break;
            };
            _data.swap(_i, _j);
            _i++;
            _j--;
        };
        _data.swap(_j, _a);
        return { _0 : _j, _1 : false };
    }
/**
    // partitionEqual_func partitions data[a:b] into elements equal to data[pivot] followed by elements greater than data[pivot].
    // It assumed that data[a:b] does not contain elements smaller than the data[pivot].
**/
function _partitionEqual_func(_data:T_lessSwap, _a:GoInt, _b:GoInt, _pivot:GoInt):GoInt {
        var _newpivot:GoInt = (0 : GoInt);
        _data.swap(_a, _pivot);
        var _i:GoInt = _a + (1 : GoInt), _j:GoInt = _b - (1 : GoInt);
        while (true) {
            while ((_i <= _j) && !_data.less(_a, _i)) {
                _i++;
            };
            while ((_i <= _j) && _data.less(_a, _j)) {
                _j--;
            };
            if (_i > _j) {
                break;
            };
            _data.swap(_i, _j);
            _i++;
            _j--;
        };
        return _i;
    }
/**
    // partialInsertionSort_func partially sorts a slice, returns true if the slice is sorted at the end.
**/
function _partialInsertionSort_func(_data:T_lessSwap, _a:GoInt, _b:GoInt):Bool {
        {};
        var _i:GoInt = _a + (1 : GoInt);
        {
            var _j:GoInt = (0 : GoInt);
            Go.cfor(_j < (5 : GoInt), _j++, {
                while ((_i < _b) && !_data.less(_i, _i - (1 : GoInt))) {
                    _i++;
                };
                if (_i == _b) {
                    return true;
                };
                if ((_b - _a) < (50 : GoInt)) {
                    return false;
                };
                _data.swap(_i, _i - (1 : GoInt));
                if ((_i - _a) >= (2 : GoInt)) {
                    {
                        var _j:GoInt = _i - (1 : GoInt);
                        Go.cfor(_j >= (1 : GoInt), _j--, {
                            if (!_data.less(_j, _j - (1 : GoInt))) {
                                break;
                            };
                            _data.swap(_j, _j - (1 : GoInt));
                        });
                    };
                };
                if ((_b - _i) >= (2 : GoInt)) {
                    {
                        var _j:GoInt = _i + (1 : GoInt);
                        Go.cfor(_j < _b, _j++, {
                            if (!_data.less(_j, _j - (1 : GoInt))) {
                                break;
                            };
                            _data.swap(_j, _j - (1 : GoInt));
                        });
                    };
                };
            });
        };
        return false;
    }
/**
    // breakPatterns_func scatters some elements around in an attempt to break some patterns
    // that might cause imbalanced partitions in quicksort.
**/
function _breakPatterns_func(_data:T_lessSwap, _a:GoInt, _b:GoInt):Void {
        var _length:GoInt = _b - _a;
        if (_length >= (8 : GoInt)) {
            var _random:T_xorshift = (_length : T_xorshift);
            var _modulus:GoUInt = _nextPowerOfTwo(_length);
            {
                var _idx:GoInt = (_a + (_length / (4 : GoInt)) * (2 : GoInt)) - (1 : GoInt);
                Go.cfor(_idx <= (_a + (_length / (4 : GoInt) * (2 : GoInt)) + (1 : GoInt)), _idx++, {
                    var _other:GoInt = ((_random.next(Go.pointer(_random)) : GoUInt) & (_modulus - (1 : GoUInt)) : GoInt);
                    if (_other >= _length) {
                        _other = _other - (_length);
                    };
                    _data.swap(_idx, _a + _other);
                });
            };
        };
    }
/**
    // choosePivot_func chooses a pivot in data[a:b].
    //
    // [0,8): chooses a static pivot.
    // [8,shortestNinther): uses the simple median-of-three method.
    // [shortestNinther,∞): uses the Tukey ninther method.
**/
function _choosePivot_func(_data:T_lessSwap, _a:GoInt, _b:GoInt):{ var _0 : GoInt; var _1 : T_sortedHint; } {
        var _pivot:GoInt = (0 : GoInt), _hint:T_sortedHint = ((0 : GoInt) : T_sortedHint);
        {};
        var _l:GoInt = _b - _a;
        var _swaps:GoInt = (0 : GoInt), _i:GoInt = _a + (_l / (4 : GoInt) * (1 : GoInt)), _j:GoInt = _a + (_l / (4 : GoInt) * (2 : GoInt)), _k:GoInt = _a + (_l / (4 : GoInt) * (3 : GoInt));
        if (_l >= (8 : GoInt)) {
            if (_l >= (50 : GoInt)) {
                _i = _medianAdjacent_func((_data == null ? null : _data.__copy__()), _i, Go.pointer(_swaps));
                _j = _medianAdjacent_func((_data == null ? null : _data.__copy__()), _j, Go.pointer(_swaps));
                _k = _medianAdjacent_func((_data == null ? null : _data.__copy__()), _k, Go.pointer(_swaps));
            };
            _j = _median_func((_data == null ? null : _data.__copy__()), _i, _j, _k, Go.pointer(_swaps));
        };
        if (_swaps == (0 : GoInt)) {
            return { _0 : _j, _1 : (1 : T_sortedHint) };
        } else if (_swaps == (12 : GoInt)) {
            return { _0 : _j, _1 : (2 : T_sortedHint) };
        } else {
            return { _0 : _j, _1 : (0 : T_sortedHint) };
        };
    }
/**
    // order2_func returns x,y where data[x] <= data[y], where x,y=a,b or x,y=b,a.
**/
function _order2_func(_data:T_lessSwap, _a:GoInt, _b:GoInt, _swaps:Pointer<GoInt>):{ var _0 : GoInt; var _1 : GoInt; } {
        if (_data.less(_b, _a)) {
            _swaps.value++;
            return { _0 : _b, _1 : _a };
        };
        return { _0 : _a, _1 : _b };
    }
/**
    // median_func returns x where data[x] is the median of data[a],data[b],data[c], where x is a, b, or c.
**/
function _median_func(_data:T_lessSwap, _a:GoInt, _b:GoInt, _c:GoInt, _swaps:Pointer<GoInt>):GoInt {
        {
            var __tmp__ = _order2_func((_data == null ? null : _data.__copy__()), _a, _b, _swaps);
            _a = __tmp__._0;
            _b = __tmp__._1;
        };
        {
            var __tmp__ = _order2_func((_data == null ? null : _data.__copy__()), _b, _c, _swaps);
            _b = __tmp__._0;
            _c = __tmp__._1;
        };
        {
            var __tmp__ = _order2_func((_data == null ? null : _data.__copy__()), _a, _b, _swaps);
            _a = __tmp__._0;
            _b = __tmp__._1;
        };
        return _b;
    }
/**
    // medianAdjacent_func finds the median of data[a - 1], data[a], data[a + 1] and stores the index into a.
**/
function _medianAdjacent_func(_data:T_lessSwap, _a:GoInt, _swaps:Pointer<GoInt>):GoInt {
        return _median_func((_data == null ? null : _data.__copy__()), _a - (1 : GoInt), _a, _a + (1 : GoInt), _swaps);
    }
function _reverseRange_func(_data:T_lessSwap, _a:GoInt, _b:GoInt):Void {
        var _i:GoInt = _a;
        var _j:GoInt = _b - (1 : GoInt);
        while (_i < _j) {
            _data.swap(_i, _j);
            _i++;
            _j--;
        };
    }
function _swapRange_func(_data:T_lessSwap, _a:GoInt, _b:GoInt, _n:GoInt):Void {
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _n, _i++, {
                _data.swap(_a + _i, _b + _i);
            });
        };
    }
function _stable_func(_data:T_lessSwap, _n:GoInt):Void {
        var _blockSize:GoInt = (20 : GoInt);
        var _a:GoInt = (0 : GoInt), _b:GoInt = _blockSize;
        while (_b <= _n) {
            _insertionSort_func((_data == null ? null : _data.__copy__()), _a, _b);
            _a = _b;
            _b = _b + (_blockSize);
        };
        _insertionSort_func((_data == null ? null : _data.__copy__()), _a, _n);
        while (_blockSize < _n) {
            {
                final __tmp__0 = (0 : GoInt);
                final __tmp__1 = (2 : GoInt) * _blockSize;
                _a = __tmp__0;
                _b = __tmp__1;
            };
            while (_b <= _n) {
                _symMerge_func((_data == null ? null : _data.__copy__()), _a, _a + _blockSize, _b);
                _a = _b;
                _b = _b + ((2 : GoInt) * _blockSize);
            };
            {
                var _m:GoInt = _a + _blockSize;
                if (_m < _n) {
                    _symMerge_func((_data == null ? null : _data.__copy__()), _a, _m, _n);
                };
            };
            _blockSize = _blockSize * ((2 : GoInt));
        };
    }
/**
    // symMerge_func merges the two sorted subsequences data[a:m] and data[m:b] using
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
function _symMerge_func(_data:T_lessSwap, _a:GoInt, _m:GoInt, _b:GoInt):Void {
        if ((_m - _a) == (1 : GoInt)) {
            var _i:GoInt = _m;
            var _j:GoInt = _b;
            while (_i < _j) {
                var _h:GoInt = ((_i + _j : GoUInt) >> (1 : GoUnTypedInt) : GoInt);
                if (_data.less(_h, _a)) {
                    _i = _h + (1 : GoInt);
                } else {
                    _j = _h;
                };
            };
            {
                var _k:GoInt = _a;
                Go.cfor(_k < (_i - (1 : GoInt)), _k++, {
                    _data.swap(_k, _k + (1 : GoInt));
                });
            };
            return;
        };
        if ((_b - _m) == (1 : GoInt)) {
            var _i:GoInt = _a;
            var _j:GoInt = _m;
            while (_i < _j) {
                var _h:GoInt = ((_i + _j : GoUInt) >> (1 : GoUnTypedInt) : GoInt);
                if (!_data.less(_m, _h)) {
                    _i = _h + (1 : GoInt);
                } else {
                    _j = _h;
                };
            };
            {
                var _k:GoInt = _m;
                Go.cfor(_k > _i, _k--, {
                    _data.swap(_k, _k - (1 : GoInt));
                });
            };
            return;
        };
        var _mid:GoInt = ((_a + _b : GoUInt) >> (1 : GoUnTypedInt) : GoInt);
        var _n:GoInt = _mid + _m;
        var _start:GoInt = (0 : GoInt), _r:GoInt = (0 : GoInt);
        if (_m > _mid) {
            _start = _n - _b;
            _r = _mid;
        } else {
            _start = _a;
            _r = _m;
        };
        var _p:GoInt = _n - (1 : GoInt);
        while (_start < _r) {
            var _c:GoInt = ((_start + _r : GoUInt) >> (1 : GoUnTypedInt) : GoInt);
            if (!_data.less(_p - _c, _c)) {
                _start = _c + (1 : GoInt);
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
    // rotate_func rotates two consecutive blocks u = data[a:m] and v = data[m:b] in data:
    // Data of the form 'x u v y' is changed to 'x v u y'.
    // rotate performs at most b-a many calls to data.Swap,
    // and it assumes non-degenerate arguments: a < m && m < b.
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
/**
    // insertionSort sorts data[a:b] using insertion sort.
**/
function _insertionSort(_data:Interface, _a:GoInt, _b:GoInt):Void {
        {
            var _i:GoInt = _a + (1 : GoInt);
            Go.cfor(_i < _b, _i++, {
                {
                    var _j:GoInt = _i;
                    Go.cfor((_j > _a) && _data.less(_j, _j - (1 : GoInt)), _j--, {
                        _data.swap(_j, _j - (1 : GoInt));
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
            var _child:GoInt = ((2 : GoInt) * _root) + (1 : GoInt);
            if (_child >= _hi) {
                break;
            };
            if ((_child + (1 : GoInt) < _hi) && _data.less(_first + _child, (_first + _child) + (1 : GoInt))) {
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
        var _lo:GoInt = (0 : GoInt);
        var _hi:GoInt = _b - _a;
        {
            var _i:GoInt = (_hi - (1 : GoInt)) / (2 : GoInt);
            Go.cfor(_i >= (0 : GoInt), _i--, {
                _siftDown(_data, _i, _hi, _first);
            });
        };
        {
            var _i:GoInt = _hi - (1 : GoInt);
            Go.cfor(_i >= (0 : GoInt), _i--, {
                _data.swap(_first, _first + _i);
                _siftDown(_data, _lo, _i, _first);
            });
        };
    }
/**
    // pdqsort sorts data[a:b].
    // The algorithm based on pattern-defeating quicksort(pdqsort), but without the optimizations from BlockQuicksort.
    // pdqsort paper: https://arxiv.org/pdf/2106.05123.pdf
    // C++ implementation: https://github.com/orlp/pdqsort
    // Rust implementation: https://docs.rs/pdqsort/latest/pdqsort/
    // limit is the number of allowed bad (very unbalanced) pivots before falling back to heapsort.
**/
function _pdqsort(_data:Interface, _a:GoInt, _b:GoInt, _limit:GoInt):Void {
        {};
        var _wasBalanced:Bool = true, _wasPartitioned:Bool = true;
        while (true) {
            var _length:GoInt = _b - _a;
            if (_length <= (12 : GoInt)) {
                _insertionSort(_data, _a, _b);
                return;
            };
            if (_limit == (0 : GoInt)) {
                _heapSort(_data, _a, _b);
                return;
            };
            if (!_wasBalanced) {
                _breakPatterns(_data, _a, _b);
                _limit--;
            };
            var __tmp__ = _choosePivot(_data, _a, _b), _pivot:GoInt = __tmp__._0, _hint:T_sortedHint = __tmp__._1;
            if (_hint == (2 : T_sortedHint)) {
                _reverseRange(_data, _a, _b);
                _pivot = (_b - (1 : GoInt)) - (_pivot - _a);
                _hint = (1 : T_sortedHint);
            };
            if ((_wasBalanced && _wasPartitioned) && (_hint == (1 : T_sortedHint))) {
                if (_partialInsertionSort(_data, _a, _b)) {
                    return;
                };
            };
            if ((_a > (0 : GoInt)) && !_data.less(_a - (1 : GoInt), _pivot)) {
                var _mid:GoInt = _partitionEqual(_data, _a, _b, _pivot);
                _a = _mid;
                continue;
            };
            var __tmp__ = _partition(_data, _a, _b, _pivot), _mid:GoInt = __tmp__._0, _alreadyPartitioned:Bool = __tmp__._1;
            _wasPartitioned = _alreadyPartitioned;
            var _leftLen:GoInt = _mid - _a, _rightLen:GoInt = _b - _mid;
            var _balanceThreshold:GoInt = _length / (8 : GoInt);
            if (_leftLen < _rightLen) {
                _wasBalanced = _leftLen >= _balanceThreshold;
                _pdqsort(_data, _a, _mid, _limit);
                _a = _mid + (1 : GoInt);
            } else {
                _wasBalanced = _rightLen >= _balanceThreshold;
                _pdqsort(_data, _mid + (1 : GoInt), _b, _limit);
                _b = _mid;
            };
        };
    }
/**
    // partition does one quicksort partition.
    // Let p = data[pivot]
    // Moves elements in data[a:b] around, so that data[i]<p and data[j]>=p for i<newpivot and j>newpivot.
    // On return, data[newpivot] = p
**/
function _partition(_data:Interface, _a:GoInt, _b:GoInt, _pivot:GoInt):{ var _0 : GoInt; var _1 : Bool; } {
        var _newpivot:GoInt = (0 : GoInt), _alreadyPartitioned:Bool = false;
        _data.swap(_a, _pivot);
        var _i:GoInt = _a + (1 : GoInt), _j:GoInt = _b - (1 : GoInt);
        while ((_i <= _j) && _data.less(_i, _a)) {
            _i++;
        };
        while ((_i <= _j) && !_data.less(_j, _a)) {
            _j--;
        };
        if (_i > _j) {
            _data.swap(_j, _a);
            return { _0 : _j, _1 : true };
        };
        _data.swap(_i, _j);
        _i++;
        _j--;
        while (true) {
            while ((_i <= _j) && _data.less(_i, _a)) {
                _i++;
            };
            while ((_i <= _j) && !_data.less(_j, _a)) {
                _j--;
            };
            if (_i > _j) {
                break;
            };
            _data.swap(_i, _j);
            _i++;
            _j--;
        };
        _data.swap(_j, _a);
        return { _0 : _j, _1 : false };
    }
/**
    // partitionEqual partitions data[a:b] into elements equal to data[pivot] followed by elements greater than data[pivot].
    // It assumed that data[a:b] does not contain elements smaller than the data[pivot].
**/
function _partitionEqual(_data:Interface, _a:GoInt, _b:GoInt, _pivot:GoInt):GoInt {
        var _newpivot:GoInt = (0 : GoInt);
        _data.swap(_a, _pivot);
        var _i:GoInt = _a + (1 : GoInt), _j:GoInt = _b - (1 : GoInt);
        while (true) {
            while ((_i <= _j) && !_data.less(_a, _i)) {
                _i++;
            };
            while ((_i <= _j) && _data.less(_a, _j)) {
                _j--;
            };
            if (_i > _j) {
                break;
            };
            _data.swap(_i, _j);
            _i++;
            _j--;
        };
        return _i;
    }
/**
    // partialInsertionSort partially sorts a slice, returns true if the slice is sorted at the end.
**/
function _partialInsertionSort(_data:Interface, _a:GoInt, _b:GoInt):Bool {
        {};
        var _i:GoInt = _a + (1 : GoInt);
        {
            var _j:GoInt = (0 : GoInt);
            Go.cfor(_j < (5 : GoInt), _j++, {
                while ((_i < _b) && !_data.less(_i, _i - (1 : GoInt))) {
                    _i++;
                };
                if (_i == _b) {
                    return true;
                };
                if ((_b - _a) < (50 : GoInt)) {
                    return false;
                };
                _data.swap(_i, _i - (1 : GoInt));
                if ((_i - _a) >= (2 : GoInt)) {
                    {
                        var _j:GoInt = _i - (1 : GoInt);
                        Go.cfor(_j >= (1 : GoInt), _j--, {
                            if (!_data.less(_j, _j - (1 : GoInt))) {
                                break;
                            };
                            _data.swap(_j, _j - (1 : GoInt));
                        });
                    };
                };
                if ((_b - _i) >= (2 : GoInt)) {
                    {
                        var _j:GoInt = _i + (1 : GoInt);
                        Go.cfor(_j < _b, _j++, {
                            if (!_data.less(_j, _j - (1 : GoInt))) {
                                break;
                            };
                            _data.swap(_j, _j - (1 : GoInt));
                        });
                    };
                };
            });
        };
        return false;
    }
/**
    // breakPatterns scatters some elements around in an attempt to break some patterns
    // that might cause imbalanced partitions in quicksort.
**/
function _breakPatterns(_data:Interface, _a:GoInt, _b:GoInt):Void {
        var _length:GoInt = _b - _a;
        if (_length >= (8 : GoInt)) {
            var _random:T_xorshift = (_length : T_xorshift);
            var _modulus:GoUInt = _nextPowerOfTwo(_length);
            {
                var _idx:GoInt = (_a + (_length / (4 : GoInt)) * (2 : GoInt)) - (1 : GoInt);
                Go.cfor(_idx <= (_a + (_length / (4 : GoInt) * (2 : GoInt)) + (1 : GoInt)), _idx++, {
                    var _other:GoInt = ((_random.next(Go.pointer(_random)) : GoUInt) & (_modulus - (1 : GoUInt)) : GoInt);
                    if (_other >= _length) {
                        _other = _other - (_length);
                    };
                    _data.swap(_idx, _a + _other);
                });
            };
        };
    }
/**
    // choosePivot chooses a pivot in data[a:b].
    //
    // [0,8): chooses a static pivot.
    // [8,shortestNinther): uses the simple median-of-three method.
    // [shortestNinther,∞): uses the Tukey ninther method.
**/
function _choosePivot(_data:Interface, _a:GoInt, _b:GoInt):{ var _0 : GoInt; var _1 : T_sortedHint; } {
        var _pivot:GoInt = (0 : GoInt), _hint:T_sortedHint = ((0 : GoInt) : T_sortedHint);
        {};
        var _l:GoInt = _b - _a;
        var _swaps:GoInt = (0 : GoInt), _i:GoInt = _a + (_l / (4 : GoInt) * (1 : GoInt)), _j:GoInt = _a + (_l / (4 : GoInt) * (2 : GoInt)), _k:GoInt = _a + (_l / (4 : GoInt) * (3 : GoInt));
        if (_l >= (8 : GoInt)) {
            if (_l >= (50 : GoInt)) {
                _i = _medianAdjacent(_data, _i, Go.pointer(_swaps));
                _j = _medianAdjacent(_data, _j, Go.pointer(_swaps));
                _k = _medianAdjacent(_data, _k, Go.pointer(_swaps));
            };
            _j = _median(_data, _i, _j, _k, Go.pointer(_swaps));
        };
        if (_swaps == (0 : GoInt)) {
            return { _0 : _j, _1 : (1 : T_sortedHint) };
        } else if (_swaps == (12 : GoInt)) {
            return { _0 : _j, _1 : (2 : T_sortedHint) };
        } else {
            return { _0 : _j, _1 : (0 : T_sortedHint) };
        };
    }
/**
    // order2 returns x,y where data[x] <= data[y], where x,y=a,b or x,y=b,a.
**/
function _order2(_data:Interface, _a:GoInt, _b:GoInt, _swaps:Pointer<GoInt>):{ var _0 : GoInt; var _1 : GoInt; } {
        if (_data.less(_b, _a)) {
            _swaps.value++;
            return { _0 : _b, _1 : _a };
        };
        return { _0 : _a, _1 : _b };
    }
/**
    // median returns x where data[x] is the median of data[a],data[b],data[c], where x is a, b, or c.
**/
function _median(_data:Interface, _a:GoInt, _b:GoInt, _c:GoInt, _swaps:Pointer<GoInt>):GoInt {
        {
            var __tmp__ = _order2(_data, _a, _b, _swaps);
            _a = __tmp__._0;
            _b = __tmp__._1;
        };
        {
            var __tmp__ = _order2(_data, _b, _c, _swaps);
            _b = __tmp__._0;
            _c = __tmp__._1;
        };
        {
            var __tmp__ = _order2(_data, _a, _b, _swaps);
            _a = __tmp__._0;
            _b = __tmp__._1;
        };
        return _b;
    }
/**
    // medianAdjacent finds the median of data[a - 1], data[a], data[a + 1] and stores the index into a.
**/
function _medianAdjacent(_data:Interface, _a:GoInt, _swaps:Pointer<GoInt>):GoInt {
        return _median(_data, _a - (1 : GoInt), _a, _a + (1 : GoInt), _swaps);
    }
function _reverseRange(_data:Interface, _a:GoInt, _b:GoInt):Void {
        var _i:GoInt = _a;
        var _j:GoInt = _b - (1 : GoInt);
        while (_i < _j) {
            _data.swap(_i, _j);
            _i++;
            _j--;
        };
    }
function _swapRange(_data:Interface, _a:GoInt, _b:GoInt, _n:GoInt):Void {
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _n, _i++, {
                _data.swap(_a + _i, _b + _i);
            });
        };
    }
function _stable(_data:Interface, _n:GoInt):Void {
        var _blockSize:GoInt = (20 : GoInt);
        var _a:GoInt = (0 : GoInt), _b:GoInt = _blockSize;
        while (_b <= _n) {
            _insertionSort(_data, _a, _b);
            _a = _b;
            _b = _b + (_blockSize);
        };
        _insertionSort(_data, _a, _n);
        while (_blockSize < _n) {
            {
                final __tmp__0 = (0 : GoInt);
                final __tmp__1 = (2 : GoInt) * _blockSize;
                _a = __tmp__0;
                _b = __tmp__1;
            };
            while (_b <= _n) {
                _symMerge(_data, _a, _a + _blockSize, _b);
                _a = _b;
                _b = _b + ((2 : GoInt) * _blockSize);
            };
            {
                var _m:GoInt = _a + _blockSize;
                if (_m < _n) {
                    _symMerge(_data, _a, _m, _n);
                };
            };
            _blockSize = _blockSize * ((2 : GoInt));
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
        if ((_m - _a) == (1 : GoInt)) {
            var _i:GoInt = _m;
            var _j:GoInt = _b;
            while (_i < _j) {
                var _h:GoInt = ((_i + _j : GoUInt) >> (1 : GoUnTypedInt) : GoInt);
                if (_data.less(_h, _a)) {
                    _i = _h + (1 : GoInt);
                } else {
                    _j = _h;
                };
            };
            {
                var _k:GoInt = _a;
                Go.cfor(_k < (_i - (1 : GoInt)), _k++, {
                    _data.swap(_k, _k + (1 : GoInt));
                });
            };
            return;
        };
        if ((_b - _m) == (1 : GoInt)) {
            var _i:GoInt = _a;
            var _j:GoInt = _m;
            while (_i < _j) {
                var _h:GoInt = ((_i + _j : GoUInt) >> (1 : GoUnTypedInt) : GoInt);
                if (!_data.less(_m, _h)) {
                    _i = _h + (1 : GoInt);
                } else {
                    _j = _h;
                };
            };
            {
                var _k:GoInt = _m;
                Go.cfor(_k > _i, _k--, {
                    _data.swap(_k, _k - (1 : GoInt));
                });
            };
            return;
        };
        var _mid:GoInt = ((_a + _b : GoUInt) >> (1 : GoUnTypedInt) : GoInt);
        var _n:GoInt = _mid + _m;
        var _start:GoInt = (0 : GoInt), _r:GoInt = (0 : GoInt);
        if (_m > _mid) {
            _start = _n - _b;
            _r = _mid;
        } else {
            _start = _a;
            _r = _m;
        };
        var _p:GoInt = _n - (1 : GoInt);
        while (_start < _r) {
            var _c:GoInt = ((_start + _r : GoUInt) >> (1 : GoUnTypedInt) : GoInt);
            if (!_data.less(_p - _c, _c)) {
                _start = _c + (1 : GoInt);
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
    public function __underlying__() return Go.toInterface(this);
    var __self__ : T_reverse;
}
@:keep class T_xorshift_static_extension {
    @:keep
    @:pointer
    static public function next(____:T_xorshift,  _r:Pointer<T_xorshift>):GoUInt64 {
        _r.value = _r.value ^ (_r.value << (13 : GoUnTypedInt));
        _r.value = _r.value ^ (_r.value >> (17 : GoUnTypedInt));
        _r.value = _r.value ^ (_r.value << (5 : GoUnTypedInt));
        return (_r.value : GoUInt64);
    }
}
class T_xorshift_wrapper {
    @:keep
    @:pointer
    public var next : () -> GoUInt64 = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__.value);
    var __self__ : Pointer<T_xorshift>;
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
            __self__.search = #if !macro function(__0:GoInt):GoInt return _x.search(__0) #else null #end;
            __self__.sort = #if !macro function():Void _x.sort() #else null #end;
            __self__.swap = #if !macro function(_i__:GoInt, _j__:GoInt):Void _x.swap(_i__, _j__) #else null #end;
            __self__;
        });
    }
    @:keep
    static public function swap( _x:IntSlice, _i:GoInt, _j:GoInt):Void {
        {
            final __tmp__0 = _x[_j];
            final __tmp__1 = _x[_i];
            _x[_i] = __tmp__0;
            _x[_j] = __tmp__1;
        };
    }
    @:keep
    static public function less( _x:IntSlice, _i:GoInt, _j:GoInt):Bool {
        return _x[_i] < _x[_j];
    }
    @:keep
    static public function len( _x:IntSlice):GoInt {
        return (_x.length);
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
    public function __underlying__() return Go.toInterface(this);
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
            final __tmp__0 = _x[_j];
            final __tmp__1 = _x[_i];
            _x[_i] = __tmp__0;
            _x[_j] = __tmp__1;
        };
    }
    /**
        // Less reports whether x[i] should be ordered before x[j], as required by the sort Interface.
        // Note that floating-point comparison by itself is not a transitive relation: it does not
        // report a consistent ordering for not-a-number (NaN) values.
        // This implementation of Less places NaN values before any others, by using:
        //
        //	x[i] < x[j] || (math.IsNaN(x[i]) && !math.IsNaN(x[j]))
    **/
    @:keep
    static public function less( _x:Float64Slice, _i:GoInt, _j:GoInt):Bool {
        return (_x[_i] < _x[_j]) || (_isNaN(_x[_i]) && !_isNaN(_x[_j]));
    }
    @:keep
    static public function len( _x:Float64Slice):GoInt {
        return (_x.length);
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
    public function __underlying__() return Go.toInterface(this);
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
            final __tmp__0 = _x[_j];
            final __tmp__1 = _x[_i];
            _x[_i] = __tmp__0;
            _x[_j] = __tmp__1;
        };
    }
    @:keep
    static public function less( _x:StringSlice, _i:GoInt, _j:GoInt):Bool {
        return _x[_i] < _x[_j];
    }
    @:keep
    static public function len( _x:StringSlice):GoInt {
        return (_x.length);
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
    public function __underlying__() return Go.toInterface(this);
    var __self__ : StringSlice;
}

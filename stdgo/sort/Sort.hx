package stdgo.sort;
/**
    // Package sort provides primitives for sorting slices and user-defined collections.
**/
private var __go2hxdoc__package : Bool;
/**
    
    
    
**/
final _unknownHint : stdgo.sort.Sort.T_sortedHint = (2 : stdgo.sort.Sort.T_sortedHint);
/**
    
    
    
**/
final _increasingHint = (2 : stdgo.sort.Sort.T_sortedHint);
/**
    
    
    
**/
final _decreasingHint = (2 : stdgo.sort.Sort.T_sortedHint);
/**
    // An implementation of Interface can be sorted by the routines in this package.
    // The methods refer to elements of the underlying collection by integer index.
    
    
**/
typedef Interface = stdgo.StructType & {
    /**
        // Len is the number of elements in the collection.
        
        
    **/
    public dynamic function len():stdgo.GoInt;
    /**
        // Less reports whether the element with index i
        // must sort before the element with index j.
        //
        // If both Less(i, j) and Less(j, i) are false,
        // then the elements at index i and j are considered equal.
        // Sort may place equal elements in any order in the final result,
        // while Stable preserves the original input order of equal elements.
        //
        // Less must describe a transitive ordering:
        //  - if both Less(i, j) and Less(j, k) are true, then Less(i, k) must be true as well.
        //  - if both Less(i, j) and Less(j, k) are false, then Less(i, k) must be false as well.
        //
        // Note that floating-point comparison (the < operator on float32 or float64 values)
        // is not a transitive ordering when not-a-number (NaN) values are involved.
        // See Float64Slice.Less for a correct implementation for floating-point values.
        
        
    **/
    public dynamic function less(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool;
    /**
        // Swap swaps the elements with indexes i and j.
        
        
    **/
    public dynamic function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void;
};
/**
    // lessSwap is a pair of Less and Swap function for use with the
    // auto-generated func-optimized variant of sort.go in
    // zfuncversion.go.
    
    
**/
@:structInit @:private class T_lessSwap {
    public var less : (stdgo.GoInt, stdgo.GoInt) -> Bool = null;
    public var swap : (stdgo.GoInt, stdgo.GoInt) -> Void = null;
    public function new(?less:(stdgo.GoInt, stdgo.GoInt) -> Bool, ?swap:(stdgo.GoInt, stdgo.GoInt) -> Void) {
        if (less != null) this.less = less;
        if (swap != null) this.swap = swap;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_lessSwap(less, swap);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.sort.Sort.T_reverse_static_extension) class T_reverse {
    /**
        // This embedded Interface permits Reverse to use the methods of
        // another Interface implementation.
    **/
    @:embedded
    public var interface_ : stdgo.sort.Sort.Interface = (null : stdgo.sort.Sort.Interface);
    public function new(?interface_:stdgo.sort.Sort.Interface) {
        if (interface_ != null) this.interface_ = interface_;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function len():stdgo.GoInt return interface_.len();
    @:embedded
    public function swap(_i_:stdgo.GoInt, _j_:stdgo.GoInt) interface_.swap(_i_, _j_);
    public function __copy__() {
        return new T_reverse(interface_);
    }
}
@:named typedef T_sortedHint = stdgo.GoInt;
/**
    // xorshift paper: https://www.jstatsoft.org/article/view/v008i14/xorshift.pdf
**/
@:named @:using(stdgo.sort.Sort.T_xorshift_static_extension) typedef T_xorshift = stdgo.GoUInt64;
/**
    // IntSlice attaches the methods of Interface to []int, sorting in increasing order.
**/
@:named @:using(stdgo.sort.Sort.IntSlice_static_extension) typedef IntSlice = stdgo.Slice<stdgo.GoInt>;
/**
    // Float64Slice implements Interface for a []float64, sorting in increasing order,
    // with not-a-number (NaN) values ordered before other values.
**/
@:named @:using(stdgo.sort.Sort.Float64Slice_static_extension) typedef Float64Slice = stdgo.Slice<stdgo.GoFloat64>;
/**
    // StringSlice attaches the methods of Interface to []string, sorting in increasing order.
**/
@:named @:using(stdgo.sort.Sort.StringSlice_static_extension) typedef StringSlice = stdgo.Slice<stdgo.GoString>;
function heapsort(_data:Interface):Void {
        _heapSort(_data, (0 : stdgo.GoInt), _data.len());
    }
function reverseRange(_data:Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
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
function search(_n:stdgo.GoInt, _f:stdgo.GoInt -> Bool):stdgo.GoInt {
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = _n, _j:stdgo.GoInt = __1, _i:stdgo.GoInt = __0;
        while (_i < _j) {
            var _h:stdgo.GoInt = ((_i + _j : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt);
            if (!_f(_h)) {
                _i = _h + (1 : stdgo.GoInt);
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
function find(_n:stdgo.GoInt, _cmp:stdgo.GoInt -> stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        var _i:stdgo.GoInt = (0 : stdgo.GoInt), _found:Bool = false;
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = _n, _j:stdgo.GoInt = __1, _i:stdgo.GoInt = __0;
        while (_i < _j) {
            var _h:stdgo.GoInt = ((_i + _j : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt);
            if (_cmp(_h) > (0 : stdgo.GoInt)) {
                _i = _h + (1 : stdgo.GoInt);
            } else {
                _j = _h;
            };
        };
        return { _0 : _i, _1 : (_i < _n) && (_cmp(_i) == (0 : stdgo.GoInt)) };
    }
/**
    // SearchInts searches for x in a sorted slice of ints and returns the index
    // as specified by Search. The return value is the index to insert x if x is
    // not present (it could be len(a)).
    // The slice must be sorted in ascending order.
**/
function searchInts(_a:stdgo.Slice<stdgo.GoInt>, _x:stdgo.GoInt):stdgo.GoInt {
        return search((_a.length), function(_i:stdgo.GoInt):Bool {
            return _a[(_i : stdgo.GoInt)] >= _x;
        });
    }
/**
    // SearchFloat64s searches for x in a sorted slice of float64s and returns the index
    // as specified by Search. The return value is the index to insert x if x is not
    // present (it could be len(a)).
    // The slice must be sorted in ascending order.
**/
function searchFloat64s(_a:stdgo.Slice<stdgo.GoFloat64>, _x:stdgo.GoFloat64):stdgo.GoInt {
        return search((_a.length), function(_i:stdgo.GoInt):Bool {
            return _a[(_i : stdgo.GoInt)] >= _x;
        });
    }
/**
    // SearchStrings searches for x in a sorted slice of strings and returns the index
    // as specified by Search. The return value is the index to insert x if x is not
    // present (it could be len(a)).
    // The slice must be sorted in ascending order.
**/
function searchStrings(_a:stdgo.Slice<stdgo.GoString>, _x:stdgo.GoString):stdgo.GoInt {
        return search((_a.length), function(_i:stdgo.GoInt):Bool {
            return _a[(_i : stdgo.GoInt)] >= _x;
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
function slice(_x:stdgo.AnyInterface, _less:(_i:stdgo.GoInt, _j:stdgo.GoInt) -> Bool):Void {
        var _rv:stdgo.internal.reflectlite.Reflectlite.Value = stdgo.internal.reflectlite.Reflectlite.valueOf(_x)?.__copy__();
        var _swap:(stdgo.GoInt, stdgo.GoInt) -> Void = stdgo.internal.reflectlite.Reflectlite.swapper(_x);
        var _length:stdgo.GoInt = _rv.len();
        var _limit:stdgo.GoInt = stdgo.math.bits.Bits.len((_length : stdgo.GoUInt));
        _pdqsort_func((new stdgo.sort.Sort.T_lessSwap(_less, _swap) : stdgo.sort.Sort.T_lessSwap), (0 : stdgo.GoInt), _length, _limit);
    }
/**
    // SliceStable sorts the slice x using the provided less
    // function, keeping equal elements in their original order.
    // It panics if x is not a slice.
    //
    // The less function must satisfy the same requirements as
    // the Interface type's Less method.
**/
function sliceStable(_x:stdgo.AnyInterface, _less:(_i:stdgo.GoInt, _j:stdgo.GoInt) -> Bool):Void {
        var _rv:stdgo.internal.reflectlite.Reflectlite.Value = stdgo.internal.reflectlite.Reflectlite.valueOf(_x)?.__copy__();
        var _swap:(stdgo.GoInt, stdgo.GoInt) -> Void = stdgo.internal.reflectlite.Reflectlite.swapper(_x);
        _stable_func((new stdgo.sort.Sort.T_lessSwap(_less, _swap) : stdgo.sort.Sort.T_lessSwap), _rv.len());
    }
/**
    // SliceIsSorted reports whether the slice x is sorted according to the provided less function.
    // It panics if x is not a slice.
**/
function sliceIsSorted(_x:stdgo.AnyInterface, _less:(_i:stdgo.GoInt, _j:stdgo.GoInt) -> Bool):Bool {
        var _rv:stdgo.internal.reflectlite.Reflectlite.Value = stdgo.internal.reflectlite.Reflectlite.valueOf(_x)?.__copy__();
        var _n:stdgo.GoInt = _rv.len();
        {
            var _i:stdgo.GoInt = _n - (1 : stdgo.GoInt);
            stdgo.Go.cfor(_i > (0 : stdgo.GoInt), _i--, {
                if (_less(_i, _i - (1 : stdgo.GoInt))) {
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
    //
    // Note: in many situations, the newer slices.SortFunc function is more
    // ergonomic and runs faster.
**/
function sort(_data:Interface):Void {
        var _n:stdgo.GoInt = _data.len();
        if (_n <= (1 : stdgo.GoInt)) {
            return;
        };
        var _limit:stdgo.GoInt = stdgo.math.bits.Bits.len((_n : stdgo.GoUInt));
        _pdqsort(_data, (0 : stdgo.GoInt), _n, _limit);
    }
function _nextPowerOfTwo(_length:stdgo.GoInt):stdgo.GoUInt {
        var _shift:stdgo.GoUInt = (stdgo.math.bits.Bits.len((_length : stdgo.GoUInt)) : stdgo.GoUInt);
        return ((1u32 : stdgo.GoUInt) << _shift : stdgo.GoUInt);
    }
/**
    // Reverse returns the reverse order for data.
**/
function reverse(_data:Interface):Interface {
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.sort.Sort.T_reverse(_data) : stdgo.sort.Sort.T_reverse)) : stdgo.Ref<stdgo.sort.Sort.T_reverse>));
    }
/**
    // IsSorted reports whether data is sorted.
    //
    // Note: in many situations, the newer slices.IsSortedFunc function is more
    // ergonomic and runs faster.
**/
function isSorted(_data:Interface):Bool {
        var _n:stdgo.GoInt = _data.len();
        {
            var _i:stdgo.GoInt = _n - (1 : stdgo.GoInt);
            stdgo.Go.cfor(_i > (0 : stdgo.GoInt), _i--, {
                if (_data.less(_i, _i - (1 : stdgo.GoInt))) {
                    return false;
                };
            });
        };
        return true;
    }
/**
    // isNaN is a copy of math.IsNaN to avoid a dependency on the math package.
**/
function _isNaN(_f:stdgo.GoFloat64):Bool {
        return _f != (_f);
    }
/**
    // Ints sorts a slice of ints in increasing order.
    //
    // Note: consider using the newer slices.Sort function, which runs faster.
**/
function ints(_x:stdgo.Slice<stdgo.GoInt>):Void {
        sort(stdgo.Go.asInterface((_x : IntSlice)));
    }
/**
    // Float64s sorts a slice of float64s in increasing order.
    // Not-a-number (NaN) values are ordered before other values.
    //
    // Note: consider using the newer slices.Sort function, which runs faster.
**/
function float64s(_x:stdgo.Slice<stdgo.GoFloat64>):Void {
        sort(stdgo.Go.asInterface((_x : Float64Slice)));
    }
/**
    // Strings sorts a slice of strings in increasing order.
    //
    // Note: consider using the newer slices.Sort function, which runs faster.
**/
function strings(_x:stdgo.Slice<stdgo.GoString>):Void {
        sort(stdgo.Go.asInterface((_x : StringSlice)));
    }
/**
    // IntsAreSorted reports whether the slice x is sorted in increasing order.
    //
    // Note: consider using the newer slices.IsSorted function, which runs faster.
**/
function intsAreSorted(_x:stdgo.Slice<stdgo.GoInt>):Bool {
        return isSorted(stdgo.Go.asInterface((_x : IntSlice)));
    }
/**
    // Float64sAreSorted reports whether the slice x is sorted in increasing order,
    // with not-a-number (NaN) values before any other values.
    //
    // Note: consider using the newer slices.IsSorted function, which runs faster.
**/
function float64sAreSorted(_x:stdgo.Slice<stdgo.GoFloat64>):Bool {
        return isSorted(stdgo.Go.asInterface((_x : Float64Slice)));
    }
/**
    // StringsAreSorted reports whether the slice x is sorted in increasing order.
    //
    // Note: consider using the newer slices.IsSorted function, which runs faster.
**/
function stringsAreSorted(_x:stdgo.Slice<stdgo.GoString>):Bool {
        return isSorted(stdgo.Go.asInterface((_x : StringSlice)));
    }
/**
    // Stable sorts data in ascending order as determined by the Less method,
    // while keeping the original order of equal elements.
    //
    // It makes one call to data.Len to determine n, O(n*log(n)) calls to
    // data.Less and O(n*log(n)*log(n)) calls to data.Swap.
    //
    // Note: in many situations, the newer slices.SortStableFunc function is more
    // ergonomic and runs faster.
**/
function stable(_data:Interface):Void {
        _stable(_data, _data.len());
    }
/**
    // insertionSort_func sorts data[a:b] using insertion sort.
**/
function _insertionSort_func(_data:T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        {
            var _i:stdgo.GoInt = _a + (1 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _b, _i++, {
                {
                    var _j:stdgo.GoInt = _i;
                    stdgo.Go.cfor((_j > _a) && _data.less(_j, _j - (1 : stdgo.GoInt)), _j--, {
                        _data.swap(_j, _j - (1 : stdgo.GoInt));
                    });
                };
            });
        };
    }
/**
    // siftDown_func implements the heap property on data[lo:hi].
    // first is an offset into the array where the root of the heap lies.
**/
function _siftDown_func(_data:T_lessSwap, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt):Void {
        var _root:stdgo.GoInt = _lo;
        while (true) {
            var _child:stdgo.GoInt = ((2 : stdgo.GoInt) * _root) + (1 : stdgo.GoInt);
            if (_child >= _hi) {
                break;
            };
            if (((_child + (1 : stdgo.GoInt)) < _hi) && _data.less(_first + _child, (_first + _child) + (1 : stdgo.GoInt))) {
                _child++;
            };
            if (!_data.less(_first + _root, _first + _child)) {
                return;
            };
            _data.swap(_first + _root, _first + _child);
            _root = _child;
        };
    }
function _heapSort_func(_data:T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _first:stdgo.GoInt = _a;
        var _lo:stdgo.GoInt = (0 : stdgo.GoInt);
        var _hi:stdgo.GoInt = _b - _a;
        {
            var _i:stdgo.GoInt = (_hi - (1 : stdgo.GoInt)) / (2 : stdgo.GoInt);
            stdgo.Go.cfor(_i >= (0 : stdgo.GoInt), _i--, {
                _siftDown_func(_data?.__copy__(), _i, _hi, _first);
            });
        };
        {
            var _i:stdgo.GoInt = _hi - (1 : stdgo.GoInt);
            stdgo.Go.cfor(_i >= (0 : stdgo.GoInt), _i--, {
                _data.swap(_first, _first + _i);
                _siftDown_func(_data?.__copy__(), _lo, _i, _first);
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
function _pdqsort_func(_data:T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt):Void {
        {};
        var __0:Bool = true, __1:Bool = true, _wasPartitioned:Bool = __1, _wasBalanced:Bool = __0;
        while (true) {
            var _length:stdgo.GoInt = _b - _a;
            if (_length <= (12 : stdgo.GoInt)) {
                _insertionSort_func(_data?.__copy__(), _a, _b);
                return;
            };
            if (_limit == ((0 : stdgo.GoInt))) {
                _heapSort_func(_data?.__copy__(), _a, _b);
                return;
            };
            if (!_wasBalanced) {
                _breakPatterns_func(_data?.__copy__(), _a, _b);
                _limit--;
            };
            var __tmp__ = _choosePivot_func(_data?.__copy__(), _a, _b), _pivot:stdgo.GoInt = __tmp__._0, _hint:stdgo.sort.Sort.T_sortedHint = __tmp__._1;
            if (_hint == ((2 : stdgo.sort.Sort.T_sortedHint))) {
                _reverseRange_func(_data?.__copy__(), _a, _b);
                _pivot = (_b - (1 : stdgo.GoInt)) - (_pivot - _a);
                _hint = (1 : stdgo.sort.Sort.T_sortedHint);
            };
            if ((_wasBalanced && _wasPartitioned) && (_hint == (1 : stdgo.sort.Sort.T_sortedHint))) {
                if (_partialInsertionSort_func(_data?.__copy__(), _a, _b)) {
                    return;
                };
            };
            if ((_a > (0 : stdgo.GoInt)) && !_data.less(_a - (1 : stdgo.GoInt), _pivot)) {
                var _mid:stdgo.GoInt = _partitionEqual_func(_data?.__copy__(), _a, _b, _pivot);
                _a = _mid;
                continue;
            };
            var __tmp__ = _partition_func(_data?.__copy__(), _a, _b, _pivot), _mid:stdgo.GoInt = __tmp__._0, _alreadyPartitioned:Bool = __tmp__._1;
            _wasPartitioned = _alreadyPartitioned;
            var __0:stdgo.GoInt = _mid - _a, __1:stdgo.GoInt = _b - _mid, _rightLen:stdgo.GoInt = __1, _leftLen:stdgo.GoInt = __0;
            var _balanceThreshold:stdgo.GoInt = _length / (8 : stdgo.GoInt);
            if (_leftLen < _rightLen) {
                _wasBalanced = _leftLen >= _balanceThreshold;
                _pdqsort_func(_data?.__copy__(), _a, _mid, _limit);
                _a = _mid + (1 : stdgo.GoInt);
            } else {
                _wasBalanced = _rightLen >= _balanceThreshold;
                _pdqsort_func(_data?.__copy__(), _mid + (1 : stdgo.GoInt), _b, _limit);
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
function _partition_func(_data:T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        var _newpivot:stdgo.GoInt = (0 : stdgo.GoInt), _alreadyPartitioned:Bool = false;
        _data.swap(_a, _pivot);
        var __0:stdgo.GoInt = _a + (1 : stdgo.GoInt), __1:stdgo.GoInt = _b - (1 : stdgo.GoInt), _j:stdgo.GoInt = __1, _i:stdgo.GoInt = __0;
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
function _partitionEqual_func(_data:T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):stdgo.GoInt {
        var _newpivot:stdgo.GoInt = (0 : stdgo.GoInt);
        _data.swap(_a, _pivot);
        var __0:stdgo.GoInt = _a + (1 : stdgo.GoInt), __1:stdgo.GoInt = _b - (1 : stdgo.GoInt), _j:stdgo.GoInt = __1, _i:stdgo.GoInt = __0;
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
function _partialInsertionSort_func(_data:T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Bool {
        {};
        var _i:stdgo.GoInt = _a + (1 : stdgo.GoInt);
        {
            var _j:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_j < (5 : stdgo.GoInt), _j++, {
                while ((_i < _b) && !_data.less(_i, _i - (1 : stdgo.GoInt))) {
                    _i++;
                };
                if (_i == (_b)) {
                    return true;
                };
                if ((_b - _a) < (50 : stdgo.GoInt)) {
                    return false;
                };
                _data.swap(_i, _i - (1 : stdgo.GoInt));
                if ((_i - _a) >= (2 : stdgo.GoInt)) {
                    {
                        var _j:stdgo.GoInt = _i - (1 : stdgo.GoInt);
                        stdgo.Go.cfor(_j >= (1 : stdgo.GoInt), _j--, {
                            if (!_data.less(_j, _j - (1 : stdgo.GoInt))) {
                                break;
                            };
                            _data.swap(_j, _j - (1 : stdgo.GoInt));
                        });
                    };
                };
                if ((_b - _i) >= (2 : stdgo.GoInt)) {
                    {
                        var _j:stdgo.GoInt = _i + (1 : stdgo.GoInt);
                        stdgo.Go.cfor(_j < _b, _j++, {
                            if (!_data.less(_j, _j - (1 : stdgo.GoInt))) {
                                break;
                            };
                            _data.swap(_j, _j - (1 : stdgo.GoInt));
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
function _breakPatterns_func(_data:T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _length:stdgo.GoInt = _b - _a;
        if (_length >= (8 : stdgo.GoInt)) {
            var _random:stdgo.sort.Sort.T_xorshift = (_length : T_xorshift);
            var _modulus:stdgo.GoUInt = _nextPowerOfTwo(_length);
            {
                var _idx:stdgo.GoInt = (_a + ((_length / (4 : stdgo.GoInt)) * (2 : stdgo.GoInt))) - (1 : stdgo.GoInt);
                stdgo.Go.cfor(_idx <= ((_a + ((_length / (4 : stdgo.GoInt)) * (2 : stdgo.GoInt))) + (1 : stdgo.GoInt)), _idx++, {
                    var _other:stdgo.GoInt = ((_random.next(stdgo.Go.pointer(_random)) : stdgo.GoUInt) & (_modulus - (1u32 : stdgo.GoUInt)) : stdgo.GoInt);
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
function _choosePivot_func(_data:T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : T_sortedHint; } {
        var _pivot:stdgo.GoInt = (0 : stdgo.GoInt), _hint:T_sortedHint = ((0 : stdgo.GoInt) : stdgo.sort.Sort.T_sortedHint);
        {};
        var _l:stdgo.GoInt = _b - _a;
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = _a + ((_l / (4 : stdgo.GoInt)) * (1 : stdgo.GoInt)), __2:stdgo.GoInt = _a + ((_l / (4 : stdgo.GoInt)) * (2 : stdgo.GoInt)), __3:stdgo.GoInt = _a + ((_l / (4 : stdgo.GoInt)) * (3 : stdgo.GoInt)), _k:stdgo.GoInt = __3, _j:stdgo.GoInt = __2, _i:stdgo.GoInt = __1, _swaps:stdgo.GoInt = __0;
        if (_l >= (8 : stdgo.GoInt)) {
            if (_l >= (50 : stdgo.GoInt)) {
                _i = _medianAdjacent_func(_data?.__copy__(), _i, stdgo.Go.pointer(_swaps));
                _j = _medianAdjacent_func(_data?.__copy__(), _j, stdgo.Go.pointer(_swaps));
                _k = _medianAdjacent_func(_data?.__copy__(), _k, stdgo.Go.pointer(_swaps));
            };
            _j = _median_func(_data?.__copy__(), _i, _j, _k, stdgo.Go.pointer(_swaps));
        };
        {
            final __value__ = _swaps;
            if (__value__ == ((0 : stdgo.GoInt))) {
                return { _0 : _j, _1 : (1 : stdgo.sort.Sort.T_sortedHint) };
            } else if (__value__ == ((12 : stdgo.GoInt))) {
                return { _0 : _j, _1 : (2 : stdgo.sort.Sort.T_sortedHint) };
            } else {
                return { _0 : _j, _1 : (0 : stdgo.sort.Sort.T_sortedHint) };
            };
        };
    }
/**
    // order2_func returns x,y where data[x] <= data[y], where x,y=a,b or x,y=b,a.
**/
function _order2_func(_data:T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        if (_data.less(_b, _a)) {
            _swaps.value++;
            return { _0 : _b, _1 : _a };
        };
        return { _0 : _a, _1 : _b };
    }
/**
    // median_func returns x where data[x] is the median of data[a],data[b],data[c], where x is a, b, or c.
**/
function _median_func(_data:T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt {
        {
            var __tmp__ = _order2_func(_data?.__copy__(), _a, _b, _swaps);
            _a = __tmp__._0;
            _b = __tmp__._1;
        };
        {
            var __tmp__ = _order2_func(_data?.__copy__(), _b, _c, _swaps);
            _b = __tmp__._0;
            _c = __tmp__._1;
        };
        {
            var __tmp__ = _order2_func(_data?.__copy__(), _a, _b, _swaps);
            _a = __tmp__._0;
            _b = __tmp__._1;
        };
        return _b;
    }
/**
    // medianAdjacent_func finds the median of data[a - 1], data[a], data[a + 1] and stores the index into a.
**/
function _medianAdjacent_func(_data:T_lessSwap, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt {
        return _median_func(_data?.__copy__(), _a - (1 : stdgo.GoInt), _a, _a + (1 : stdgo.GoInt), _swaps);
    }
function _reverseRange_func(_data:T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _i:stdgo.GoInt = _a;
        var _j:stdgo.GoInt = _b - (1 : stdgo.GoInt);
        while (_i < _j) {
            _data.swap(_i, _j);
            _i++;
            _j--;
        };
    }
function _swapRange_func(_data:T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt):Void {
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _n, _i++, {
                _data.swap(_a + _i, _b + _i);
            });
        };
    }
function _stable_func(_data:T_lessSwap, _n:stdgo.GoInt):Void {
        var _blockSize:stdgo.GoInt = (20 : stdgo.GoInt);
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = _blockSize, _b:stdgo.GoInt = __1, _a:stdgo.GoInt = __0;
        while (_b <= _n) {
            _insertionSort_func(_data?.__copy__(), _a, _b);
            _a = _b;
            _b = _b + (_blockSize);
        };
        _insertionSort_func(_data?.__copy__(), _a, _n);
        while (_blockSize < _n) {
            {
                final __tmp__0 = (0 : stdgo.GoInt);
                final __tmp__1 = (2 : stdgo.GoInt) * _blockSize;
                _a = __tmp__0;
                _b = __tmp__1;
            };
            while (_b <= _n) {
                _symMerge_func(_data?.__copy__(), _a, _a + _blockSize, _b);
                _a = _b;
                _b = _b + ((2 : stdgo.GoInt) * _blockSize);
            };
            {
                var _m:stdgo.GoInt = _a + _blockSize;
                if (_m < _n) {
                    _symMerge_func(_data?.__copy__(), _a, _m, _n);
                };
            };
            _blockSize = _blockSize * ((2 : stdgo.GoInt));
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
function _symMerge_func(_data:T_lessSwap, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void {
        if (_m - _a == ((1 : stdgo.GoInt))) {
            var _i:stdgo.GoInt = _m;
            var _j:stdgo.GoInt = _b;
            while (_i < _j) {
                var _h:stdgo.GoInt = ((_i + _j : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt);
                if (_data.less(_h, _a)) {
                    _i = _h + (1 : stdgo.GoInt);
                } else {
                    _j = _h;
                };
            };
            {
                var _k:stdgo.GoInt = _a;
                stdgo.Go.cfor(_k < (_i - (1 : stdgo.GoInt)), _k++, {
                    _data.swap(_k, _k + (1 : stdgo.GoInt));
                });
            };
            return;
        };
        if (_b - _m == ((1 : stdgo.GoInt))) {
            var _i:stdgo.GoInt = _a;
            var _j:stdgo.GoInt = _m;
            while (_i < _j) {
                var _h:stdgo.GoInt = ((_i + _j : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt);
                if (!_data.less(_m, _h)) {
                    _i = _h + (1 : stdgo.GoInt);
                } else {
                    _j = _h;
                };
            };
            {
                var _k:stdgo.GoInt = _m;
                stdgo.Go.cfor(_k > _i, _k--, {
                    _data.swap(_k, _k - (1 : stdgo.GoInt));
                });
            };
            return;
        };
        var _mid:stdgo.GoInt = ((_a + _b : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt);
        var _n:stdgo.GoInt = _mid + _m;
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt), _r:stdgo.GoInt = __1, _start:stdgo.GoInt = __0;
        if (_m > _mid) {
            _start = _n - _b;
            _r = _mid;
        } else {
            _start = _a;
            _r = _m;
        };
        var _p:stdgo.GoInt = _n - (1 : stdgo.GoInt);
        while (_start < _r) {
            var _c:stdgo.GoInt = ((_start + _r : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt);
            if (!_data.less(_p - _c, _c)) {
                _start = _c + (1 : stdgo.GoInt);
            } else {
                _r = _c;
            };
        };
        var _end:stdgo.GoInt = _n - _start;
        if ((_start < _m) && (_m < _end)) {
            _rotate_func(_data?.__copy__(), _start, _m, _end);
        };
        if ((_a < _start) && (_start < _mid)) {
            _symMerge_func(_data?.__copy__(), _a, _start, _mid);
        };
        if ((_mid < _end) && (_end < _b)) {
            _symMerge_func(_data?.__copy__(), _mid, _end, _b);
        };
    }
/**
    // rotate_func rotates two consecutive blocks u = data[a:m] and v = data[m:b] in data:
    // Data of the form 'x u v y' is changed to 'x v u y'.
    // rotate performs at most b-a many calls to data.Swap,
    // and it assumes non-degenerate arguments: a < m && m < b.
**/
function _rotate_func(_data:T_lessSwap, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _i:stdgo.GoInt = _m - _a;
        var _j:stdgo.GoInt = _b - _m;
        while (_i != (_j)) {
            if (_i > _j) {
                _swapRange_func(_data?.__copy__(), _m - _i, _m, _j);
                _i = _i - (_j);
            } else {
                _swapRange_func(_data?.__copy__(), _m - _i, (_m + _j) - _i, _i);
                _j = _j - (_i);
            };
        };
        _swapRange_func(_data?.__copy__(), _m - _i, _m, _i);
    }
/**
    // insertionSort sorts data[a:b] using insertion sort.
**/
function _insertionSort(_data:Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        {
            var _i:stdgo.GoInt = _a + (1 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _b, _i++, {
                {
                    var _j:stdgo.GoInt = _i;
                    stdgo.Go.cfor((_j > _a) && _data.less(_j, _j - (1 : stdgo.GoInt)), _j--, {
                        _data.swap(_j, _j - (1 : stdgo.GoInt));
                    });
                };
            });
        };
    }
/**
    // siftDown implements the heap property on data[lo:hi].
    // first is an offset into the array where the root of the heap lies.
**/
function _siftDown(_data:Interface, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt):Void {
        var _root:stdgo.GoInt = _lo;
        while (true) {
            var _child:stdgo.GoInt = ((2 : stdgo.GoInt) * _root) + (1 : stdgo.GoInt);
            if (_child >= _hi) {
                break;
            };
            if (((_child + (1 : stdgo.GoInt)) < _hi) && _data.less(_first + _child, (_first + _child) + (1 : stdgo.GoInt))) {
                _child++;
            };
            if (!_data.less(_first + _root, _first + _child)) {
                return;
            };
            _data.swap(_first + _root, _first + _child);
            _root = _child;
        };
    }
function _heapSort(_data:Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _first:stdgo.GoInt = _a;
        var _lo:stdgo.GoInt = (0 : stdgo.GoInt);
        var _hi:stdgo.GoInt = _b - _a;
        {
            var _i:stdgo.GoInt = (_hi - (1 : stdgo.GoInt)) / (2 : stdgo.GoInt);
            stdgo.Go.cfor(_i >= (0 : stdgo.GoInt), _i--, {
                _siftDown(_data, _i, _hi, _first);
            });
        };
        {
            var _i:stdgo.GoInt = _hi - (1 : stdgo.GoInt);
            stdgo.Go.cfor(_i >= (0 : stdgo.GoInt), _i--, {
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
function _pdqsort(_data:Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt):Void {
        {};
        var __0:Bool = true, __1:Bool = true, _wasPartitioned:Bool = __1, _wasBalanced:Bool = __0;
        while (true) {
            var _length:stdgo.GoInt = _b - _a;
            if (_length <= (12 : stdgo.GoInt)) {
                _insertionSort(_data, _a, _b);
                return;
            };
            if (_limit == ((0 : stdgo.GoInt))) {
                _heapSort(_data, _a, _b);
                return;
            };
            if (!_wasBalanced) {
                _breakPatterns(_data, _a, _b);
                _limit--;
            };
            var __tmp__ = _choosePivot(_data, _a, _b), _pivot:stdgo.GoInt = __tmp__._0, _hint:stdgo.sort.Sort.T_sortedHint = __tmp__._1;
            if (_hint == ((2 : stdgo.sort.Sort.T_sortedHint))) {
                _reverseRange(_data, _a, _b);
                _pivot = (_b - (1 : stdgo.GoInt)) - (_pivot - _a);
                _hint = (1 : stdgo.sort.Sort.T_sortedHint);
            };
            if ((_wasBalanced && _wasPartitioned) && (_hint == (1 : stdgo.sort.Sort.T_sortedHint))) {
                if (_partialInsertionSort(_data, _a, _b)) {
                    return;
                };
            };
            if ((_a > (0 : stdgo.GoInt)) && !_data.less(_a - (1 : stdgo.GoInt), _pivot)) {
                var _mid:stdgo.GoInt = _partitionEqual(_data, _a, _b, _pivot);
                _a = _mid;
                continue;
            };
            var __tmp__ = _partition(_data, _a, _b, _pivot), _mid:stdgo.GoInt = __tmp__._0, _alreadyPartitioned:Bool = __tmp__._1;
            _wasPartitioned = _alreadyPartitioned;
            var __0:stdgo.GoInt = _mid - _a, __1:stdgo.GoInt = _b - _mid, _rightLen:stdgo.GoInt = __1, _leftLen:stdgo.GoInt = __0;
            var _balanceThreshold:stdgo.GoInt = _length / (8 : stdgo.GoInt);
            if (_leftLen < _rightLen) {
                _wasBalanced = _leftLen >= _balanceThreshold;
                _pdqsort(_data, _a, _mid, _limit);
                _a = _mid + (1 : stdgo.GoInt);
            } else {
                _wasBalanced = _rightLen >= _balanceThreshold;
                _pdqsort(_data, _mid + (1 : stdgo.GoInt), _b, _limit);
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
function _partition(_data:Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        var _newpivot:stdgo.GoInt = (0 : stdgo.GoInt), _alreadyPartitioned:Bool = false;
        _data.swap(_a, _pivot);
        var __0:stdgo.GoInt = _a + (1 : stdgo.GoInt), __1:stdgo.GoInt = _b - (1 : stdgo.GoInt), _j:stdgo.GoInt = __1, _i:stdgo.GoInt = __0;
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
function _partitionEqual(_data:Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):stdgo.GoInt {
        var _newpivot:stdgo.GoInt = (0 : stdgo.GoInt);
        _data.swap(_a, _pivot);
        var __0:stdgo.GoInt = _a + (1 : stdgo.GoInt), __1:stdgo.GoInt = _b - (1 : stdgo.GoInt), _j:stdgo.GoInt = __1, _i:stdgo.GoInt = __0;
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
function _partialInsertionSort(_data:Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Bool {
        {};
        var _i:stdgo.GoInt = _a + (1 : stdgo.GoInt);
        {
            var _j:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_j < (5 : stdgo.GoInt), _j++, {
                while ((_i < _b) && !_data.less(_i, _i - (1 : stdgo.GoInt))) {
                    _i++;
                };
                if (_i == (_b)) {
                    return true;
                };
                if ((_b - _a) < (50 : stdgo.GoInt)) {
                    return false;
                };
                _data.swap(_i, _i - (1 : stdgo.GoInt));
                if ((_i - _a) >= (2 : stdgo.GoInt)) {
                    {
                        var _j:stdgo.GoInt = _i - (1 : stdgo.GoInt);
                        stdgo.Go.cfor(_j >= (1 : stdgo.GoInt), _j--, {
                            if (!_data.less(_j, _j - (1 : stdgo.GoInt))) {
                                break;
                            };
                            _data.swap(_j, _j - (1 : stdgo.GoInt));
                        });
                    };
                };
                if ((_b - _i) >= (2 : stdgo.GoInt)) {
                    {
                        var _j:stdgo.GoInt = _i + (1 : stdgo.GoInt);
                        stdgo.Go.cfor(_j < _b, _j++, {
                            if (!_data.less(_j, _j - (1 : stdgo.GoInt))) {
                                break;
                            };
                            _data.swap(_j, _j - (1 : stdgo.GoInt));
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
function _breakPatterns(_data:Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _length:stdgo.GoInt = _b - _a;
        if (_length >= (8 : stdgo.GoInt)) {
            var _random:stdgo.sort.Sort.T_xorshift = (_length : T_xorshift);
            var _modulus:stdgo.GoUInt = _nextPowerOfTwo(_length);
            {
                var _idx:stdgo.GoInt = (_a + ((_length / (4 : stdgo.GoInt)) * (2 : stdgo.GoInt))) - (1 : stdgo.GoInt);
                stdgo.Go.cfor(_idx <= ((_a + ((_length / (4 : stdgo.GoInt)) * (2 : stdgo.GoInt))) + (1 : stdgo.GoInt)), _idx++, {
                    var _other:stdgo.GoInt = ((_random.next(stdgo.Go.pointer(_random)) : stdgo.GoUInt) & (_modulus - (1u32 : stdgo.GoUInt)) : stdgo.GoInt);
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
function _choosePivot(_data:Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : T_sortedHint; } {
        var _pivot:stdgo.GoInt = (0 : stdgo.GoInt), _hint:T_sortedHint = ((0 : stdgo.GoInt) : stdgo.sort.Sort.T_sortedHint);
        {};
        var _l:stdgo.GoInt = _b - _a;
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = _a + ((_l / (4 : stdgo.GoInt)) * (1 : stdgo.GoInt)), __2:stdgo.GoInt = _a + ((_l / (4 : stdgo.GoInt)) * (2 : stdgo.GoInt)), __3:stdgo.GoInt = _a + ((_l / (4 : stdgo.GoInt)) * (3 : stdgo.GoInt)), _k:stdgo.GoInt = __3, _j:stdgo.GoInt = __2, _i:stdgo.GoInt = __1, _swaps:stdgo.GoInt = __0;
        if (_l >= (8 : stdgo.GoInt)) {
            if (_l >= (50 : stdgo.GoInt)) {
                _i = _medianAdjacent(_data, _i, stdgo.Go.pointer(_swaps));
                _j = _medianAdjacent(_data, _j, stdgo.Go.pointer(_swaps));
                _k = _medianAdjacent(_data, _k, stdgo.Go.pointer(_swaps));
            };
            _j = _median(_data, _i, _j, _k, stdgo.Go.pointer(_swaps));
        };
        {
            final __value__ = _swaps;
            if (__value__ == ((0 : stdgo.GoInt))) {
                return { _0 : _j, _1 : (1 : stdgo.sort.Sort.T_sortedHint) };
            } else if (__value__ == ((12 : stdgo.GoInt))) {
                return { _0 : _j, _1 : (2 : stdgo.sort.Sort.T_sortedHint) };
            } else {
                return { _0 : _j, _1 : (0 : stdgo.sort.Sort.T_sortedHint) };
            };
        };
    }
/**
    // order2 returns x,y where data[x] <= data[y], where x,y=a,b or x,y=b,a.
**/
function _order2(_data:Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        if (_data.less(_b, _a)) {
            _swaps.value++;
            return { _0 : _b, _1 : _a };
        };
        return { _0 : _a, _1 : _b };
    }
/**
    // median returns x where data[x] is the median of data[a],data[b],data[c], where x is a, b, or c.
**/
function _median(_data:Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt {
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
function _medianAdjacent(_data:Interface, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt {
        return _median(_data, _a - (1 : stdgo.GoInt), _a, _a + (1 : stdgo.GoInt), _swaps);
    }
function _reverseRange(_data:Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _i:stdgo.GoInt = _a;
        var _j:stdgo.GoInt = _b - (1 : stdgo.GoInt);
        while (_i < _j) {
            _data.swap(_i, _j);
            _i++;
            _j--;
        };
    }
function _swapRange(_data:Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt):Void {
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _n, _i++, {
                _data.swap(_a + _i, _b + _i);
            });
        };
    }
function _stable(_data:Interface, _n:stdgo.GoInt):Void {
        var _blockSize:stdgo.GoInt = (20 : stdgo.GoInt);
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = _blockSize, _b:stdgo.GoInt = __1, _a:stdgo.GoInt = __0;
        while (_b <= _n) {
            _insertionSort(_data, _a, _b);
            _a = _b;
            _b = _b + (_blockSize);
        };
        _insertionSort(_data, _a, _n);
        while (_blockSize < _n) {
            {
                final __tmp__0 = (0 : stdgo.GoInt);
                final __tmp__1 = (2 : stdgo.GoInt) * _blockSize;
                _a = __tmp__0;
                _b = __tmp__1;
            };
            while (_b <= _n) {
                _symMerge(_data, _a, _a + _blockSize, _b);
                _a = _b;
                _b = _b + ((2 : stdgo.GoInt) * _blockSize);
            };
            {
                var _m:stdgo.GoInt = _a + _blockSize;
                if (_m < _n) {
                    _symMerge(_data, _a, _m, _n);
                };
            };
            _blockSize = _blockSize * ((2 : stdgo.GoInt));
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
function _symMerge(_data:Interface, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void {
        if (_m - _a == ((1 : stdgo.GoInt))) {
            var _i:stdgo.GoInt = _m;
            var _j:stdgo.GoInt = _b;
            while (_i < _j) {
                var _h:stdgo.GoInt = ((_i + _j : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt);
                if (_data.less(_h, _a)) {
                    _i = _h + (1 : stdgo.GoInt);
                } else {
                    _j = _h;
                };
            };
            {
                var _k:stdgo.GoInt = _a;
                stdgo.Go.cfor(_k < (_i - (1 : stdgo.GoInt)), _k++, {
                    _data.swap(_k, _k + (1 : stdgo.GoInt));
                });
            };
            return;
        };
        if (_b - _m == ((1 : stdgo.GoInt))) {
            var _i:stdgo.GoInt = _a;
            var _j:stdgo.GoInt = _m;
            while (_i < _j) {
                var _h:stdgo.GoInt = ((_i + _j : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt);
                if (!_data.less(_m, _h)) {
                    _i = _h + (1 : stdgo.GoInt);
                } else {
                    _j = _h;
                };
            };
            {
                var _k:stdgo.GoInt = _m;
                stdgo.Go.cfor(_k > _i, _k--, {
                    _data.swap(_k, _k - (1 : stdgo.GoInt));
                });
            };
            return;
        };
        var _mid:stdgo.GoInt = ((_a + _b : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt);
        var _n:stdgo.GoInt = _mid + _m;
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt), _r:stdgo.GoInt = __1, _start:stdgo.GoInt = __0;
        if (_m > _mid) {
            _start = _n - _b;
            _r = _mid;
        } else {
            _start = _a;
            _r = _m;
        };
        var _p:stdgo.GoInt = _n - (1 : stdgo.GoInt);
        while (_start < _r) {
            var _c:stdgo.GoInt = ((_start + _r : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt);
            if (!_data.less(_p - _c, _c)) {
                _start = _c + (1 : stdgo.GoInt);
            } else {
                _r = _c;
            };
        };
        var _end:stdgo.GoInt = _n - _start;
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
function _rotate(_data:Interface, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _i:stdgo.GoInt = _m - _a;
        var _j:stdgo.GoInt = _b - _m;
        while (_i != (_j)) {
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
class T_reverse_asInterface {
    /**
        // Less returns the opposite of the embedded implementation's Less method.
    **/
    @:keep
    public dynamic function less(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool return __self__.value.less(_i, _j);
    @:embedded
    public dynamic function swap(_i_:stdgo.GoInt, _j_:stdgo.GoInt):Void __self__.value.swap(_i_, _j_);
    @:embedded
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_reverse>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sort.Sort.T_reverse_asInterface) class T_reverse_static_extension {
    /**
        // Less returns the opposite of the embedded implementation's Less method.
    **/
    @:keep
    static public function less( _r:T_reverse, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _r:T_reverse = _r?.__copy__();
        return _r.interface_.less(_j, _i);
    }
    @:embedded
    public static function swap( __self__:T_reverse, _i_:stdgo.GoInt, _j_:stdgo.GoInt) __self__.swap(_i_, _j_);
    @:embedded
    public static function len( __self__:T_reverse):stdgo.GoInt return __self__.len();
}
class T_xorshift_asInterface {
    @:keep
    @:pointer
    public dynamic function next():stdgo.GoUInt64 return __self__.value.next(__self__);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_xorshift>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sort.Sort.T_xorshift_asInterface) class T_xorshift_static_extension {
    @:keep
    @:pointer
    static public function next(____:T_xorshift,  _r:stdgo.Pointer<T_xorshift>):stdgo.GoUInt64 {
        _r.value = _r.value ^ (_r.value << (13i64 : stdgo.GoUInt64));
        _r.value = _r.value ^ (_r.value >> (17i64 : stdgo.GoUInt64));
        _r.value = _r.value ^ (_r.value << (5i64 : stdgo.GoUInt64));
        return (_r.value : stdgo.GoUInt64);
    }
}
class IntSlice_asInterface {
    /**
        // Sort is a convenience method: x.Sort() calls Sort(x).
    **/
    @:keep
    public dynamic function sort():Void __self__.value.sort();
    @:keep
    public dynamic function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void __self__.value.swap(_i, _j);
    @:keep
    public dynamic function less(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool return __self__.value.less(_i, _j);
    @:keep
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    /**
        // Search returns the result of applying SearchInts to the receiver and x.
    **/
    @:keep
    public dynamic function search(_x:stdgo.GoInt):stdgo.GoInt return __self__.value.search(_x);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<IntSlice>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sort.Sort.IntSlice_asInterface) class IntSlice_static_extension {
    /**
        // Sort is a convenience method: x.Sort() calls Sort(x).
    **/
    @:keep
    static public function sort( _x:IntSlice):Void {
        @:recv var _x:IntSlice = _x;
        stdgo.sort.Sort.sort(stdgo.Go.asInterface(_x));
    }
    @:keep
    static public function swap( _x:IntSlice, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _x:IntSlice = _x;
        {
            final __tmp__0 = _x[(_j : stdgo.GoInt)];
            final __tmp__1 = _x[(_i : stdgo.GoInt)];
            _x[(_i : stdgo.GoInt)] = __tmp__0;
            _x[(_j : stdgo.GoInt)] = __tmp__1;
        };
    }
    @:keep
    static public function less( _x:IntSlice, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _x:IntSlice = _x;
        return _x[(_i : stdgo.GoInt)] < _x[(_j : stdgo.GoInt)];
    }
    @:keep
    static public function len( _x:IntSlice):stdgo.GoInt {
        @:recv var _x:IntSlice = _x;
        return (_x.length);
    }
    /**
        // Search returns the result of applying SearchInts to the receiver and x.
    **/
    @:keep
    static public function search( _p:IntSlice, _x:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:IntSlice = _p;
        return searchInts(_p, _x);
    }
}
class Float64Slice_asInterface {
    /**
        // Sort is a convenience method: x.Sort() calls Sort(x).
    **/
    @:keep
    public dynamic function sort():Void __self__.value.sort();
    @:keep
    public dynamic function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void __self__.value.swap(_i, _j);
    /**
        // Less reports whether x[i] should be ordered before x[j], as required by the sort Interface.
        // Note that floating-point comparison by itself is not a transitive relation: it does not
        // report a consistent ordering for not-a-number (NaN) values.
        // This implementation of Less places NaN values before any others, by using:
        //
        //	x[i] < x[j] || (math.IsNaN(x[i]) && !math.IsNaN(x[j]))
    **/
    @:keep
    public dynamic function less(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool return __self__.value.less(_i, _j);
    @:keep
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    /**
        // Search returns the result of applying SearchFloat64s to the receiver and x.
    **/
    @:keep
    public dynamic function search(_x:stdgo.GoFloat64):stdgo.GoInt return __self__.value.search(_x);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Float64Slice>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sort.Sort.Float64Slice_asInterface) class Float64Slice_static_extension {
    /**
        // Sort is a convenience method: x.Sort() calls Sort(x).
    **/
    @:keep
    static public function sort( _x:Float64Slice):Void {
        @:recv var _x:Float64Slice = _x;
        stdgo.sort.Sort.sort(stdgo.Go.asInterface(_x));
    }
    @:keep
    static public function swap( _x:Float64Slice, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _x:Float64Slice = _x;
        {
            final __tmp__0 = _x[(_j : stdgo.GoInt)];
            final __tmp__1 = _x[(_i : stdgo.GoInt)];
            _x[(_i : stdgo.GoInt)] = __tmp__0;
            _x[(_j : stdgo.GoInt)] = __tmp__1;
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
    static public function less( _x:Float64Slice, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _x:Float64Slice = _x;
        return (_x[(_i : stdgo.GoInt)] < _x[(_j : stdgo.GoInt)]) || (_isNaN(_x[(_i : stdgo.GoInt)]) && !_isNaN(_x[(_j : stdgo.GoInt)]));
    }
    @:keep
    static public function len( _x:Float64Slice):stdgo.GoInt {
        @:recv var _x:Float64Slice = _x;
        return (_x.length);
    }
    /**
        // Search returns the result of applying SearchFloat64s to the receiver and x.
    **/
    @:keep
    static public function search( _p:Float64Slice, _x:stdgo.GoFloat64):stdgo.GoInt {
        @:recv var _p:Float64Slice = _p;
        return searchFloat64s(_p, _x);
    }
}
class StringSlice_asInterface {
    /**
        // Sort is a convenience method: x.Sort() calls Sort(x).
    **/
    @:keep
    public dynamic function sort():Void __self__.value.sort();
    @:keep
    public dynamic function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void __self__.value.swap(_i, _j);
    @:keep
    public dynamic function less(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool return __self__.value.less(_i, _j);
    @:keep
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    /**
        // Search returns the result of applying SearchStrings to the receiver and x.
    **/
    @:keep
    public dynamic function search(_x:stdgo.GoString):stdgo.GoInt return __self__.value.search(_x);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<StringSlice>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sort.Sort.StringSlice_asInterface) class StringSlice_static_extension {
    /**
        // Sort is a convenience method: x.Sort() calls Sort(x).
    **/
    @:keep
    static public function sort( _x:StringSlice):Void {
        @:recv var _x:StringSlice = _x;
        stdgo.sort.Sort.sort(stdgo.Go.asInterface(_x));
    }
    @:keep
    static public function swap( _x:StringSlice, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _x:StringSlice = _x;
        {
            final __tmp__0 = _x[(_j : stdgo.GoInt)]?.__copy__();
            final __tmp__1 = _x[(_i : stdgo.GoInt)]?.__copy__();
            _x[(_i : stdgo.GoInt)] = __tmp__0;
            _x[(_j : stdgo.GoInt)] = __tmp__1;
        };
    }
    @:keep
    static public function less( _x:StringSlice, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _x:StringSlice = _x;
        return _x[(_i : stdgo.GoInt)] < _x[(_j : stdgo.GoInt)];
    }
    @:keep
    static public function len( _x:StringSlice):stdgo.GoInt {
        @:recv var _x:StringSlice = _x;
        return (_x.length);
    }
    /**
        // Search returns the result of applying SearchStrings to the receiver and x.
    **/
    @:keep
    static public function search( _p:StringSlice, _x:stdgo.GoString):stdgo.GoInt {
        @:recv var _p:StringSlice = _p;
        return searchStrings(_p, _x?.__copy__());
    }
}

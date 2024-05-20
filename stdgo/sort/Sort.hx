package stdgo.sort;
class Interface_static_extension {
    static public function swap(t:Interface, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        stdgo._internal.sort.Sort.Interface_static_extension.swap(t, _i, _j);
    }
    static public function less(t:Interface, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        return stdgo._internal.sort.Sort.Interface_static_extension.less(t, _i, _j);
    }
    static public function len(t:Interface):StdTypes.Int {
        return stdgo._internal.sort.Sort.Interface_static_extension.len(t);
    }
}
typedef Interface = stdgo._internal.sort.Sort.Interface;
@:structInit @:private abstract T_lessSwap(stdgo._internal.sort.Sort.T_lessSwap) from stdgo._internal.sort.Sort.T_lessSwap to stdgo._internal.sort.Sort.T_lessSwap {
    public var less(get, set) : (stdgo.GoInt, stdgo.GoInt) -> Bool;
    function get_less():(stdgo.GoInt, stdgo.GoInt) -> Bool return (_0, _1) -> this.less(_0, _1);
    function set_less(v:(stdgo.GoInt, stdgo.GoInt) -> Bool):(stdgo.GoInt, stdgo.GoInt) -> Bool {
        this.less = v;
        return v;
    }
    public var swap(get, set) : (stdgo.GoInt, stdgo.GoInt) -> Void;
    function get_swap():(stdgo.GoInt, stdgo.GoInt) -> Void return (_0, _1) -> this.swap(_0, _1);
    function set_swap(v:(stdgo.GoInt, stdgo.GoInt) -> Void):(stdgo.GoInt, stdgo.GoInt) -> Void {
        this.swap = v;
        return v;
    }
    public function new(?less:(stdgo.GoInt, stdgo.GoInt) -> Bool, ?swap:(stdgo.GoInt, stdgo.GoInt) -> Void) this = new stdgo._internal.sort.Sort.T_lessSwap(less, swap);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.sort.Sort.T_reverse_static_extension) abstract T_reverse(stdgo._internal.sort.Sort.T_reverse) from stdgo._internal.sort.Sort.T_reverse to stdgo._internal.sort.Sort.T_reverse {
    public var interface_(get, set) : stdgo._internal.sort.Sort.Interface;
    function get_interface_():stdgo._internal.sort.Sort.Interface return this.interface_;
    function set_interface_(v:stdgo._internal.sort.Sort.Interface):stdgo._internal.sort.Sort.Interface {
        this.interface_ = v;
        return v;
    }
    public function new(?interface_:stdgo._internal.sort.Sort.Interface) this = new stdgo._internal.sort.Sort.T_reverse(interface_);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T_sortedHint = stdgo._internal.sort.Sort.T_sortedHint;
typedef T_xorshift = stdgo._internal.sort.Sort.T_xorshift;
typedef IntSlice = stdgo._internal.sort.Sort.IntSlice;
typedef Float64Slice = stdgo._internal.sort.Sort.Float64Slice;
typedef StringSlice = stdgo._internal.sort.Sort.StringSlice;
class T_reverse_static_extension {
    static public function less(_r:T_reverse, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        return stdgo._internal.sort.Sort.T_reverse_static_extension.less(_r, _i, _j);
    }
    public static function swap(__self__:T_reverse, _i_:StdTypes.Int, _j_:StdTypes.Int) {
        stdgo._internal.sort.Sort.T_reverse_static_extension.swap(__self__, _i_, _j_);
    }
    public static function len(__self__:T_reverse):StdTypes.Int {
        return stdgo._internal.sort.Sort.T_reverse_static_extension.len(__self__);
    }
}
class T_xorshift_static_extension {
    static public function next(____:T_xorshift, _r:stdgo.Pointer<T_xorshift>):haxe.UInt64 {
        return stdgo._internal.sort.Sort.T_xorshift_static_extension.next(____, _r);
    }
}
class IntSlice_static_extension {
    static public function sort(_x:IntSlice):Void {
        stdgo._internal.sort.Sort.IntSlice_static_extension.sort(_x);
    }
    static public function swap(_x:IntSlice, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        stdgo._internal.sort.Sort.IntSlice_static_extension.swap(_x, _i, _j);
    }
    static public function less(_x:IntSlice, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        return stdgo._internal.sort.Sort.IntSlice_static_extension.less(_x, _i, _j);
    }
    static public function len(_x:IntSlice):StdTypes.Int {
        return stdgo._internal.sort.Sort.IntSlice_static_extension.len(_x);
    }
    static public function search(_p:IntSlice, _x:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.sort.Sort.IntSlice_static_extension.search(_p, _x);
    }
}
class Float64Slice_static_extension {
    static public function sort(_x:Float64Slice):Void {
        stdgo._internal.sort.Sort.Float64Slice_static_extension.sort(_x);
    }
    static public function swap(_x:Float64Slice, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        stdgo._internal.sort.Sort.Float64Slice_static_extension.swap(_x, _i, _j);
    }
    static public function less(_x:Float64Slice, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        return stdgo._internal.sort.Sort.Float64Slice_static_extension.less(_x, _i, _j);
    }
    static public function len(_x:Float64Slice):StdTypes.Int {
        return stdgo._internal.sort.Sort.Float64Slice_static_extension.len(_x);
    }
    static public function search(_p:Float64Slice, _x:StdTypes.Float):StdTypes.Int {
        return stdgo._internal.sort.Sort.Float64Slice_static_extension.search(_p, _x);
    }
}
class StringSlice_static_extension {
    static public function sort(_x:StringSlice):Void {
        stdgo._internal.sort.Sort.StringSlice_static_extension.sort(_x);
    }
    static public function swap(_x:StringSlice, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        stdgo._internal.sort.Sort.StringSlice_static_extension.swap(_x, _i, _j);
    }
    static public function less(_x:StringSlice, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        return stdgo._internal.sort.Sort.StringSlice_static_extension.less(_x, _i, _j);
    }
    static public function len(_x:StringSlice):StdTypes.Int {
        return stdgo._internal.sort.Sort.StringSlice_static_extension.len(_x);
    }
    static public function search(_p:StringSlice, _x:String):StdTypes.Int {
        return stdgo._internal.sort.Sort.StringSlice_static_extension.search(_p, _x);
    }
}
/**
    Package sort provides primitives for sorting slices and user-defined collections.
**/
class Sort {
    static public function heapsort(_data:Interface):Void {
        stdgo._internal.sort.Sort.heapsort(_data);
    }
    static public function reverseRange(_data:Interface, _a:StdTypes.Int, _b:StdTypes.Int):Void {
        stdgo._internal.sort.Sort.reverseRange(_data, _a, _b);
    }
    /**
        Search uses binary search to find and return the smallest index i
        in [0, n) at which f(i) is true, assuming that on the range [0, n),
        f(i) == true implies f(i+1) == true. That is, Search requires that
        f is false for some (possibly empty) prefix of the input range [0, n)
        and then true for the (possibly empty) remainder; Search returns
        the first true index. If there is no such index, Search returns n.
        (Note that the "not found" return value is not -1 as in, for instance,
        strings.Index.)
        Search calls f(i) only for i in the range [0, n).
        
        A common use of Search is to find the index i for a value x in
        a sorted, indexable data structure such as an array or slice.
        In this case, the argument f, typically a closure, captures the value
        to be searched for, and how the data structure is indexed and
        ordered.
        
        For instance, given a slice data sorted in ascending order,
        the call Search(len(data), func(i int) bool { return data[i] >= 23 })
        returns the smallest index i such that data[i] >= 23. If the caller
        wants to find whether 23 is in the slice, it must test data[i] == 23
        separately.
        
        Searching data sorted in descending order would use the <=
        operator instead of the >= operator.
        
        To complete the example above, the following code tries to find the value
        x in an integer slice data sorted in ascending order:
        
        	x := 23
        	i := sort.Search(len(data), func(i int) bool { return data[i] >= x })
        	if i < len(data) && data[i] == x {
        		// x is present at data[i]
        	} else {
        		// x is not present in data,
        		// but i is the index where it would be inserted.
        	}
        
        As a more whimsical example, this program guesses your number:
        
        	func GuessingGame() {
        		var s string
        		fmt.Printf("Pick an integer from 0 to 100.\n")
        		answer := sort.Search(100, func(i int) bool {
        			fmt.Printf("Is your number <= %d? ", i)
        			fmt.Scanf("%s", &s)
        			return s != "" && s[0] == 'y'
        		})
        		fmt.Printf("Your number is %d.\n", answer)
        	}
    **/
    static public function search(_n:StdTypes.Int, _f:stdgo.GoInt -> Bool):StdTypes.Int {
        final _f = _f;
        return stdgo._internal.sort.Sort.search(_n, _f);
    }
    /**
        Find uses binary search to find and return the smallest index i in [0, n)
        at which cmp(i) <= 0. If there is no such index i, Find returns i = n.
        The found result is true if i < n and cmp(i) == 0.
        Find calls cmp(i) only for i in the range [0, n).
        
        To permit binary search, Find requires that cmp(i) > 0 for a leading
        prefix of the range, cmp(i) == 0 in the middle, and cmp(i) < 0 for
        the final suffix of the range. (Each subrange could be empty.)
        The usual way to establish this condition is to interpret cmp(i)
        as a comparison of a desired target value t against entry i in an
        underlying indexed data structure x, returning <0, 0, and >0
        when t < x[i], t == x[i], and t > x[i], respectively.
        
        For example, to look for a particular string in a sorted, random-access
        list of strings:
        
        	i, found := sort.Find(x.Len(), func(i int) int {
        	    return strings.Compare(target, x.At(i))
        	})
        	if found {
        	    fmt.Printf("found %s at entry %d\n", target, i)
        	} else {
        	    fmt.Printf("%s not found, would insert at %d", target, i)
        	}
    **/
    static public function find(_n:StdTypes.Int, _cmp:stdgo.GoInt -> stdgo.GoInt):stdgo.Tuple<StdTypes.Int, Bool> {
        final _cmp = _cmp;
        return {
            final obj = stdgo._internal.sort.Sort.find(_n, _cmp);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        SearchInts searches for x in a sorted slice of ints and returns the index
        as specified by Search. The return value is the index to insert x if x is
        not present (it could be len(a)).
        The slice must be sorted in ascending order.
    **/
    static public function searchInts(_a:Array<StdTypes.Int>, _x:StdTypes.Int):StdTypes.Int {
        final _a = ([for (i in _a) i] : stdgo.Slice<stdgo.GoInt>);
        return stdgo._internal.sort.Sort.searchInts(_a, _x);
    }
    /**
        SearchFloat64s searches for x in a sorted slice of float64s and returns the index
        as specified by Search. The return value is the index to insert x if x is not
        present (it could be len(a)).
        The slice must be sorted in ascending order.
    **/
    static public function searchFloat64s(_a:Array<StdTypes.Float>, _x:StdTypes.Float):StdTypes.Int {
        final _a = ([for (i in _a) i] : stdgo.Slice<stdgo.GoFloat64>);
        return stdgo._internal.sort.Sort.searchFloat64s(_a, _x);
    }
    /**
        SearchStrings searches for x in a sorted slice of strings and returns the index
        as specified by Search. The return value is the index to insert x if x is not
        present (it could be len(a)).
        The slice must be sorted in ascending order.
    **/
    static public function searchStrings(_a:Array<String>, _x:String):StdTypes.Int {
        final _a = ([for (i in _a) i] : stdgo.Slice<stdgo.GoString>);
        return stdgo._internal.sort.Sort.searchStrings(_a, _x);
    }
    /**
        Slice sorts the slice x given the provided less function.
        It panics if x is not a slice.
        
        The sort is not guaranteed to be stable: equal elements
        may be reversed from their original order.
        For a stable sort, use SliceStable.
        
        The less function must satisfy the same requirements as
        the Interface type's Less method.
    **/
    static public function slice(_x:stdgo.AnyInterface, _less:(_i:stdgo.GoInt, _j:stdgo.GoInt) -> Bool):Void {
        final _less = _less;
        stdgo._internal.sort.Sort.slice(_x, _less);
    }
    /**
        SliceStable sorts the slice x using the provided less
        function, keeping equal elements in their original order.
        It panics if x is not a slice.
        
        The less function must satisfy the same requirements as
        the Interface type's Less method.
    **/
    static public function sliceStable(_x:stdgo.AnyInterface, _less:(_i:stdgo.GoInt, _j:stdgo.GoInt) -> Bool):Void {
        final _less = _less;
        stdgo._internal.sort.Sort.sliceStable(_x, _less);
    }
    /**
        SliceIsSorted reports whether the slice x is sorted according to the provided less function.
        It panics if x is not a slice.
    **/
    static public function sliceIsSorted(_x:stdgo.AnyInterface, _less:(_i:stdgo.GoInt, _j:stdgo.GoInt) -> Bool):Bool {
        final _less = _less;
        return stdgo._internal.sort.Sort.sliceIsSorted(_x, _less);
    }
    /**
        Sort sorts data in ascending order as determined by the Less method.
        It makes one call to data.Len to determine n and O(n*log(n)) calls to
        data.Less and data.Swap. The sort is not guaranteed to be stable.
        
        Note: in many situations, the newer slices.SortFunc function is more
        ergonomic and runs faster.
    **/
    static public function sort(_data:Interface):Void {
        stdgo._internal.sort.Sort.sort(_data);
    }
    /**
        Reverse returns the reverse order for data.
    **/
    static public function reverse(_data:Interface):Interface {
        return stdgo._internal.sort.Sort.reverse(_data);
    }
    /**
        IsSorted reports whether data is sorted.
        
        Note: in many situations, the newer slices.IsSortedFunc function is more
        ergonomic and runs faster.
    **/
    static public function isSorted(_data:Interface):Bool {
        return stdgo._internal.sort.Sort.isSorted(_data);
    }
    /**
        Ints sorts a slice of ints in increasing order.
        
        Note: consider using the newer slices.Sort function, which runs faster.
    **/
    static public function ints(_x:Array<StdTypes.Int>):Void {
        final _x = ([for (i in _x) i] : stdgo.Slice<stdgo.GoInt>);
        stdgo._internal.sort.Sort.ints(_x);
    }
    /**
        Float64s sorts a slice of float64s in increasing order.
        Not-a-number (NaN) values are ordered before other values.
        
        Note: consider using the newer slices.Sort function, which runs faster.
    **/
    static public function float64s(_x:Array<StdTypes.Float>):Void {
        final _x = ([for (i in _x) i] : stdgo.Slice<stdgo.GoFloat64>);
        stdgo._internal.sort.Sort.float64s(_x);
    }
    /**
        Strings sorts a slice of strings in increasing order.
        
        Note: consider using the newer slices.Sort function, which runs faster.
    **/
    static public function strings(_x:Array<String>):Void {
        final _x = ([for (i in _x) i] : stdgo.Slice<stdgo.GoString>);
        stdgo._internal.sort.Sort.strings(_x);
    }
    /**
        IntsAreSorted reports whether the slice x is sorted in increasing order.
        
        Note: consider using the newer slices.IsSorted function, which runs faster.
    **/
    static public function intsAreSorted(_x:Array<StdTypes.Int>):Bool {
        final _x = ([for (i in _x) i] : stdgo.Slice<stdgo.GoInt>);
        return stdgo._internal.sort.Sort.intsAreSorted(_x);
    }
    /**
        Float64sAreSorted reports whether the slice x is sorted in increasing order,
        with not-a-number (NaN) values before any other values.
        
        Note: consider using the newer slices.IsSorted function, which runs faster.
    **/
    static public function float64sAreSorted(_x:Array<StdTypes.Float>):Bool {
        final _x = ([for (i in _x) i] : stdgo.Slice<stdgo.GoFloat64>);
        return stdgo._internal.sort.Sort.float64sAreSorted(_x);
    }
    /**
        StringsAreSorted reports whether the slice x is sorted in increasing order.
        
        Note: consider using the newer slices.IsSorted function, which runs faster.
    **/
    static public function stringsAreSorted(_x:Array<String>):Bool {
        final _x = ([for (i in _x) i] : stdgo.Slice<stdgo.GoString>);
        return stdgo._internal.sort.Sort.stringsAreSorted(_x);
    }
    /**
        Stable sorts data in ascending order as determined by the Less method,
        while keeping the original order of equal elements.
        
        It makes one call to data.Len to determine n, O(n*log(n)) calls to
        data.Less and O(n*log(n)*log(n)) calls to data.Swap.
        
        Note: in many situations, the newer slices.SortStableFunc function is more
        ergonomic and runs faster.
    **/
    static public function stable(_data:Interface):Void {
        stdgo._internal.sort.Sort.stable(_data);
    }
}

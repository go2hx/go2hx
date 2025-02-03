package stdgo.sort;
/**
    Package sort provides primitives for sorting slices and user-defined collections.
**/
class Sort {
    static public inline function heapsort(_data:Interface):Void {
        stdgo._internal.sort.Sort_heapsort.heapsort(_data);
    }
    static public inline function reverseRange(_data:Interface, _a:StdTypes.Int, _b:StdTypes.Int):Void {
        final _a = (_a : stdgo.GoInt);
        final _b = (_b : stdgo.GoInt);
        stdgo._internal.sort.Sort_reverseRange.reverseRange(_data, _a, _b);
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
    static public inline function search(_n:StdTypes.Int, _f:stdgo.GoInt -> Bool):StdTypes.Int {
        final _n = (_n : stdgo.GoInt);
        final _f = _f;
        return stdgo._internal.sort.Sort_search.search(_n, _f);
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
    static public inline function find(_n:StdTypes.Int, _cmp:stdgo.GoInt -> stdgo.GoInt):stdgo.Tuple<StdTypes.Int, Bool> {
        final _n = (_n : stdgo.GoInt);
        final _cmp = _cmp;
        return {
            final obj = stdgo._internal.sort.Sort_find.find(_n, _cmp);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        SearchInts searches for x in a sorted slice of ints and returns the index
        as specified by Search. The return value is the index to insert x if x is
        not present (it could be len(a)).
        The slice must be sorted in ascending order.
    **/
    static public inline function searchInts(_a:Array<StdTypes.Int>, _x:StdTypes.Int):StdTypes.Int {
        final _a = ([for (i in _a) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        final _x = (_x : stdgo.GoInt);
        return stdgo._internal.sort.Sort_searchInts.searchInts(_a, _x);
    }
    /**
        SearchFloat64s searches for x in a sorted slice of float64s and returns the index
        as specified by Search. The return value is the index to insert x if x is not
        present (it could be len(a)).
        The slice must be sorted in ascending order.
    **/
    static public inline function searchFloat64s(_a:Array<StdTypes.Float>, _x:StdTypes.Float):StdTypes.Int {
        final _a = ([for (i in _a) (i : stdgo.GoFloat64)] : stdgo.Slice<stdgo.GoFloat64>);
        final _x = (_x : stdgo.GoFloat64);
        return stdgo._internal.sort.Sort_searchFloat64s.searchFloat64s(_a, _x);
    }
    /**
        SearchStrings searches for x in a sorted slice of strings and returns the index
        as specified by Search. The return value is the index to insert x if x is not
        present (it could be len(a)).
        The slice must be sorted in ascending order.
    **/
    static public inline function searchStrings(_a:Array<String>, _x:String):StdTypes.Int {
        final _a = ([for (i in _a) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        final _x = (_x : stdgo.GoString);
        return stdgo._internal.sort.Sort_searchStrings.searchStrings(_a, _x);
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
    static public inline function slice(_x:stdgo.AnyInterface, _less:(stdgo.GoInt, stdgo.GoInt) -> Bool):Void {
        final _x = (_x : stdgo.AnyInterface);
        final _less = _less;
        stdgo._internal.sort.Sort_slice.slice(_x, _less);
    }
    /**
        SliceStable sorts the slice x using the provided less
        function, keeping equal elements in their original order.
        It panics if x is not a slice.
        
        The less function must satisfy the same requirements as
        the Interface type's Less method.
    **/
    static public inline function sliceStable(_x:stdgo.AnyInterface, _less:(stdgo.GoInt, stdgo.GoInt) -> Bool):Void {
        final _x = (_x : stdgo.AnyInterface);
        final _less = _less;
        stdgo._internal.sort.Sort_sliceStable.sliceStable(_x, _less);
    }
    /**
        SliceIsSorted reports whether the slice x is sorted according to the provided less function.
        It panics if x is not a slice.
    **/
    static public inline function sliceIsSorted(_x:stdgo.AnyInterface, _less:(stdgo.GoInt, stdgo.GoInt) -> Bool):Bool {
        final _x = (_x : stdgo.AnyInterface);
        final _less = _less;
        return stdgo._internal.sort.Sort_sliceIsSorted.sliceIsSorted(_x, _less);
    }
    /**
        Sort sorts data in ascending order as determined by the Less method.
        It makes one call to data.Len to determine n and O(n*log(n)) calls to
        data.Less and data.Swap. The sort is not guaranteed to be stable.
        
        Note: in many situations, the newer slices.SortFunc function is more
        ergonomic and runs faster.
    **/
    static public inline function sort(_data:Interface):Void {
        stdgo._internal.sort.Sort_sort.sort(_data);
    }
    /**
        Reverse returns the reverse order for data.
    **/
    static public inline function reverse(_data:Interface):Interface {
        return stdgo._internal.sort.Sort_reverse.reverse(_data);
    }
    /**
        IsSorted reports whether data is sorted.
        
        Note: in many situations, the newer slices.IsSortedFunc function is more
        ergonomic and runs faster.
    **/
    static public inline function isSorted(_data:Interface):Bool {
        return stdgo._internal.sort.Sort_isSorted.isSorted(_data);
    }
    /**
        Ints sorts a slice of ints in increasing order.
        
        Note: consider using the newer slices.Sort function, which runs faster.
    **/
    static public inline function ints(_x:Array<StdTypes.Int>):Void {
        final _x = ([for (i in _x) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        stdgo._internal.sort.Sort_ints.ints(_x);
    }
    /**
        Float64s sorts a slice of float64s in increasing order.
        Not-a-number (NaN) values are ordered before other values.
        
        Note: consider using the newer slices.Sort function, which runs faster.
    **/
    static public inline function float64s(_x:Array<StdTypes.Float>):Void {
        final _x = ([for (i in _x) (i : stdgo.GoFloat64)] : stdgo.Slice<stdgo.GoFloat64>);
        stdgo._internal.sort.Sort_float64s.float64s(_x);
    }
    /**
        Strings sorts a slice of strings in increasing order.
        
        Note: consider using the newer slices.Sort function, which runs faster.
    **/
    static public inline function strings(_x:Array<String>):Void {
        final _x = ([for (i in _x) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        stdgo._internal.sort.Sort_strings.strings(_x);
    }
    /**
        IntsAreSorted reports whether the slice x is sorted in increasing order.
        
        Note: consider using the newer slices.IsSorted function, which runs faster.
    **/
    static public inline function intsAreSorted(_x:Array<StdTypes.Int>):Bool {
        final _x = ([for (i in _x) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return stdgo._internal.sort.Sort_intsAreSorted.intsAreSorted(_x);
    }
    /**
        Float64sAreSorted reports whether the slice x is sorted in increasing order,
        with not-a-number (NaN) values before any other values.
        
        Note: consider using the newer slices.IsSorted function, which runs faster.
    **/
    static public inline function float64sAreSorted(_x:Array<StdTypes.Float>):Bool {
        final _x = ([for (i in _x) (i : stdgo.GoFloat64)] : stdgo.Slice<stdgo.GoFloat64>);
        return stdgo._internal.sort.Sort_float64sAreSorted.float64sAreSorted(_x);
    }
    /**
        StringsAreSorted reports whether the slice x is sorted in increasing order.
        
        Note: consider using the newer slices.IsSorted function, which runs faster.
    **/
    static public inline function stringsAreSorted(_x:Array<String>):Bool {
        final _x = ([for (i in _x) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return stdgo._internal.sort.Sort_stringsAreSorted.stringsAreSorted(_x);
    }
    /**
        Stable sorts data in ascending order as determined by the Less method,
        while keeping the original order of equal elements.
        
        It makes one call to data.Len to determine n, O(n*log(n)) calls to
        data.Less and O(n*log(n)*log(n)) calls to data.Swap.
        
        Note: in many situations, the newer slices.SortStableFunc function is more
        ergonomic and runs faster.
    **/
    static public inline function stable(_data:Interface):Void {
        stdgo._internal.sort.Sort_stable.stable(_data);
    }
}

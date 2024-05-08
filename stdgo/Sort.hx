package stdgo;
/**
    Package sort provides primitives for sorting slices and user-defined collections.
**/
private var __go2hxdoc__package : Bool;
@:forward @:forward.new abstract Interface_static_extension(stdgo._internal.sort.Sort.Interface_static_extension) from stdgo._internal.sort.Sort.Interface_static_extension to stdgo._internal.sort.Sort.Interface_static_extension {

}
typedef Interface = stdgo._internal.sort.Sort.Interface;
@:forward @:forward.new abstract T_lessSwap(stdgo._internal.sort.Sort.T_lessSwap) from stdgo._internal.sort.Sort.T_lessSwap to stdgo._internal.sort.Sort.T_lessSwap {

}
@:forward @:forward.new abstract T_reverse(stdgo._internal.sort.Sort.T_reverse) from stdgo._internal.sort.Sort.T_reverse to stdgo._internal.sort.Sort.T_reverse {

}
typedef T_sortedHint = stdgo._internal.sort.Sort.T_sortedHint;
typedef T_xorshift = stdgo._internal.sort.Sort.T_xorshift;
typedef IntSlice = stdgo._internal.sort.Sort.IntSlice;
typedef Float64Slice = stdgo._internal.sort.Sort.Float64Slice;
typedef StringSlice = stdgo._internal.sort.Sort.StringSlice;
@:forward @:forward.new abstract T_reverse_asInterface(stdgo._internal.sort.Sort.T_reverse_asInterface) from stdgo._internal.sort.Sort.T_reverse_asInterface to stdgo._internal.sort.Sort.T_reverse_asInterface {

}
@:forward @:forward.new abstract T_reverse_static_extension(stdgo._internal.sort.Sort.T_reverse_static_extension) from stdgo._internal.sort.Sort.T_reverse_static_extension to stdgo._internal.sort.Sort.T_reverse_static_extension {

}
@:forward @:forward.new abstract T_xorshift_asInterface(stdgo._internal.sort.Sort.T_xorshift_asInterface) from stdgo._internal.sort.Sort.T_xorshift_asInterface to stdgo._internal.sort.Sort.T_xorshift_asInterface {

}
@:forward @:forward.new abstract T_xorshift_static_extension(stdgo._internal.sort.Sort.T_xorshift_static_extension) from stdgo._internal.sort.Sort.T_xorshift_static_extension to stdgo._internal.sort.Sort.T_xorshift_static_extension {

}
@:forward @:forward.new abstract IntSlice_asInterface(stdgo._internal.sort.Sort.IntSlice_asInterface) from stdgo._internal.sort.Sort.IntSlice_asInterface to stdgo._internal.sort.Sort.IntSlice_asInterface {

}
@:forward @:forward.new abstract IntSlice_static_extension(stdgo._internal.sort.Sort.IntSlice_static_extension) from stdgo._internal.sort.Sort.IntSlice_static_extension to stdgo._internal.sort.Sort.IntSlice_static_extension {

}
@:forward @:forward.new abstract Float64Slice_asInterface(stdgo._internal.sort.Sort.Float64Slice_asInterface) from stdgo._internal.sort.Sort.Float64Slice_asInterface to stdgo._internal.sort.Sort.Float64Slice_asInterface {

}
@:forward @:forward.new abstract Float64Slice_static_extension(stdgo._internal.sort.Sort.Float64Slice_static_extension) from stdgo._internal.sort.Sort.Float64Slice_static_extension to stdgo._internal.sort.Sort.Float64Slice_static_extension {

}
@:forward @:forward.new abstract StringSlice_asInterface(stdgo._internal.sort.Sort.StringSlice_asInterface) from stdgo._internal.sort.Sort.StringSlice_asInterface to stdgo._internal.sort.Sort.StringSlice_asInterface {

}
@:forward @:forward.new abstract StringSlice_static_extension(stdgo._internal.sort.Sort.StringSlice_static_extension) from stdgo._internal.sort.Sort.StringSlice_static_extension to stdgo._internal.sort.Sort.StringSlice_static_extension {

}
class Sort {
    static public function heapsort(data:Interface):Void {
        stdgo._internal.sort.Sort.heapsort(data);
    }
    static public function reverseRange(data:Interface, a:StdTypes.Int, b:StdTypes.Int):Void {
        stdgo._internal.sort.Sort.reverseRange(data, a, b);
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
    static public function search(n:StdTypes.Int, f:stdgo.GoInt -> Bool):StdTypes.Int {
        final f = f;
        return stdgo._internal.sort.Sort.search(n, f);
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
    static public function find(n:StdTypes.Int, cmp:stdgo.GoInt -> stdgo.GoInt):stdgo.Tuple<StdTypes.Int, Bool> {
        final cmp = cmp;
        return {
            final obj = stdgo._internal.sort.Sort.find(n, cmp);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        SearchInts searches for x in a sorted slice of ints and returns the index
        as specified by Search. The return value is the index to insert x if x is
        not present (it could be len(a)).
        The slice must be sorted in ascending order.
    **/
    static public function searchInts(a:Array<StdTypes.Int>, x:StdTypes.Int):StdTypes.Int {
        final a = ([for (i in a) i] : stdgo.Slice<stdgo.GoInt>);
        return stdgo._internal.sort.Sort.searchInts(a, x);
    }
    /**
        SearchFloat64s searches for x in a sorted slice of float64s and returns the index
        as specified by Search. The return value is the index to insert x if x is not
        present (it could be len(a)).
        The slice must be sorted in ascending order.
    **/
    static public function searchFloat64s(a:Array<StdTypes.Float>, x:StdTypes.Float):StdTypes.Int {
        final a = ([for (i in a) i] : stdgo.Slice<stdgo.GoFloat64>);
        return stdgo._internal.sort.Sort.searchFloat64s(a, x);
    }
    /**
        SearchStrings searches for x in a sorted slice of strings and returns the index
        as specified by Search. The return value is the index to insert x if x is not
        present (it could be len(a)).
        The slice must be sorted in ascending order.
    **/
    static public function searchStrings(a:Array<String>, x:String):StdTypes.Int {
        final a = ([for (i in a) i] : stdgo.Slice<stdgo.GoString>);
        return stdgo._internal.sort.Sort.searchStrings(a, x);
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
    static public function slice(x:stdgo.AnyInterface, less:(_i:stdgo.GoInt, _j:stdgo.GoInt) -> Bool):Void {
        final less = less;
        stdgo._internal.sort.Sort.slice(x, less);
    }
    /**
        SliceStable sorts the slice x using the provided less
        function, keeping equal elements in their original order.
        It panics if x is not a slice.
        
        The less function must satisfy the same requirements as
        the Interface type's Less method.
    **/
    static public function sliceStable(x:stdgo.AnyInterface, less:(_i:stdgo.GoInt, _j:stdgo.GoInt) -> Bool):Void {
        final less = less;
        stdgo._internal.sort.Sort.sliceStable(x, less);
    }
    /**
        SliceIsSorted reports whether the slice x is sorted according to the provided less function.
        It panics if x is not a slice.
    **/
    static public function sliceIsSorted(x:stdgo.AnyInterface, less:(_i:stdgo.GoInt, _j:stdgo.GoInt) -> Bool):Bool {
        final less = less;
        return stdgo._internal.sort.Sort.sliceIsSorted(x, less);
    }
    /**
        Sort sorts data in ascending order as determined by the Less method.
        It makes one call to data.Len to determine n and O(n*log(n)) calls to
        data.Less and data.Swap. The sort is not guaranteed to be stable.
        
        Note: in many situations, the newer slices.SortFunc function is more
        ergonomic and runs faster.
    **/
    static public function sort(data:Interface):Void {
        stdgo._internal.sort.Sort.sort(data);
    }
    /**
        Reverse returns the reverse order for data.
    **/
    static public function reverse(data:Interface):Interface {
        return stdgo._internal.sort.Sort.reverse(data);
    }
    /**
        IsSorted reports whether data is sorted.
        
        Note: in many situations, the newer slices.IsSortedFunc function is more
        ergonomic and runs faster.
    **/
    static public function isSorted(data:Interface):Bool {
        return stdgo._internal.sort.Sort.isSorted(data);
    }
    /**
        Ints sorts a slice of ints in increasing order.
        
        Note: consider using the newer slices.Sort function, which runs faster.
    **/
    static public function ints(x:Array<StdTypes.Int>):Void {
        final x = ([for (i in x) i] : stdgo.Slice<stdgo.GoInt>);
        stdgo._internal.sort.Sort.ints(x);
    }
    /**
        Float64s sorts a slice of float64s in increasing order.
        Not-a-number (NaN) values are ordered before other values.
        
        Note: consider using the newer slices.Sort function, which runs faster.
    **/
    static public function float64s(x:Array<StdTypes.Float>):Void {
        final x = ([for (i in x) i] : stdgo.Slice<stdgo.GoFloat64>);
        stdgo._internal.sort.Sort.float64s(x);
    }
    /**
        Strings sorts a slice of strings in increasing order.
        
        Note: consider using the newer slices.Sort function, which runs faster.
    **/
    static public function strings(x:Array<String>):Void {
        final x = ([for (i in x) i] : stdgo.Slice<stdgo.GoString>);
        stdgo._internal.sort.Sort.strings(x);
    }
    /**
        IntsAreSorted reports whether the slice x is sorted in increasing order.
        
        Note: consider using the newer slices.IsSorted function, which runs faster.
    **/
    static public function intsAreSorted(x:Array<StdTypes.Int>):Bool {
        final x = ([for (i in x) i] : stdgo.Slice<stdgo.GoInt>);
        return stdgo._internal.sort.Sort.intsAreSorted(x);
    }
    /**
        Float64sAreSorted reports whether the slice x is sorted in increasing order,
        with not-a-number (NaN) values before any other values.
        
        Note: consider using the newer slices.IsSorted function, which runs faster.
    **/
    static public function float64sAreSorted(x:Array<StdTypes.Float>):Bool {
        final x = ([for (i in x) i] : stdgo.Slice<stdgo.GoFloat64>);
        return stdgo._internal.sort.Sort.float64sAreSorted(x);
    }
    /**
        StringsAreSorted reports whether the slice x is sorted in increasing order.
        
        Note: consider using the newer slices.IsSorted function, which runs faster.
    **/
    static public function stringsAreSorted(x:Array<String>):Bool {
        final x = ([for (i in x) i] : stdgo.Slice<stdgo.GoString>);
        return stdgo._internal.sort.Sort.stringsAreSorted(x);
    }
    /**
        Stable sorts data in ascending order as determined by the Less method,
        while keeping the original order of equal elements.
        
        It makes one call to data.Len to determine n, O(n*log(n)) calls to
        data.Less and O(n*log(n)*log(n)) calls to data.Swap.
        
        Note: in many situations, the newer slices.SortStableFunc function is more
        ergonomic and runs faster.
    **/
    static public function stable(data:Interface):Void {
        stdgo._internal.sort.Sort.stable(data);
    }
}

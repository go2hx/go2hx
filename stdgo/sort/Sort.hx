package stdgo.sort;
/**
    // Package sort provides primitives for sorting slices and user-defined collections.
**/
private var __go2hxdoc__package : Bool;
typedef Interface = stdgo._internal.sort.Sort.Interface;
@:invalid typedef T_lessSwap = Dynamic;
@:invalid typedef T_reverse = Dynamic;
typedef T_sortedHint = stdgo._internal.sort.Sort.T_sortedHint;
typedef T_xorshift = stdgo._internal.sort.Sort.T_xorshift;
typedef IntSlice = stdgo._internal.sort.Sort.IntSlice;
typedef Float64Slice = stdgo._internal.sort.Sort.Float64Slice;
typedef StringSlice = stdgo._internal.sort.Sort.StringSlice;
inline function heapsort(data:Interface):Void throw "not implemented";
inline function reverseRange(data:Interface, a:Int, b:Int):Void throw "not implemented";
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
inline function search(n:Int, f:stdgo.GoInt -> Bool):Int throw "not implemented";
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
inline function find(n:Int, cmp:stdgo.GoInt -> stdgo.GoInt):stdgo.Tuple<Int, Bool> throw "not implemented";
/**
    // SearchInts searches for x in a sorted slice of ints and returns the index
    // as specified by Search. The return value is the index to insert x if x is
    // not present (it could be len(a)).
    // The slice must be sorted in ascending order.
**/
inline function searchInts(a:Array<Int>, x:Int):Int throw "not implemented";
/**
    // SearchFloat64s searches for x in a sorted slice of float64s and returns the index
    // as specified by Search. The return value is the index to insert x if x is not
    // present (it could be len(a)).
    // The slice must be sorted in ascending order.
**/
inline function searchFloat64s(a:Array<Float>, x:Float):Int throw "not implemented";
/**
    // SearchStrings searches for x in a sorted slice of strings and returns the index
    // as specified by Search. The return value is the index to insert x if x is not
    // present (it could be len(a)).
    // The slice must be sorted in ascending order.
**/
inline function searchStrings(a:Array<String>, x:String):Int throw "not implemented";
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
inline function slice(x:stdgo.AnyInterface, less:(_i:stdgo.GoInt, _j:stdgo.GoInt) -> Bool):Void throw "not implemented";
/**
    // SliceStable sorts the slice x using the provided less
    // function, keeping equal elements in their original order.
    // It panics if x is not a slice.
    //
    // The less function must satisfy the same requirements as
    // the Interface type's Less method.
**/
inline function sliceStable(x:stdgo.AnyInterface, less:(_i:stdgo.GoInt, _j:stdgo.GoInt) -> Bool):Void throw "not implemented";
/**
    // SliceIsSorted reports whether the slice x is sorted according to the provided less function.
    // It panics if x is not a slice.
**/
inline function sliceIsSorted(x:stdgo.AnyInterface, less:(_i:stdgo.GoInt, _j:stdgo.GoInt) -> Bool):Bool throw "not implemented";
/**
    // Sort sorts data in ascending order as determined by the Less method.
    // It makes one call to data.Len to determine n and O(n*log(n)) calls to
    // data.Less and data.Swap. The sort is not guaranteed to be stable.
    //
    // Note: in many situations, the newer slices.SortFunc function is more
    // ergonomic and runs faster.
**/
inline function sort(data:Interface):Void throw "not implemented";
/**
    // Reverse returns the reverse order for data.
**/
inline function reverse(data:Interface):Interface throw "not implemented";
/**
    // IsSorted reports whether data is sorted.
    //
    // Note: in many situations, the newer slices.IsSortedFunc function is more
    // ergonomic and runs faster.
**/
inline function isSorted(data:Interface):Bool throw "not implemented";
/**
    // Ints sorts a slice of ints in increasing order.
    //
    // Note: consider using the newer slices.Sort function, which runs faster.
**/
inline function ints(x:Array<Int>):Void throw "not implemented";
/**
    // Float64s sorts a slice of float64s in increasing order.
    // Not-a-number (NaN) values are ordered before other values.
    //
    // Note: consider using the newer slices.Sort function, which runs faster.
**/
inline function float64s(x:Array<Float>):Void throw "not implemented";
/**
    // Strings sorts a slice of strings in increasing order.
    //
    // Note: consider using the newer slices.Sort function, which runs faster.
**/
inline function strings(x:Array<String>):Void throw "not implemented";
/**
    // IntsAreSorted reports whether the slice x is sorted in increasing order.
    //
    // Note: consider using the newer slices.IsSorted function, which runs faster.
**/
inline function intsAreSorted(x:Array<Int>):Bool throw "not implemented";
/**
    // Float64sAreSorted reports whether the slice x is sorted in increasing order,
    // with not-a-number (NaN) values before any other values.
    //
    // Note: consider using the newer slices.IsSorted function, which runs faster.
**/
inline function float64sAreSorted(x:Array<Float>):Bool throw "not implemented";
/**
    // StringsAreSorted reports whether the slice x is sorted in increasing order.
    //
    // Note: consider using the newer slices.IsSorted function, which runs faster.
**/
inline function stringsAreSorted(x:Array<String>):Bool throw "not implemented";
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
inline function stable(data:Interface):Void throw "not implemented";
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

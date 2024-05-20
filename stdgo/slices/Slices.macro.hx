package stdgo.slices;
class Slices {
    /**
        Equal reports whether two slices are equal: the same length and all
        elements equal. If the lengths are different, Equal returns false.
        Otherwise, the elements are compared in increasing index order, and the
        comparison stops at the first unequal pair.
        Floating point NaNs are not considered equal.
    **/
    static public function equal<S, E>(__generic__0:haxe.macro.Expr<S>, __generic__1:haxe.macro.Expr<E>, _s1:haxe.macro.Expr<S>, _s2:haxe.macro.Expr<S>):haxe.macro.Expr<Bool> {
        return stdgo._internal.slices.Slices.equal(__generic__0, __generic__1, _s1, _s2);
    }
    /**
        EqualFunc reports whether two slices are equal using an equality
        function on each pair of elements. If the lengths are different,
        EqualFunc returns false. Otherwise, the elements are compared in
        increasing index order, and the comparison stops at the first index
        for which eq returns false.
    **/
    static public function equalFunc<S1, S2, E1, E2>(__generic__0:haxe.macro.Expr<S1>, __generic__1:haxe.macro.Expr<S2>, __generic__2:haxe.macro.Expr<E1>, __generic__3:haxe.macro.Expr<E2>, _s1:haxe.macro.Expr<S1>, _s2:haxe.macro.Expr<S2>, _eq:haxe.macro.Expr<($E1, $E2) -> Bool>):haxe.macro.Expr<Bool> {
        return stdgo._internal.slices.Slices.equalFunc(__generic__0, __generic__1, __generic__2, __generic__3, _s1, _s2, _eq);
    }
    /**
        Compare compares the elements of s1 and s2, using [cmp.Compare] on each pair
        of elements. The elements are compared sequentially, starting at index 0,
        until one element is not equal to the other.
        The result of comparing the first non-matching elements is returned.
        If both slices are equal until one of them ends, the shorter slice is
        considered less than the longer one.
        The result is 0 if s1 == s2, -1 if s1 < s2, and +1 if s1 > s2.
    **/
    static public function compare<S, E>(__generic__0:haxe.macro.Expr<S>, __generic__1:haxe.macro.Expr<E>, _s1:haxe.macro.Expr<S>, _s2:haxe.macro.Expr<S>):haxe.macro.Expr<StdTypes.Int> {
        return stdgo._internal.slices.Slices.compare(__generic__0, __generic__1, _s1, _s2);
    }
    /**
        CompareFunc is like [Compare] but uses a custom comparison function on each
        pair of elements.
        The result is the first non-zero result of cmp; if cmp always
        returns 0 the result is 0 if len(s1) == len(s2), -1 if len(s1) < len(s2),
        and +1 if len(s1) > len(s2).
    **/
    static public function compareFunc<S1, S2, E1, E2>(__generic__0:haxe.macro.Expr<S1>, __generic__1:haxe.macro.Expr<S2>, __generic__2:haxe.macro.Expr<E1>, __generic__3:haxe.macro.Expr<E2>, _s1:haxe.macro.Expr<S1>, _s2:haxe.macro.Expr<S2>, _cmp:haxe.macro.Expr<($E1, $E2) -> stdgo.GoInt>):haxe.macro.Expr<StdTypes.Int> {
        return stdgo._internal.slices.Slices.compareFunc(__generic__0, __generic__1, __generic__2, __generic__3, _s1, _s2, _cmp);
    }
    /**
        Index returns the index of the first occurrence of v in s,
        or -1 if not present.
    **/
    static public function index<S, E>(__generic__0:haxe.macro.Expr<S>, __generic__1:haxe.macro.Expr<E>, _s:haxe.macro.Expr<S>, _v:haxe.macro.Expr<E>):haxe.macro.Expr<StdTypes.Int> {
        return stdgo._internal.slices.Slices.index(__generic__0, __generic__1, _s, _v);
    }
    /**
        IndexFunc returns the first index i satisfying f(s[i]),
        or -1 if none do.
    **/
    static public function indexFunc<S, E>(__generic__0:haxe.macro.Expr<S>, __generic__1:haxe.macro.Expr<E>, _s:haxe.macro.Expr<S>, _f:haxe.macro.Expr<$E -> Bool>):haxe.macro.Expr<StdTypes.Int> {
        return stdgo._internal.slices.Slices.indexFunc(__generic__0, __generic__1, _s, _f);
    }
    /**
        Contains reports whether v is present in s.
    **/
    static public function contains<S, E>(__generic__0:haxe.macro.Expr<S>, __generic__1:haxe.macro.Expr<E>, _s:haxe.macro.Expr<S>, _v:haxe.macro.Expr<E>):haxe.macro.Expr<Bool> {
        return stdgo._internal.slices.Slices.contains(__generic__0, __generic__1, _s, _v);
    }
    /**
        ContainsFunc reports whether at least one
        element e of s satisfies f(e).
    **/
    static public function containsFunc<S, E>(__generic__0:haxe.macro.Expr<S>, __generic__1:haxe.macro.Expr<E>, _s:haxe.macro.Expr<S>, _f:haxe.macro.Expr<$E -> Bool>):haxe.macro.Expr<Bool> {
        return stdgo._internal.slices.Slices.containsFunc(__generic__0, __generic__1, _s, _f);
    }
    /**
        Insert inserts the values v... into s at index i,
        returning the modified slice.
        The elements at s[i:] are shifted up to make room.
        In the returned slice r, r[i] == v[0],
        and r[i+len(v)] == value originally at r[i].
        Insert panics if i is out of range.
        This function is O(len(s) + len(v)).
    **/
    static public function insert<S, E>(__generic__0:haxe.macro.Expr<S>, __generic__1:haxe.macro.Expr<E>, _s:haxe.macro.Expr<S>, _i:haxe.macro.Expr<StdTypes.Int>, _v:haxe.macro.Expr<haxe.Rest<E>>):haxe.macro.Expr<S> {
        return stdgo._internal.slices.Slices.insert(__generic__0, __generic__1, _s, _i, _v);
    }
    /**
        Delete removes the elements s[i:j] from s, returning the modified slice.
        Delete panics if s[i:j] is not a valid slice of s.
        Delete is O(len(s)-j), so if many items must be deleted, it is better to
        make a single call deleting them all together than to delete one at a time.
        Delete might not modify the elements s[len(s)-(j-i):len(s)]. If those
        elements contain pointers you might consider zeroing those elements so that
        objects they reference can be garbage collected.
    **/
    static public function delete<S, E>(__generic__0:haxe.macro.Expr<S>, __generic__1:haxe.macro.Expr<E>, _s:haxe.macro.Expr<S>, _i:haxe.macro.Expr<StdTypes.Int>, _j:haxe.macro.Expr<StdTypes.Int>):haxe.macro.Expr<S> {
        return stdgo._internal.slices.Slices.delete(__generic__0, __generic__1, _s, _i, _j);
    }
    /**
        DeleteFunc removes any elements from s for which del returns true,
        returning the modified slice.
        When DeleteFunc removes m elements, it might not modify the elements
        s[len(s)-m:len(s)]. If those elements contain pointers you might consider
        zeroing those elements so that objects they reference can be garbage
        collected.
    **/
    static public function deleteFunc<S, E>(__generic__0:haxe.macro.Expr<S>, __generic__1:haxe.macro.Expr<E>, _s:haxe.macro.Expr<S>, _del:haxe.macro.Expr<$E -> Bool>):haxe.macro.Expr<S> {
        return stdgo._internal.slices.Slices.deleteFunc(__generic__0, __generic__1, _s, _del);
    }
    /**
        Replace replaces the elements s[i:j] by the given v, and returns the
        modified slice. Replace panics if s[i:j] is not a valid slice of s.
    **/
    static public function replace<S, E>(__generic__0:haxe.macro.Expr<S>, __generic__1:haxe.macro.Expr<E>, _s:haxe.macro.Expr<S>, _i:haxe.macro.Expr<StdTypes.Int>, _j:haxe.macro.Expr<StdTypes.Int>, _v:haxe.macro.Expr<haxe.Rest<E>>):haxe.macro.Expr<S> {
        return stdgo._internal.slices.Slices.replace(__generic__0, __generic__1, _s, _i, _j, _v);
    }
    /**
        Clone returns a copy of the slice.
        The elements are copied using assignment, so this is a shallow clone.
    **/
    static public function clone<S, E>(__generic__0:haxe.macro.Expr<S>, __generic__1:haxe.macro.Expr<E>, _s:haxe.macro.Expr<S>):haxe.macro.Expr<S> {
        return stdgo._internal.slices.Slices.clone(__generic__0, __generic__1, _s);
    }
    /**
        Compact replaces consecutive runs of equal elements with a single copy.
        This is like the uniq command found on Unix.
        Compact modifies the contents of the slice s and returns the modified slice,
        which may have a smaller length.
        When Compact discards m elements in total, it might not modify the elements
        s[len(s)-m:len(s)]. If those elements contain pointers you might consider
        zeroing those elements so that objects they reference can be garbage collected.
    **/
    static public function compact<S, E>(__generic__0:haxe.macro.Expr<S>, __generic__1:haxe.macro.Expr<E>, _s:haxe.macro.Expr<S>):haxe.macro.Expr<S> {
        return stdgo._internal.slices.Slices.compact(__generic__0, __generic__1, _s);
    }
    /**
        CompactFunc is like [Compact] but uses an equality function to compare elements.
        For runs of elements that compare equal, CompactFunc keeps the first one.
    **/
    static public function compactFunc<S, E>(__generic__0:haxe.macro.Expr<S>, __generic__1:haxe.macro.Expr<E>, _s:haxe.macro.Expr<S>, _eq:haxe.macro.Expr<($E, $E) -> Bool>):haxe.macro.Expr<S> {
        return stdgo._internal.slices.Slices.compactFunc(__generic__0, __generic__1, _s, _eq);
    }
    /**
        Grow increases the slice's capacity, if necessary, to guarantee space for
        another n elements. After Grow(n), at least n elements can be appended
        to the slice without another allocation. If n is negative or too large to
        allocate the memory, Grow panics.
    **/
    static public function grow<S, E>(__generic__0:haxe.macro.Expr<S>, __generic__1:haxe.macro.Expr<E>, _s:haxe.macro.Expr<S>, _n:haxe.macro.Expr<StdTypes.Int>):haxe.macro.Expr<S> {
        return stdgo._internal.slices.Slices.grow(__generic__0, __generic__1, _s, _n);
    }
    /**
        Clip removes unused capacity from the slice, returning s[:len(s):len(s)].
    **/
    static public function clip<S, E>(__generic__0:haxe.macro.Expr<S>, __generic__1:haxe.macro.Expr<E>, _s:haxe.macro.Expr<S>):haxe.macro.Expr<S> {
        return stdgo._internal.slices.Slices.clip(__generic__0, __generic__1, _s);
    }
    /**
        Reverse reverses the elements of the slice in place.
    **/
    static public function reverse<S, E>(__generic__0:haxe.macro.Expr<S>, __generic__1:haxe.macro.Expr<E>, _s:haxe.macro.Expr<S>):haxe.macro.Expr<Void> {
        return stdgo._internal.slices.Slices.reverse(__generic__0, __generic__1, _s);
    }
    /**
        Sort sorts a slice of any ordered type in ascending order.
        When sorting floating-point numbers, NaNs are ordered before other values.
    **/
    static public function sort<S, E>(__generic__0:haxe.macro.Expr<S>, __generic__1:haxe.macro.Expr<E>, _x:haxe.macro.Expr<S>):haxe.macro.Expr<Void> {
        return stdgo._internal.slices.Slices.sort(__generic__0, __generic__1, _x);
    }
    /**
        SortFunc sorts the slice x in ascending order as determined by the cmp
        function. This sort is not guaranteed to be stable.
        cmp(a, b) should return a negative number when a < b, a positive number when
        a > b and zero when a == b.
        
        SortFunc requires that cmp is a strict weak ordering.
        See https://en.wikipedia.org/wiki/Weak_ordering#Strict_weak_orderings.
    **/
    static public function sortFunc<S, E>(__generic__0:haxe.macro.Expr<S>, __generic__1:haxe.macro.Expr<E>, _x:haxe.macro.Expr<S>, _cmp:haxe.macro.Expr<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr<Void> {
        return stdgo._internal.slices.Slices.sortFunc(__generic__0, __generic__1, _x, _cmp);
    }
    /**
        SortStableFunc sorts the slice x while keeping the original order of equal
        elements, using cmp to compare elements in the same way as [SortFunc].
    **/
    static public function sortStableFunc<S, E>(__generic__0:haxe.macro.Expr<S>, __generic__1:haxe.macro.Expr<E>, _x:haxe.macro.Expr<S>, _cmp:haxe.macro.Expr<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr<Void> {
        return stdgo._internal.slices.Slices.sortStableFunc(__generic__0, __generic__1, _x, _cmp);
    }
    /**
        IsSorted reports whether x is sorted in ascending order.
    **/
    static public function isSorted<S, E>(__generic__0:haxe.macro.Expr<S>, __generic__1:haxe.macro.Expr<E>, _x:haxe.macro.Expr<S>):haxe.macro.Expr<Bool> {
        return stdgo._internal.slices.Slices.isSorted(__generic__0, __generic__1, _x);
    }
    /**
        IsSortedFunc reports whether x is sorted in ascending order, with cmp as the
        comparison function as defined by [SortFunc].
    **/
    static public function isSortedFunc<S, E>(__generic__0:haxe.macro.Expr<S>, __generic__1:haxe.macro.Expr<E>, _x:haxe.macro.Expr<S>, _cmp:haxe.macro.Expr<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr<Bool> {
        return stdgo._internal.slices.Slices.isSortedFunc(__generic__0, __generic__1, _x, _cmp);
    }
    /**
        Min returns the minimal value in x. It panics if x is empty.
        For floating-point numbers, Min propagates NaNs (any NaN value in x
        forces the output to be NaN).
    **/
    static public function min<S, E>(__generic__0:haxe.macro.Expr<S>, __generic__1:haxe.macro.Expr<E>, _x:haxe.macro.Expr<S>):haxe.macro.Expr<E> {
        return stdgo._internal.slices.Slices.min(__generic__0, __generic__1, _x);
    }
    /**
        MinFunc returns the minimal value in x, using cmp to compare elements.
        It panics if x is empty. If there is more than one minimal element
        according to the cmp function, MinFunc returns the first one.
    **/
    static public function minFunc<S, E>(__generic__0:haxe.macro.Expr<S>, __generic__1:haxe.macro.Expr<E>, _x:haxe.macro.Expr<S>, _cmp:haxe.macro.Expr<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr<E> {
        return stdgo._internal.slices.Slices.minFunc(__generic__0, __generic__1, _x, _cmp);
    }
    /**
        Max returns the maximal value in x. It panics if x is empty.
        For floating-point E, Max propagates NaNs (any NaN value in x
        forces the output to be NaN).
    **/
    static public function max<S, E>(__generic__0:haxe.macro.Expr<S>, __generic__1:haxe.macro.Expr<E>, _x:haxe.macro.Expr<S>):haxe.macro.Expr<E> {
        return stdgo._internal.slices.Slices.max(__generic__0, __generic__1, _x);
    }
    /**
        MaxFunc returns the maximal value in x, using cmp to compare elements.
        It panics if x is empty. If there is more than one maximal element
        according to the cmp function, MaxFunc returns the first one.
    **/
    static public function maxFunc<S, E>(__generic__0:haxe.macro.Expr<S>, __generic__1:haxe.macro.Expr<E>, _x:haxe.macro.Expr<S>, _cmp:haxe.macro.Expr<(_a:E, _b:E) -> stdgo.GoInt>):haxe.macro.Expr<E> {
        return stdgo._internal.slices.Slices.maxFunc(__generic__0, __generic__1, _x, _cmp);
    }
    /**
        BinarySearch searches for target in a sorted slice and returns the position
        where target is found, or the position where target would appear in the
        sort order; it also returns a bool saying whether the target is really found
        in the slice. The slice must be sorted in increasing order.
    **/
    static public function binarySearch<S, E>(__generic__0:haxe.macro.Expr<S>, __generic__1:haxe.macro.Expr<E>, _x:haxe.macro.Expr<S>, _target:haxe.macro.Expr<E>):haxe.macro.Expr<stdgo.Tuple<StdTypes.Int, Bool>> {
        return stdgo._internal.slices.Slices.binarySearch(__generic__0, __generic__1, _x, _target);
    }
    /**
        BinarySearchFunc works like [BinarySearch], but uses a custom comparison
        function. The slice must be sorted in increasing order, where "increasing"
        is defined by cmp. cmp should return 0 if the slice element matches
        the target, a negative number if the slice element precedes the target,
        or a positive number if the slice element follows the target.
        cmp must implement the same ordering as the slice, such that if
        cmp(a, t) < 0 and cmp(b, t) >= 0, then a must precede b in the slice.
    **/
    static public function binarySearchFunc<S, E, T_>(__generic__0:haxe.macro.Expr<S>, __generic__1:haxe.macro.Expr<E>, __generic__2:haxe.macro.Expr<T_>, _x:haxe.macro.Expr<S>, _target:haxe.macro.Expr<T_>, _cmp:haxe.macro.Expr<($E, $T_) -> stdgo.GoInt>):haxe.macro.Expr<stdgo.Tuple<StdTypes.Int, Bool>> {
        return stdgo._internal.slices.Slices.binarySearchFunc(__generic__0, __generic__1, __generic__2, _x, _target, _cmp);
    }
}

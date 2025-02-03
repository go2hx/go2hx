package stdgo.slices;
/**
    Package slices defines various functions useful with slices of any type.
**/
class Slices {
    /**
        Equal reports whether two slices are equal: the same length and all
        elements equal. If the lengths are different, Equal returns false.
        Otherwise, the elements are compared in increasing index order, and the
        comparison stops at the first unequal pair.
        Floating point NaNs are not considered equal.
    **/
    static public inline function equal(_s1:Dynamic, _s2:Dynamic):Bool {
        return stdgo._internal.slices.Slices_equal.equal(_s1, _s2);
    }
    /**
        EqualFunc reports whether two slices are equal using an equality
        function on each pair of elements. If the lengths are different,
        EqualFunc returns false. Otherwise, the elements are compared in
        increasing index order, and the comparison stops at the first index
        for which eq returns false.
    **/
    static public inline function equalFunc(_s1:Dynamic, _s2:Dynamic, _eq:(Dynamic, Dynamic) -> Bool):Bool {
        final _eq = _eq;
        return stdgo._internal.slices.Slices_equalFunc.equalFunc(_s1, _s2, _eq);
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
    static public inline function compare(_s1:Dynamic, _s2:Dynamic):StdTypes.Int {
        return stdgo._internal.slices.Slices_compare.compare(_s1, _s2);
    }
    /**
        CompareFunc is like [Compare] but uses a custom comparison function on each
        pair of elements.
        The result is the first non-zero result of cmp; if cmp always
        returns 0 the result is 0 if len(s1) == len(s2), -1 if len(s1) < len(s2),
        and +1 if len(s1) > len(s2).
    **/
    static public inline function compareFunc(_s1:Dynamic, _s2:Dynamic, _cmp:(Dynamic, Dynamic) -> stdgo.GoInt):StdTypes.Int {
        final _cmp = _cmp;
        return stdgo._internal.slices.Slices_compareFunc.compareFunc(_s1, _s2, _cmp);
    }
    /**
        Index returns the index of the first occurrence of v in s,
        or -1 if not present.
    **/
    static public inline function index(_s:Dynamic, _v:Dynamic):StdTypes.Int {
        return stdgo._internal.slices.Slices_index.index(_s, _v);
    }
    /**
        IndexFunc returns the first index i satisfying f(s[i]),
        or -1 if none do.
    **/
    static public inline function indexFunc(_s:Dynamic, _f:Dynamic -> Bool):StdTypes.Int {
        final _f = _f;
        return stdgo._internal.slices.Slices_indexFunc.indexFunc(_s, _f);
    }
    /**
        Contains reports whether v is present in s.
    **/
    static public inline function contains(_s:Dynamic, _v:Dynamic):Bool {
        return stdgo._internal.slices.Slices_contains.contains(_s, _v);
    }
    /**
        ContainsFunc reports whether at least one
        element e of s satisfies f(e).
    **/
    static public inline function containsFunc(_s:Dynamic, _f:Dynamic -> Bool):Bool {
        final _f = _f;
        return stdgo._internal.slices.Slices_containsFunc.containsFunc(_s, _f);
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
    static public inline function insert(_s:Dynamic, _i:StdTypes.Int, _v:haxe.Rest<Dynamic>):Dynamic {
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.slices.Slices_insert.insert(_s, _i, ...[for (i in _v) i]);
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
    static public inline function delete(_s:Dynamic, _i:StdTypes.Int, _j:StdTypes.Int):Dynamic {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        return stdgo._internal.slices.Slices_delete.delete(_s, _i, _j);
    }
    /**
        DeleteFunc removes any elements from s for which del returns true,
        returning the modified slice.
        When DeleteFunc removes m elements, it might not modify the elements
        s[len(s)-m:len(s)]. If those elements contain pointers you might consider
        zeroing those elements so that objects they reference can be garbage
        collected.
    **/
    static public inline function deleteFunc(_s:Dynamic, _del:Dynamic -> Bool):Dynamic {
        final _del = _del;
        return stdgo._internal.slices.Slices_deleteFunc.deleteFunc(_s, _del);
    }
    /**
        Replace replaces the elements s[i:j] by the given v, and returns the
        modified slice. Replace panics if s[i:j] is not a valid slice of s.
    **/
    static public inline function replace(_s:Dynamic, _i:StdTypes.Int, _j:StdTypes.Int, _v:haxe.Rest<Dynamic>):Dynamic {
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        return stdgo._internal.slices.Slices_replace.replace(_s, _i, _j, ...[for (i in _v) i]);
    }
    /**
        Clone returns a copy of the slice.
        The elements are copied using assignment, so this is a shallow clone.
    **/
    static public inline function clone(_s:Dynamic):Dynamic {
        return stdgo._internal.slices.Slices_clone.clone(_s);
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
    static public inline function compact(_s:Dynamic):Dynamic {
        return stdgo._internal.slices.Slices_compact.compact(_s);
    }
    /**
        CompactFunc is like [Compact] but uses an equality function to compare elements.
        For runs of elements that compare equal, CompactFunc keeps the first one.
    **/
    static public inline function compactFunc(_s:Dynamic, _eq:(Dynamic, Dynamic) -> Bool):Dynamic {
        final _eq = _eq;
        return stdgo._internal.slices.Slices_compactFunc.compactFunc(_s, _eq);
    }
    /**
        Grow increases the slice's capacity, if necessary, to guarantee space for
        another n elements. After Grow(n), at least n elements can be appended
        to the slice without another allocation. If n is negative or too large to
        allocate the memory, Grow panics.
    **/
    static public inline function grow(_s:Dynamic, _n:StdTypes.Int):Dynamic {
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.slices.Slices_grow.grow(_s, _n);
    }
    /**
        Clip removes unused capacity from the slice, returning s[:len(s):len(s)].
    **/
    static public inline function clip(_s:Dynamic):Dynamic {
        return stdgo._internal.slices.Slices_clip.clip(_s);
    }
    /**
        Reverse reverses the elements of the slice in place.
    **/
    static public inline function reverse(_s:Dynamic):Void {
        stdgo._internal.slices.Slices_reverse.reverse(_s);
    }
    static public inline function testEqual(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.slices.Slices_testEqual.testEqual(_t);
    }
    static public inline function testEqualFunc(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.slices.Slices_testEqualFunc.testEqualFunc(_t);
    }
    static public inline function benchmarkEqualFunc_Large(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.slices.Slices_benchmarkEqualFunc_Large.benchmarkEqualFunc_Large(_b);
    }
    static public inline function testCompare(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.slices.Slices_testCompare.testCompare(_t);
    }
    static public inline function testCompareFunc(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.slices.Slices_testCompareFunc.testCompareFunc(_t);
    }
    static public inline function testIndex(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.slices.Slices_testIndex.testIndex(_t);
    }
    static public inline function benchmarkIndex_Large(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.slices.Slices_benchmarkIndex_Large.benchmarkIndex_Large(_b);
    }
    static public inline function testIndexFunc(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.slices.Slices_testIndexFunc.testIndexFunc(_t);
    }
    static public inline function benchmarkIndexFunc_Large(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.slices.Slices_benchmarkIndexFunc_Large.benchmarkIndexFunc_Large(_b);
    }
    static public inline function testContains(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.slices.Slices_testContains.testContains(_t);
    }
    static public inline function testContainsFunc(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.slices.Slices_testContainsFunc.testContainsFunc(_t);
    }
    static public inline function testInsert(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.slices.Slices_testInsert.testInsert(_t);
    }
    static public inline function testInsertOverlap(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.slices.Slices_testInsertOverlap.testInsertOverlap(_t);
    }
    static public inline function testDelete(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.slices.Slices_testDelete.testDelete(_t);
    }
    static public inline function testDeleteFunc(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.slices.Slices_testDeleteFunc.testDeleteFunc(_t);
    }
    static public inline function testDeletePanics(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.slices.Slices_testDeletePanics.testDeletePanics(_t);
    }
    static public inline function testClone(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.slices.Slices_testClone.testClone(_t);
    }
    static public inline function testCompact(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.slices.Slices_testCompact.testCompact(_t);
    }
    static public inline function benchmarkCompact(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.slices.Slices_benchmarkCompact.benchmarkCompact(_b);
    }
    static public inline function benchmarkCompact_Large(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.slices.Slices_benchmarkCompact_Large.benchmarkCompact_Large(_b);
    }
    static public inline function testCompactFunc(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.slices.Slices_testCompactFunc.testCompactFunc(_t);
    }
    static public inline function benchmarkCompactFunc_Large(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.slices.Slices_benchmarkCompactFunc_Large.benchmarkCompactFunc_Large(_b);
    }
    static public inline function testGrow(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.slices.Slices_testGrow.testGrow(_t);
    }
    static public inline function testClip(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.slices.Slices_testClip.testClip(_t);
    }
    static public inline function testReverse(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.slices.Slices_testReverse.testReverse(_t);
    }
    static public inline function testReplace(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.slices.Slices_testReplace.testReplace(_t);
    }
    static public inline function testReplacePanics(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.slices.Slices_testReplacePanics.testReplacePanics(_t);
    }
    static public inline function testReplaceOverlap(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.slices.Slices_testReplaceOverlap.testReplaceOverlap(_t);
    }
    static public inline function benchmarkReplace(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.slices.Slices_benchmarkReplace.benchmarkReplace(_b);
    }
    static public inline function testRotate(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.slices.Slices_testRotate.testRotate(_t);
    }
    static public inline function testInsertGrowthRate(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.slices.Slices_testInsertGrowthRate.testInsertGrowthRate(_t);
    }
    static public inline function testReplaceGrowthRate(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.slices.Slices_testReplaceGrowthRate.testReplaceGrowthRate(_t);
    }
    /**
        Test type inference with a named slice type.
    **/
    static public inline function testInference(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.slices.Slices_testInference.testInference(_t);
    }
    /**
        Sort sorts a slice of any ordered type in ascending order.
        When sorting floating-point numbers, NaNs are ordered before other values.
    **/
    static public inline function sort(_x:Dynamic):Void {
        stdgo._internal.slices.Slices_sort.sort(_x);
    }
    /**
        SortFunc sorts the slice x in ascending order as determined by the cmp
        function. This sort is not guaranteed to be stable.
        cmp(a, b) should return a negative number when a < b, a positive number when
        a > b and zero when a == b.
        
        SortFunc requires that cmp is a strict weak ordering.
        See https://en.wikipedia.org/wiki/Weak_ordering#Strict_weak_orderings.
    **/
    static public inline function sortFunc(_x:Dynamic, _cmp:(Dynamic, Dynamic) -> stdgo.GoInt):Void {
        final _cmp = _cmp;
        stdgo._internal.slices.Slices_sortFunc.sortFunc(_x, _cmp);
    }
    /**
        SortStableFunc sorts the slice x while keeping the original order of equal
        elements, using cmp to compare elements in the same way as [SortFunc].
    **/
    static public inline function sortStableFunc(_x:Dynamic, _cmp:(Dynamic, Dynamic) -> stdgo.GoInt):Void {
        final _cmp = _cmp;
        stdgo._internal.slices.Slices_sortStableFunc.sortStableFunc(_x, _cmp);
    }
    /**
        IsSorted reports whether x is sorted in ascending order.
    **/
    static public inline function isSorted(_x:Dynamic):Bool {
        return stdgo._internal.slices.Slices_isSorted.isSorted(_x);
    }
    /**
        IsSortedFunc reports whether x is sorted in ascending order, with cmp as the
        comparison function as defined by [SortFunc].
    **/
    static public inline function isSortedFunc(_x:Dynamic, _cmp:(Dynamic, Dynamic) -> stdgo.GoInt):Bool {
        final _cmp = _cmp;
        return stdgo._internal.slices.Slices_isSortedFunc.isSortedFunc(_x, _cmp);
    }
    /**
        Min returns the minimal value in x. It panics if x is empty.
        For floating-point numbers, Min propagates NaNs (any NaN value in x
        forces the output to be NaN).
    **/
    static public inline function min(_x:Dynamic):Dynamic {
        return stdgo._internal.slices.Slices_min.min(_x);
    }
    /**
        MinFunc returns the minimal value in x, using cmp to compare elements.
        It panics if x is empty. If there is more than one minimal element
        according to the cmp function, MinFunc returns the first one.
    **/
    static public inline function minFunc(_x:Dynamic, _cmp:(Dynamic, Dynamic) -> stdgo.GoInt):Dynamic {
        final _cmp = _cmp;
        return stdgo._internal.slices.Slices_minFunc.minFunc(_x, _cmp);
    }
    /**
        Max returns the maximal value in x. It panics if x is empty.
        For floating-point E, Max propagates NaNs (any NaN value in x
        forces the output to be NaN).
    **/
    static public inline function max(_x:Dynamic):Dynamic {
        return stdgo._internal.slices.Slices_max.max(_x);
    }
    /**
        MaxFunc returns the maximal value in x, using cmp to compare elements.
        It panics if x is empty. If there is more than one maximal element
        according to the cmp function, MaxFunc returns the first one.
    **/
    static public inline function maxFunc(_x:Dynamic, _cmp:(Dynamic, Dynamic) -> stdgo.GoInt):Dynamic {
        final _cmp = _cmp;
        return stdgo._internal.slices.Slices_maxFunc.maxFunc(_x, _cmp);
    }
    /**
        BinarySearch searches for target in a sorted slice and returns the position
        where target is found, or the position where target would appear in the
        sort order; it also returns a bool saying whether the target is really found
        in the slice. The slice must be sorted in increasing order.
    **/
    static public inline function binarySearch(_x:Dynamic, _target:Dynamic):stdgo.Tuple<StdTypes.Int, Bool> {
        return {
            final obj = stdgo._internal.slices.Slices_binarySearch.binarySearch(_x, _target);
            { _0 : obj._0, _1 : obj._1 };
        };
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
    static public inline function binarySearchFunc(_x:Dynamic, _target:Dynamic, _cmp:(Dynamic, Dynamic) -> stdgo.GoInt):stdgo.Tuple<StdTypes.Int, Bool> {
        final _cmp = _cmp;
        return {
            final obj = stdgo._internal.slices.Slices_binarySearchFunc.binarySearchFunc(_x, _target, _cmp);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function benchmarkSortInts(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.slices.Slices_benchmarkSortInts.benchmarkSortInts(_b);
    }
    static public inline function benchmarkSlicesSortInts(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.slices.Slices_benchmarkSlicesSortInts.benchmarkSlicesSortInts(_b);
    }
    static public inline function benchmarkSlicesSortInts_Sorted(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.slices.Slices_benchmarkSlicesSortInts_Sorted.benchmarkSlicesSortInts_Sorted(_b);
    }
    static public inline function benchmarkSlicesSortInts_Reversed(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.slices.Slices_benchmarkSlicesSortInts_Reversed.benchmarkSlicesSortInts_Reversed(_b);
    }
    static public inline function benchmarkIntsAreSorted(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.slices.Slices_benchmarkIntsAreSorted.benchmarkIntsAreSorted(_b);
    }
    static public inline function benchmarkIsSorted(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.slices.Slices_benchmarkIsSorted.benchmarkIsSorted(_b);
    }
    /**
        Since we're benchmarking these sorts against each other, make sure that they
        generate similar results.
    **/
    static public inline function testIntSorts(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.slices.Slices_testIntSorts.testIntSorts(_t);
    }
    static public inline function testStringSorts(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.slices.Slices_testStringSorts.testStringSorts(_t);
    }
    static public inline function benchmarkSortStrings(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.slices.Slices_benchmarkSortStrings.benchmarkSortStrings(_b);
    }
    static public inline function benchmarkSortStrings_Sorted(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.slices.Slices_benchmarkSortStrings_Sorted.benchmarkSortStrings_Sorted(_b);
    }
    static public inline function benchmarkSlicesSortStrings(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.slices.Slices_benchmarkSlicesSortStrings.benchmarkSlicesSortStrings(_b);
    }
    static public inline function benchmarkSlicesSortStrings_Sorted(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.slices.Slices_benchmarkSlicesSortStrings_Sorted.benchmarkSlicesSortStrings_Sorted(_b);
    }
    static public inline function testStructSorts(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.slices.Slices_testStructSorts.testStructSorts(_t);
    }
    static public inline function benchmarkSortStructs(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.slices.Slices_benchmarkSortStructs.benchmarkSortStructs(_b);
    }
    static public inline function benchmarkSortFuncStructs(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.slices.Slices_benchmarkSortFuncStructs.benchmarkSortFuncStructs(_b);
    }
    static public inline function benchmarkBinarySearchFloats(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.slices.Slices_benchmarkBinarySearchFloats.benchmarkBinarySearchFloats(_b);
    }
    static public inline function benchmarkBinarySearchFuncStruct(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.slices.Slices_benchmarkBinarySearchFuncStruct.benchmarkBinarySearchFuncStruct(_b);
    }
    static public inline function testSortIntSlice(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.slices.Slices_testSortIntSlice.testSortIntSlice(_t);
    }
    static public inline function testSortFuncIntSlice(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.slices.Slices_testSortFuncIntSlice.testSortFuncIntSlice(_t);
    }
    static public inline function testSortFloat64Slice(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.slices.Slices_testSortFloat64Slice.testSortFloat64Slice(_t);
    }
    static public inline function testSortFloat64SliceWithNaNs(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.slices.Slices_testSortFloat64SliceWithNaNs.testSortFloat64SliceWithNaNs(_t);
    }
    static public inline function testSortStringSlice(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.slices.Slices_testSortStringSlice.testSortStringSlice(_t);
    }
    static public inline function testSortLarge_Random(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.slices.Slices_testSortLarge_Random.testSortLarge_Random(_t);
    }
    static public inline function testStability(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.slices.Slices_testStability.testStability(_t);
    }
    static public inline function testMinMax(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.slices.Slices_testMinMax.testMinMax(_t);
    }
    static public inline function testMinMaxNaNs(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.slices.Slices_testMinMaxNaNs.testMinMaxNaNs(_t);
    }
    static public inline function testMinMaxPanics(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.slices.Slices_testMinMaxPanics.testMinMaxPanics(_t);
    }
    static public inline function testBinarySearch(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.slices.Slices_testBinarySearch.testBinarySearch(_t);
    }
    static public inline function testBinarySearchInts(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.slices.Slices_testBinarySearchInts.testBinarySearchInts(_t);
    }
    static public inline function testBinarySearchFloats(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.slices.Slices_testBinarySearchFloats.testBinarySearchFloats(_t);
    }
    static public inline function testBinarySearchFunc(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.slices.Slices_testBinarySearchFunc.testBinarySearchFunc(_t);
    }
}

package stdgo._internal.sort;
@:interface typedef Interface = stdgo.StructType & {
    /**
        * Len is the number of elements in the collection.
        
        
    **/
    @:interfacetypeffun
    public dynamic function len():stdgo.GoInt;
    /**
        * Less reports whether the element with index i
        * must sort before the element with index j.
        * 
        * If both Less(i, j) and Less(j, i) are false,
        * then the elements at index i and j are considered equal.
        * Sort may place equal elements in any order in the final result,
        * while Stable preserves the original input order of equal elements.
        * 
        * Less must describe a transitive ordering:
        *  - if both Less(i, j) and Less(j, k) are true, then Less(i, k) must be true as well.
        *  - if both Less(i, j) and Less(j, k) are false, then Less(i, k) must be false as well.
        * 
        * Note that floating-point comparison (the < operator on float32 or float64 values)
        * is not a transitive ordering when not-a-number (NaN) values are involved.
        * See Float64Slice.Less for a correct implementation for floating-point values.
        
        
    **/
    @:interfacetypeffun
    public dynamic function less(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool;
    /**
        * Swap swaps the elements with indexes i and j.
        
        
    **/
    @:interfacetypeffun
    public dynamic function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void;
};

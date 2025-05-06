package stdgo._internal.go.types;
@:interface typedef Sizes = stdgo.StructType & {
    /**
        * Alignof returns the alignment of a variable of type T.
        * Alignof must implement the alignment guarantees required by the spec.
        * The result must be >= 1.
        
        
    **/
    @:interfacetypeffun
    public dynamic function alignof_(t:stdgo._internal.go.types.Types_type_.Type_):stdgo.GoInt64;
    /**
        * Offsetsof returns the offsets of the given struct fields, in bytes.
        * Offsetsof must implement the offset guarantees required by the spec.
        * A negative entry in the result indicates that the struct is too large.
        
        
    **/
    @:interfacetypeffun
    public dynamic function offsetsof(_fields:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>):stdgo.Slice<stdgo.GoInt64>;
    /**
        * Sizeof returns the size of a variable of type T.
        * Sizeof must implement the size guarantees required by the spec.
        * A negative result indicates that T is too large.
        
        
    **/
    @:interfacetypeffun
    public dynamic function sizeof(t:stdgo._internal.go.types.Types_type_.Type_):stdgo.GoInt64;
};

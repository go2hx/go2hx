package stdgo._internal.hash;
@:interface typedef Hash = stdgo.StructType & {
    /**
        * Sum appends the current hash to b and returns the resulting slice.
        * It does not change the underlying hash state.
        
        
    **/
    @:interfacetypeffun
    public dynamic function sum(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>;
    /**
        * Reset resets the Hash to its initial state.
        
        
    **/
    @:interfacetypeffun
    public dynamic function reset():Void;
    /**
        * Size returns the number of bytes Sum will return.
        
        
    **/
    @:interfacetypeffun
    public dynamic function size():stdgo.GoInt;
    /**
        * BlockSize returns the hash's underlying block size.
        * The Write method must be able to accept any amount
        * of data, but it may operate more efficiently if all writes
        * are a multiple of the block size.
        
        
    **/
    @:interfacetypeffun
    public dynamic function blockSize():stdgo.GoInt;
    public dynamic function write(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
};

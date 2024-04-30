package stdgo._internal.hash;
private var __go2hxdoc__package : Bool;
@:keep class Hash_static_extension {
    static public function blockSize(t:Hash):stdgo.GoInt return t.blockSize();
    static public function size(t:Hash):stdgo.GoInt return t.size();
    static public function reset(t:Hash):Void t.reset();
    static public function sum(t:Hash, _b:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> return t.sum(_b);
}
typedef Hash = stdgo.StructType & {
    > stdgo._internal.io.Io.Writer,
    /**
        Sum appends the current hash to b and returns the resulting slice.
        It does not change the underlying hash state.
        
        
    **/
    public dynamic function sum(_b:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte>;
    /**
        Reset resets the Hash to its initial state.
        
        
    **/
    public dynamic function reset():Void;
    /**
        Size returns the number of bytes Sum will return.
        
        
    **/
    public dynamic function size():stdgo.GoInt;
    /**
        BlockSize returns the hash's underlying block size.
        The Write method must be able to accept any amount
        of data, but it may operate more efficiently if all writes
        are a multiple of the block size.
        
        
    **/
    public dynamic function blockSize():stdgo.GoInt;
};
@:keep class Hash32_static_extension {
    static public function sum32(t:Hash32):stdgo.GoUInt32 return t.sum32();
}
typedef Hash32 = stdgo.StructType & {
    > Hash,
    /**
        
        
        
    **/
    public dynamic function sum32():stdgo.GoUInt32;
};
@:keep class Hash64_static_extension {
    static public function sum64(t:Hash64):stdgo.GoUInt64 return t.sum64();
}
typedef Hash64 = stdgo.StructType & {
    > Hash,
    /**
        
        
        
    **/
    public dynamic function sum64():stdgo.GoUInt64;
};

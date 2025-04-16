package stdgo._internal.compress.lzw;
@:interface typedef T_writer = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function flush():stdgo.Error;
    public dynamic function writeByte(_0:stdgo.GoUInt8):stdgo.Error;
};

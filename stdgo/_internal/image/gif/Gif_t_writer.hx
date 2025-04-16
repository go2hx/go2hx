package stdgo._internal.image.gif;
@:interface typedef T_writer = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function flush():stdgo.Error;
    public dynamic function write(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    public dynamic function writeByte(_0:stdgo.GoUInt8):stdgo.Error;
};

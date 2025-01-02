package stdgo._internal.image;
typedef T_reader = stdgo.StructType & {
    > stdgo._internal.io.Io_Reader.Reader,
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function peek(_0:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
};

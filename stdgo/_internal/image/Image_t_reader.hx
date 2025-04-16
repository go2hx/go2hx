package stdgo._internal.image;
@:interface typedef T_reader = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function peek(_0:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    public dynamic function read(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
};

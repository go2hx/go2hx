package stdgo._internal.crypto.tls;
@:interface typedef T_cbcMode = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function setIV(_0:stdgo.Slice<stdgo.GoUInt8>):Void;
    public dynamic function blockSize():stdgo.GoInt;
    public dynamic function cryptBlocks(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.Slice<stdgo.GoUInt8>):Void;
};

package stdgo._internal.crypto.tls;
@:interface typedef T_cbcMode = stdgo.StructType & {
    @:interfacetypeffun
    function setIV(_0:stdgo.Slice<stdgo.GoUInt8>):Void;
    function blockSize():stdgo.GoInt;
    function cryptBlocks(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.Slice<stdgo.GoUInt8>):Void;
};

package stdgo._internal.crypto.cipher;
@:interface typedef BlockMode = stdgo.StructType & {
    @:interfacetypeffun
    function blockSize():stdgo.GoInt;
    @:interfacetypeffun
    function cryptBlocks(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void;
};

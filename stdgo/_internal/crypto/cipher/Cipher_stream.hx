package stdgo._internal.crypto.cipher;
@:interface typedef Stream = stdgo.StructType & {
    @:interfacetypeffun
    function xORKeyStream(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void;
};

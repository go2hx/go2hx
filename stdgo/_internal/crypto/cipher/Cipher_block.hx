package stdgo._internal.crypto.cipher;
@:interface typedef Block = stdgo.StructType & {
    @:interfacetypeffun
    function blockSize():stdgo.GoInt;
    @:interfacetypeffun
    function encrypt(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void;
    @:interfacetypeffun
    function decrypt(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void;
};

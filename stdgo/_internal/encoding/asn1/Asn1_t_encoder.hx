package stdgo._internal.encoding.asn1;
@:interface typedef T_encoder = stdgo.StructType & {
    @:interfacetypeffun
    function len():stdgo.GoInt;
    @:interfacetypeffun
    function encode(_dst:stdgo.Slice<stdgo.GoUInt8>):Void;
};

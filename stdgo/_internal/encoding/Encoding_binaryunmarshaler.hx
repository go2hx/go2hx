package stdgo._internal.encoding;
@:interface typedef BinaryUnmarshaler = stdgo.StructType & {
    @:interfacetypeffun
    function unmarshalBinary(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error;
};

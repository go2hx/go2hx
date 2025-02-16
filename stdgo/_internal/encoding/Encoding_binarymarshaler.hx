package stdgo._internal.encoding;
@:interface typedef BinaryMarshaler = stdgo.StructType & {
    @:interfacetypeffun
    function marshalBinary():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
};

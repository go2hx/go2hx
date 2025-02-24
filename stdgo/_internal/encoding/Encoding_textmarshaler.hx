package stdgo._internal.encoding;
@:interface typedef TextMarshaler = stdgo.StructType & {
    @:interfacetypeffun
    function marshalText():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
};

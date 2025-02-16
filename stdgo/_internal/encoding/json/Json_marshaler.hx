package stdgo._internal.encoding.json;
@:interface typedef Marshaler = stdgo.StructType & {
    @:interfacetypeffun
    function marshalJSON():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
};

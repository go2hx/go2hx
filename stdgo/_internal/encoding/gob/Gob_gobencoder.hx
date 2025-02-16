package stdgo._internal.encoding.gob;
@:interface typedef GobEncoder = stdgo.StructType & {
    @:interfacetypeffun
    function gobEncode():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
};

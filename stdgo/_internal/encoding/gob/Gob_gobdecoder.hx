package stdgo._internal.encoding.gob;
@:interface typedef GobDecoder = stdgo.StructType & {
    @:interfacetypeffun
    function gobDecode(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error;
};

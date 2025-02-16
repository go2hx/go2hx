package stdgo._internal.encoding.json;
@:interface typedef Unmarshaler = stdgo.StructType & {
    @:interfacetypeffun
    function unmarshalJSON(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error;
};

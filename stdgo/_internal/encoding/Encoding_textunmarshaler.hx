package stdgo._internal.encoding;
@:interface typedef TextUnmarshaler = stdgo.StructType & {
    @:interfacetypeffun
    function unmarshalText(_text:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error;
};

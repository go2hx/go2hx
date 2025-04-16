package stdgo._internal.encoding;
@:interface typedef TextUnmarshaler = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function unmarshalText(_text:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error;
};

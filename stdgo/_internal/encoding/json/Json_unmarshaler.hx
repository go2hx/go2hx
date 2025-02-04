package stdgo._internal.encoding.json;
@:interface typedef Unmarshaler = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function unmarshalJSON(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error;
};

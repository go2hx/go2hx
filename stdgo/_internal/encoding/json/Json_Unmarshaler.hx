package stdgo._internal.encoding.json;
typedef Unmarshaler = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function unmarshalJSON(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error;
};
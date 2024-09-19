package stdgo._internal.encoding;
typedef TextUnmarshaler = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function unmarshalText(_text:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error;
};

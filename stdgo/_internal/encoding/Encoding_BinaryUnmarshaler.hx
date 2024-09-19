package stdgo._internal.encoding;
typedef BinaryUnmarshaler = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function unmarshalBinary(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error;
};

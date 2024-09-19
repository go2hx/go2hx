package stdgo._internal.encoding.gob;
typedef GobEncoder = stdgo.StructType & {
    /**
        GobEncode returns a byte slice representing the encoding of the
        receiver for transmission to a GobDecoder, usually of the same
        concrete type.
        
        
    **/
    public dynamic function gobEncode():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
};
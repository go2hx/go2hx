package stdgo._internal.crypto.hmac;
typedef T_marshalable = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function marshalBinary():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    /**
        
        
        
    **/
    public dynamic function unmarshalBinary(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error;
};
package stdgo._internal.crypto.tls;
typedef T_handshakeMessage = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function _marshal():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    /**
        
        
        
    **/
    public dynamic function _unmarshal(_0:stdgo.Slice<stdgo.GoUInt8>):Bool;
};

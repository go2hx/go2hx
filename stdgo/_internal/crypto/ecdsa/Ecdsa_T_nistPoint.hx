package stdgo._internal.crypto.ecdsa;
typedef T_nistPoint<T_> = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function bytes():stdgo.Slice<stdgo.GoUInt8>;
    /**
        
        
        
    **/
    public dynamic function bytesX():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    /**
        
        
        
    **/
    public dynamic function setBytes(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : Dynamic; var _1 : stdgo.Error; };
    /**
        
        
        
    **/
    public dynamic function add(_0:Dynamic, _1:Dynamic):Dynamic;
    /**
        
        
        
    **/
    public dynamic function scalarMult(_0:Dynamic, _1:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : Dynamic; var _1 : stdgo.Error; };
    /**
        
        
        
    **/
    public dynamic function scalarBaseMult(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : Dynamic; var _1 : stdgo.Error; };
};

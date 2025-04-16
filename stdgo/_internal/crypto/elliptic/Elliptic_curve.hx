package stdgo._internal.crypto.elliptic;
@:interface typedef Curve = stdgo.StructType & {
    /**
        * Params returns the parameters for the curve.
        
        
    **/
    @:interfacetypeffun
    public dynamic function params():stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams>;
    /**
        * IsOnCurve reports whether the given (x,y) lies on the curve.
        * 
        * Deprecated: this is a low-level unsafe API. For ECDH, use the crypto/ecdh
        * package. The NewPublicKey methods of NIST curves in crypto/ecdh accept
        * the same encoding as the Unmarshal function, and perform on-curve checks.
        
        
    **/
    @:interfacetypeffun
    public dynamic function isOnCurve(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):Bool;
    /**
        * Add returns the sum of (x1,y1) and (x2,y2).
        * 
        * Deprecated: this is a low-level unsafe API.
        
        
    **/
    @:interfacetypeffun
    public dynamic function add(_x1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x2:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y2:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; };
    /**
        * Double returns 2*(x,y).
        * 
        * Deprecated: this is a low-level unsafe API.
        
        
    **/
    @:interfacetypeffun
    public dynamic function double(_x1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; };
    /**
        * ScalarMult returns k*(x,y) where k is an integer in big-endian form.
        * 
        * Deprecated: this is a low-level unsafe API. For ECDH, use the crypto/ecdh
        * package. Most uses of ScalarMult can be replaced by a call to the ECDH
        * methods of NIST curves in crypto/ecdh.
        
        
    **/
    @:interfacetypeffun
    public dynamic function scalarMult(_x1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _k:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; };
    /**
        * ScalarBaseMult returns k*G, where G is the base point of the group
        * and k is an integer in big-endian form.
        * 
        * Deprecated: this is a low-level unsafe API. For ECDH, use the crypto/ecdh
        * package. Most uses of ScalarBaseMult can be replaced by a call to the
        * PrivateKey.PublicKey method in crypto/ecdh.
        
        
    **/
    @:interfacetypeffun
    public dynamic function scalarBaseMult(_k:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; };
};

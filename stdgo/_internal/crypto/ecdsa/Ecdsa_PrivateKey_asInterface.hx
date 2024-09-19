package stdgo._internal.crypto.ecdsa;
class PrivateKey_asInterface {
    @:keep
    public dynamic function sign(_rand:stdgo._internal.io.Io_Reader.Reader, _digest:stdgo.Slice<stdgo.GoUInt8>, _opts:stdgo._internal.crypto.Crypto_SignerOpts.SignerOpts):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.sign(_rand, _digest, _opts);
    @:keep
    public dynamic function equal(_x:stdgo._internal.crypto.Crypto_PrivateKey.PrivateKey):Bool return __self__.value.equal(_x);
    @:keep
    public dynamic function public_():stdgo._internal.crypto.Crypto_PublicKey.PublicKey return __self__.value.public_();
    @:keep
    public dynamic function ecdh():{ var _0 : stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>; var _1 : stdgo.Error; } return __self__.value.ecdh();
    @:embedded
    public dynamic function scalarMult(bx:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, by:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _k:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return __self__.value.scalarMult(bx, by, _k);
    @:embedded
    public dynamic function scalarBaseMult(__0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return __self__.value.scalarBaseMult(__0);
    @:embedded
    public dynamic function params():stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams> return __self__.value.params();
    @:embedded
    public dynamic function isOnCurve(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):Bool return __self__.value.isOnCurve(_x, _y);
    @:embedded
    public dynamic function double(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return __self__.value.double(_x, _y);
    @:embedded
    public dynamic function add(_x1:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y1:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _x2:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y2:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return __self__.value.add(_x1, _y1, _x2, _y2);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.crypto.ecdsa.Ecdsa_PrivateKey.PrivateKey>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

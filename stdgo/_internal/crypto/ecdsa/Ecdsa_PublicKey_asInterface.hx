package stdgo._internal.crypto.ecdsa;
import stdgo._internal.errors.Errors;
import stdgo._internal.crypto.elliptic.Elliptic;
import stdgo._internal.crypto.ecdh.Ecdh;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.crypto.internal.randutil.Randutil;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.internal.boring.bbig.Bbig;
import stdgo._internal.crypto.internal.bigmod.Bigmod;
import stdgo._internal.io.Io;
import stdgo._internal.crypto.internal.nistec.Nistec;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.crypto.sha512.Sha512;
import stdgo._internal.crypto.aes.Aes;
import stdgo._internal.crypto.cipher.Cipher;
import stdgo._internal.math.big.Big;
class PublicKey_asInterface {
    @:keep
    @:tdfield
    public dynamic function equal(_x:stdgo._internal.crypto.Crypto_PublicKey.PublicKey):Bool return @:_0 __self__.value.equal(_x);
    @:keep
    @:tdfield
    public dynamic function eCDH():{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_PublicKey.PublicKey>; var _1 : stdgo.Error; } return @:_0 __self__.value.eCDH();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function scalarMult(_0:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _1:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _2:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return @:_0 __self__.value.scalarMult(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function scalarBaseMult(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return @:_0 __self__.value.scalarBaseMult(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function params():stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_CurveParams.CurveParams> return @:_0 __self__.value.params();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function isOnCurve(_0:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _1:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):Bool return @:_0 __self__.value.isOnCurve(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function double(_0:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _1:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return @:_0 __self__.value.double(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function add(_0:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _1:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _2:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _3:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>; } return @:_0 __self__.value.add(_0, _1, _2, _3);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.ecdsa.Ecdsa_PublicKeyPointer.PublicKeyPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

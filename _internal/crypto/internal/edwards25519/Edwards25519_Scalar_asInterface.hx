package _internal.crypto.internal.edwards25519;
class Scalar_asInterface {
    @:keep
    public dynamic function _signedRadix16():stdgo.GoArray<stdgo.GoInt8> return __self__.value._signedRadix16();
    @:keep
    public dynamic function _nonAdjacentForm(_w:stdgo.GoUInt):stdgo.GoArray<stdgo.GoInt8> return __self__.value._nonAdjacentForm(_w);
    @:keep
    public dynamic function equal(_t:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>):stdgo.GoInt return __self__.value.equal(_t);
    @:keep
    public dynamic function _bytes(_out:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):stdgo.Slice<stdgo.GoUInt8> return __self__.value._bytes(_out);
    @:keep
    public dynamic function bytes():stdgo.Slice<stdgo.GoUInt8> return __self__.value.bytes();
    @:keep
    public dynamic function setBytesWithClamping(_x:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>; var _1 : stdgo.Error; } return __self__.value.setBytesWithClamping(_x);
    @:keep
    public dynamic function setCanonicalBytes(_x:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>; var _1 : stdgo.Error; } return __self__.value.setCanonicalBytes(_x);
    @:keep
    public dynamic function _setShortBytes(_x:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar> return __self__.value._setShortBytes(_x);
    @:keep
    public dynamic function setUniformBytes(_x:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>; var _1 : stdgo.Error; } return __self__.value.setUniformBytes(_x);
    @:keep
    public dynamic function set(_x:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>):stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar> return __self__.value.set(_x);
    @:keep
    public dynamic function multiply(_x:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>, _y:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>):stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar> return __self__.value.multiply(_x, _y);
    @:keep
    public dynamic function negate(_x:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>):stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar> return __self__.value.negate(_x);
    @:keep
    public dynamic function subtract(_x:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>, _y:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>):stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar> return __self__.value.subtract(_x, _y);
    @:keep
    public dynamic function add(_x:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>, _y:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>):stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar> return __self__.value.add(_x, _y);
    @:keep
    public dynamic function multiplyAdd(_x:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>, _y:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>, _z:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>):stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar> return __self__.value.multiplyAdd(_x, _y, _z);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

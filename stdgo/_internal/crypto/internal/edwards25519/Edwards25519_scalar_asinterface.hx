package stdgo._internal.crypto.internal.edwards25519;
class Scalar_asInterface {
    @:keep
    @:tdfield
    public dynamic function _signedRadix16():stdgo.GoArray<stdgo.GoInt8> return @:_0 __self__.value._signedRadix16();
    @:keep
    @:tdfield
    public dynamic function _nonAdjacentForm(_w:stdgo.GoUInt):stdgo.GoArray<stdgo.GoInt8> return @:_0 __self__.value._nonAdjacentForm(_w);
    @:keep
    @:tdfield
    public dynamic function equal(_t:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>):stdgo.GoInt return @:_0 __self__.value.equal(_t);
    @:keep
    @:tdfield
    public dynamic function _bytes(_out:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._bytes(_out);
    @:keep
    @:tdfield
    public dynamic function bytes():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.bytes();
    @:keep
    @:tdfield
    public dynamic function setBytesWithClamping(_x:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>; var _1 : stdgo.Error; } return @:_0 __self__.value.setBytesWithClamping(_x);
    @:keep
    @:tdfield
    public dynamic function setCanonicalBytes(_x:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>; var _1 : stdgo.Error; } return @:_0 __self__.value.setCanonicalBytes(_x);
    @:keep
    @:tdfield
    public dynamic function _setShortBytes(_x:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar> return @:_0 __self__.value._setShortBytes(_x);
    @:keep
    @:tdfield
    public dynamic function setUniformBytes(_x:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>; var _1 : stdgo.Error; } return @:_0 __self__.value.setUniformBytes(_x);
    @:keep
    @:tdfield
    public dynamic function set(_x:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar> return @:_0 __self__.value.set(_x);
    @:keep
    @:tdfield
    public dynamic function multiply(_x:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>, _y:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar> return @:_0 __self__.value.multiply(_x, _y);
    @:keep
    @:tdfield
    public dynamic function negate(_x:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar> return @:_0 __self__.value.negate(_x);
    @:keep
    @:tdfield
    public dynamic function subtract(_x:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>, _y:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar> return @:_0 __self__.value.subtract(_x, _y);
    @:keep
    @:tdfield
    public dynamic function add(_x:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>, _y:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar> return @:_0 __self__.value.add(_x, _y);
    @:keep
    @:tdfield
    public dynamic function multiplyAdd(_x:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>, _y:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>, _z:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar> return @:_0 __self__.value.multiplyAdd(_x, _y, _z);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalarpointer.ScalarPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

package _internal.crypto.internal.edwards25519;
class Point_asInterface {
    @:keep
    public dynamic function varTimeDoubleScalarBaseMult(_a:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>, a:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>, _b:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>):stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point> return __self__.value.varTimeDoubleScalarBaseMult(_a, a, _b);
    @:keep
    public dynamic function scalarMult(_x:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>, _q:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>):stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point> return __self__.value.scalarMult(_x, _q);
    @:keep
    public dynamic function scalarBaseMult(_x:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Scalar.Scalar>):stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point> return __self__.value.scalarBaseMult(_x);
    @:keep
    public dynamic function equal(_u:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>):stdgo.GoInt return __self__.value.equal(_u);
    @:keep
    public dynamic function negate(_p:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>):stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point> return __self__.value.negate(_p);
    @:keep
    public dynamic function subtract(_p:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>, _q:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>):stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point> return __self__.value.subtract(_p, _q);
    @:keep
    public dynamic function add(_p:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>, _q:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>):stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point> return __self__.value.add(_p, _q);
    @:keep
    public dynamic function _fromP2(_p:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_projP2.T_projP2>):stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point> return __self__.value._fromP2(_p);
    @:keep
    public dynamic function _fromP1xP1(_p:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_T_projP1xP1.T_projP1xP1>):stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point> return __self__.value._fromP1xP1(_p);
    @:keep
    public dynamic function setBytes(_x:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>; var _1 : stdgo.Error; } return __self__.value.setBytes(_x);
    @:keep
    public dynamic function _bytes(_buf:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):stdgo.Slice<stdgo.GoUInt8> return __self__.value._bytes(_buf);
    @:keep
    public dynamic function bytes():stdgo.Slice<stdgo.GoUInt8> return __self__.value.bytes();
    @:keep
    public dynamic function set(_u:stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>):stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point> return __self__.value.set(_u);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

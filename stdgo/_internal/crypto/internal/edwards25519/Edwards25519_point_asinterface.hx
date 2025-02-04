package stdgo._internal.crypto.internal.edwards25519;
class Point_asInterface {
    @:keep
    @:tdfield
    public dynamic function varTimeDoubleScalarBaseMult(_a:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>, a:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>, _b:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> return @:_0 __self__.value.varTimeDoubleScalarBaseMult(_a, a, _b);
    @:keep
    @:tdfield
    public dynamic function scalarMult(_x:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>, _q:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> return @:_0 __self__.value.scalarMult(_x, _q);
    @:keep
    @:tdfield
    public dynamic function scalarBaseMult(_x:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> return @:_0 __self__.value.scalarBaseMult(_x);
    @:keep
    @:tdfield
    public dynamic function equal(_u:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>):stdgo.GoInt return @:_0 __self__.value.equal(_u);
    @:keep
    @:tdfield
    public dynamic function negate(_p:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> return @:_0 __self__.value.negate(_p);
    @:keep
    @:tdfield
    public dynamic function subtract(_p:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>, _q:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> return @:_0 __self__.value.subtract(_p, _q);
    @:keep
    @:tdfield
    public dynamic function add(_p:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>, _q:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> return @:_0 __self__.value.add(_p, _q);
    @:keep
    @:tdfield
    public dynamic function _fromP2(_p:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp2.T_projP2>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> return @:_0 __self__.value._fromP2(_p);
    @:keep
    @:tdfield
    public dynamic function _fromP1xP1(_p:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_projp1xp1.T_projP1xP1>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> return @:_0 __self__.value._fromP1xP1(_p);
    @:keep
    @:tdfield
    public dynamic function setBytes(_x:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>; var _1 : stdgo.Error; } return @:_0 __self__.value.setBytes(_x);
    @:keep
    @:tdfield
    public dynamic function _bytes(_buf:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._bytes(_buf);
    @:keep
    @:tdfield
    public dynamic function bytes():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.bytes();
    @:keep
    @:tdfield
    public dynamic function set(_u:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point> return @:_0 __self__.value.set(_u);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.internal.edwards25519.Edwards25519_pointpointer.PointPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

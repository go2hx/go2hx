package stdgo._internal.crypto.internal.nistec.fiat;
class P256Element_asInterface {
    @:keep
    @:tdfield
    public dynamic function invert(_x:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element> return @:_0 __self__.value.invert(_x);
    @:keep
    @:tdfield
    public dynamic function select(_a:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>, _b:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>, _cond:stdgo.GoInt):stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element> return @:_0 __self__.value.select(_a, _b, _cond);
    @:keep
    @:tdfield
    public dynamic function square(_t:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element> return @:_0 __self__.value.square(_t);
    @:keep
    @:tdfield
    public dynamic function mul(_t1:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>, _t2:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element> return @:_0 __self__.value.mul(_t1, _t2);
    @:keep
    @:tdfield
    public dynamic function sub(_t1:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>, _t2:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element> return @:_0 __self__.value.sub(_t1, _t2);
    @:keep
    @:tdfield
    public dynamic function add(_t1:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>, _t2:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element> return @:_0 __self__.value.add(_t1, _t2);
    @:keep
    @:tdfield
    public dynamic function setBytes(_v:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>; var _1 : stdgo.Error; } return @:_0 __self__.value.setBytes(_v);
    @:keep
    @:tdfield
    public dynamic function _bytes(_out:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._bytes(_out);
    @:keep
    @:tdfield
    public dynamic function bytes():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.bytes();
    @:keep
    @:tdfield
    public dynamic function set(_t:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>):stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element> return @:_0 __self__.value.set(_t);
    @:keep
    @:tdfield
    public dynamic function isZero():stdgo.GoInt return @:_0 __self__.value.isZero();
    @:keep
    @:tdfield
    public dynamic function equal(_t:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element>):stdgo.GoInt return @:_0 __self__.value.equal(_t);
    @:keep
    @:tdfield
    public dynamic function one():stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256element.P256Element> return @:_0 __self__.value.one();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.internal.nistec.fiat.Fiat_p256elementpointer.P256ElementPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

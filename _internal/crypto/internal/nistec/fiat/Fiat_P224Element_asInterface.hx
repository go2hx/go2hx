package _internal.crypto.internal.nistec.fiat;
class P224Element_asInterface {
    @:keep
    public dynamic function invert(_x:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>):stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element> return __self__.value.invert(_x);
    @:keep
    public dynamic function select(_a:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>, _b:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>, _cond:stdgo.GoInt):stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element> return __self__.value.select(_a, _b, _cond);
    @:keep
    public dynamic function square(_t:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>):stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element> return __self__.value.square(_t);
    @:keep
    public dynamic function mul(_t1:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>, _t2:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>):stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element> return __self__.value.mul(_t1, _t2);
    @:keep
    public dynamic function sub(_t1:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>, _t2:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>):stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element> return __self__.value.sub(_t1, _t2);
    @:keep
    public dynamic function add(_t1:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>, _t2:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>):stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element> return __self__.value.add(_t1, _t2);
    @:keep
    public dynamic function setBytes(_v:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>; var _1 : stdgo.Error; } return __self__.value.setBytes(_v);
    @:keep
    public dynamic function _bytes(_out:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):stdgo.Slice<stdgo.GoUInt8> return __self__.value._bytes(_out);
    @:keep
    public dynamic function bytes():stdgo.Slice<stdgo.GoUInt8> return __self__.value.bytes();
    @:keep
    public dynamic function set(_t:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>):stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element> return __self__.value.set(_t);
    @:keep
    public dynamic function isZero():stdgo.GoInt return __self__.value.isZero();
    @:keep
    public dynamic function equal(_t:stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>):stdgo.GoInt return __self__.value.equal(_t);
    @:keep
    public dynamic function one():stdgo.Ref<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element> return __self__.value.one();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.crypto.internal.nistec.fiat.Fiat_P224Element.P224Element>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

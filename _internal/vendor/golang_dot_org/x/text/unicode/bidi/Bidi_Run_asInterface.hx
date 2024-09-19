package _internal.vendor.golang_dot_org.x.text.unicode.bidi;
class Run_asInterface {
    @:keep
    public dynamic function pos():{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } return __self__.value.pos();
    @:keep
    public dynamic function direction():_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Direction.Direction return __self__.value.direction();
    @:keep
    public dynamic function bytes():stdgo.Slice<stdgo.GoUInt8> return __self__.value.bytes();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Run.Run>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

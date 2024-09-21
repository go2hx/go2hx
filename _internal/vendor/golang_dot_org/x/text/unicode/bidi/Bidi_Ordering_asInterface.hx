package _internal.vendor.golang_dot_org.x.text.unicode.bidi;
class Ordering_asInterface {
    @:keep
    public dynamic function run(_i:stdgo.GoInt):_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Run.Run return __self__.value.run(_i);
    @:keep
    public dynamic function numRuns():stdgo.GoInt return __self__.value.numRuns();
    @:keep
    public dynamic function direction():_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Direction.Direction return __self__.value.direction();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Ordering.Ordering>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

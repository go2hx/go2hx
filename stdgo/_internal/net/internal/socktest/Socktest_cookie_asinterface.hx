package stdgo._internal.net.internal.socktest;
class Cookie_asInterface {
    @:keep
    @:tdfield
    public dynamic function protocol():stdgo.GoInt return @:_0 __self__.value.protocol();
    @:keep
    @:tdfield
    public dynamic function type():stdgo.GoInt return @:_0 __self__.value.type();
    @:keep
    @:tdfield
    public dynamic function family():stdgo.GoInt return @:_0 __self__.value.family();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.internal.socktest.Socktest_cookiepointer.CookiePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

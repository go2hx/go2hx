package stdgo._internal.net.http;
class T_http2closeWaiter_asInterface {
    @:keep
    @:tdfield
    public dynamic function wait_():Void @:_0 __self__.value.wait_();
    @:keep
    @:tdfield
    public dynamic function close():Void @:_0 __self__.value.close();
    @:keep
    @:tdfield
    public dynamic function init():Void @:_0 __self__.value.init();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_t_http2closewaiterpointer.T_http2closeWaiterPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

package stdgo._internal.net.http.fcgi;
class T_request_asInterface {
    @:keep
    @:tdfield
    public dynamic function _parseParams():Void @:_0 __self__.value._parseParams();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.fcgi.Fcgi_t_requestpointer.T_requestPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

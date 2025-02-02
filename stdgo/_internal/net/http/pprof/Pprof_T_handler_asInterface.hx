package stdgo._internal.net.http.pprof;
class T_handler_asInterface {
    @:keep
    @:tdfield
    public dynamic function _serveDeltaProfile(_w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_Profile.Profile>, _secStr:stdgo.GoString):Void @:_0 __self__.value._serveDeltaProfile(_w, _r, _p, _secStr);
    @:keep
    @:tdfield
    public dynamic function serveHTTP(_w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void @:_0 __self__.value.serveHTTP(_w, _r);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.pprof.Pprof_T_handlerPointer.T_handlerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

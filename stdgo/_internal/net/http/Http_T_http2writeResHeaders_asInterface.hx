package stdgo._internal.net.http;
class T_http2writeResHeaders_asInterface {
    @:keep
    public dynamic function _writeHeaderBlock(_ctx:stdgo._internal.net.http.Http_T_http2writeContext.T_http2writeContext, _frag:stdgo.Slice<stdgo.GoUInt8>, _firstFrag:Bool, _lastFrag:Bool):stdgo.Error return __self__.value._writeHeaderBlock(_ctx, _frag, _firstFrag, _lastFrag);
    @:keep
    public dynamic function _writeFrame(_ctx:stdgo._internal.net.http.Http_T_http2writeContext.T_http2writeContext):stdgo.Error return __self__.value._writeFrame(_ctx);
    @:keep
    public dynamic function _staysWithinBuffer(_max:stdgo.GoInt):Bool return __self__.value._staysWithinBuffer(_max);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.Http_T_http2writeResHeaders.T_http2writeResHeaders>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

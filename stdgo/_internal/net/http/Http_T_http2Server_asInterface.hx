package stdgo._internal.net.http;
class T_http2Server_asInterface {
    @:keep
    public dynamic function serveConn(_c:stdgo._internal.net.Net_Conn.Conn, _opts:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ServeConnOpts.T_http2ServeConnOpts>):Void __self__.value.serveConn(_c, _opts);
    @:keep
    public dynamic function _maxQueuedControlFrames():stdgo.GoInt return __self__.value._maxQueuedControlFrames();
    @:keep
    public dynamic function _maxEncoderHeaderTableSize():stdgo.GoUInt32 return __self__.value._maxEncoderHeaderTableSize();
    @:keep
    public dynamic function _maxDecoderHeaderTableSize():stdgo.GoUInt32 return __self__.value._maxDecoderHeaderTableSize();
    @:keep
    public dynamic function _maxConcurrentStreams():stdgo.GoUInt32 return __self__.value._maxConcurrentStreams();
    @:keep
    public dynamic function _maxReadFrameSize():stdgo.GoUInt32 return __self__.value._maxReadFrameSize();
    @:keep
    public dynamic function _initialStreamRecvWindowSize():stdgo.GoInt32 return __self__.value._initialStreamRecvWindowSize();
    @:keep
    public dynamic function _initialConnRecvWindowSize():stdgo.GoInt32 return __self__.value._initialConnRecvWindowSize();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.Http_T_http2Server.T_http2Server>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

package stdgo._internal.net.http;
class T_http2Server_asInterface {
    @:keep
    @:tdfield
    public dynamic function serveConn(_c:stdgo._internal.net.Net_Conn.Conn, _opts:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ServeConnOpts.T_http2ServeConnOpts>):Void @:_0 __self__.value.serveConn(_c, _opts);
    @:keep
    @:tdfield
    public dynamic function _maxQueuedControlFrames():stdgo.GoInt return @:_0 __self__.value._maxQueuedControlFrames();
    @:keep
    @:tdfield
    public dynamic function _maxEncoderHeaderTableSize():stdgo.GoUInt32 return @:_0 __self__.value._maxEncoderHeaderTableSize();
    @:keep
    @:tdfield
    public dynamic function _maxDecoderHeaderTableSize():stdgo.GoUInt32 return @:_0 __self__.value._maxDecoderHeaderTableSize();
    @:keep
    @:tdfield
    public dynamic function _maxConcurrentStreams():stdgo.GoUInt32 return @:_0 __self__.value._maxConcurrentStreams();
    @:keep
    @:tdfield
    public dynamic function _maxReadFrameSize():stdgo.GoUInt32 return @:_0 __self__.value._maxReadFrameSize();
    @:keep
    @:tdfield
    public dynamic function _initialStreamRecvWindowSize():stdgo.GoInt32 return @:_0 __self__.value._initialStreamRecvWindowSize();
    @:keep
    @:tdfield
    public dynamic function _initialConnRecvWindowSize():stdgo.GoInt32 return @:_0 __self__.value._initialConnRecvWindowSize();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_T_http2ServerPointer.T_http2ServerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

package stdgo._internal.net.http;
class T_http2clientStream_asInterface {
    @:keep
    @:tdfield
    public dynamic function _copyTrailers():Void @:_0 __self__.value._copyTrailers();
    @:keep
    @:tdfield
    public dynamic function _awaitFlowControl(_maxBytes:stdgo.GoInt):{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } return @:_0 __self__.value._awaitFlowControl(_maxBytes);
    @:keep
    @:tdfield
    public dynamic function _writeRequestBody(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):stdgo.Error return @:_0 __self__.value._writeRequestBody(_req);
    @:keep
    @:tdfield
    public dynamic function _frameScratchBufferLen(_maxFrameSize:stdgo.GoInt):stdgo.GoInt return @:_0 __self__.value._frameScratchBufferLen(_maxFrameSize);
    @:keep
    @:tdfield
    public dynamic function _cleanupWriteRequest(_err:stdgo.Error):Void @:_0 __self__.value._cleanupWriteRequest(_err);
    @:keep
    @:tdfield
    public dynamic function _encodeAndWriteHeaders(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):stdgo.Error return @:_0 __self__.value._encodeAndWriteHeaders(_req);
    @:keep
    @:tdfield
    public dynamic function _writeRequest(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):stdgo.Error return @:_0 __self__.value._writeRequest(_req);
    @:keep
    @:tdfield
    public dynamic function _doRequest(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void @:_0 __self__.value._doRequest(_req);
    @:keep
    @:tdfield
    public dynamic function _closeReqBodyLocked():Void @:_0 __self__.value._closeReqBodyLocked();
    @:keep
    @:tdfield
    public dynamic function _abortRequestBodyWrite():Void @:_0 __self__.value._abortRequestBodyWrite();
    @:keep
    @:tdfield
    public dynamic function _abortStreamLocked(_err:stdgo.Error):Void @:_0 __self__.value._abortStreamLocked(_err);
    @:keep
    @:tdfield
    public dynamic function _abortStream(_err:stdgo.Error):Void @:_0 __self__.value._abortStream(_err);
    @:keep
    @:tdfield
    public dynamic function _get1xxTraceFunc():(stdgo.GoInt, stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader) -> stdgo.Error return @:_0 __self__.value._get1xxTraceFunc();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_T_http2clientStreamPointer.T_http2clientStreamPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

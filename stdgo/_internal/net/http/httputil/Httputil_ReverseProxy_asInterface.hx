package stdgo._internal.net.http.httputil;
class ReverseProxy_asInterface {
    @:keep
    public dynamic function _handleUpgradeResponse(_rw:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _res:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>):Void __self__.value._handleUpgradeResponse(_rw, _req, _res);
    @:keep
    public dynamic function _logf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void __self__.value._logf(_format, ..._args);
    @:keep
    public dynamic function _copyBuffer(_dst:stdgo._internal.io.Io_Writer.Writer, _src:stdgo._internal.io.Io_Reader.Reader, _buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value._copyBuffer(_dst, _src, _buf);
    @:keep
    public dynamic function _copyResponse(_dst:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _src:stdgo._internal.io.Io_Reader.Reader, _flushInterval:stdgo._internal.time.Time_Duration.Duration):stdgo.Error return __self__.value._copyResponse(_dst, _src, _flushInterval);
    @:keep
    public dynamic function _flushInterval(_res:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>):stdgo._internal.time.Time_Duration.Duration return __self__.value._flushInterval(_res);
    @:keep
    public dynamic function serveHTTP(_rw:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void __self__.value.serveHTTP(_rw, _req);
    @:keep
    public dynamic function _modifyResponse(_rw:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _res:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Bool return __self__.value._modifyResponse(_rw, _res, _req);
    @:keep
    public dynamic function _getErrorHandler():(stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.Error) -> Void return __self__.value._getErrorHandler();
    @:keep
    public dynamic function _defaultErrorHandler(_rw:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _err:stdgo.Error):Void __self__.value._defaultErrorHandler(_rw, _req, _err);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.httputil.Httputil_ReverseProxy.ReverseProxy>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
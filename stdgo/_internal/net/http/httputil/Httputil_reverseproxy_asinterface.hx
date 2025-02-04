package stdgo._internal.net.http.httputil;
class ReverseProxy_asInterface {
    @:keep
    @:tdfield
    public dynamic function _handleUpgradeResponse(_rw:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _res:stdgo.Ref<stdgo._internal.net.http.Http_response.Response>):Void @:_0 __self__.value._handleUpgradeResponse(_rw, _req, _res);
    @:keep
    @:tdfield
    public dynamic function _logf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value._logf(_format, ..._args);
    @:keep
    @:tdfield
    public dynamic function _copyBuffer(_dst:stdgo._internal.io.Io_writer.Writer, _src:stdgo._internal.io.Io_reader.Reader, _buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:_0 __self__.value._copyBuffer(_dst, _src, _buf);
    @:keep
    @:tdfield
    public dynamic function _copyResponse(_dst:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _src:stdgo._internal.io.Io_reader.Reader, _flushInterval:stdgo._internal.time.Time_duration.Duration):stdgo.Error return @:_0 __self__.value._copyResponse(_dst, _src, _flushInterval);
    @:keep
    @:tdfield
    public dynamic function _flushInterval(_res:stdgo.Ref<stdgo._internal.net.http.Http_response.Response>):stdgo._internal.time.Time_duration.Duration return @:_0 __self__.value._flushInterval(_res);
    @:keep
    @:tdfield
    public dynamic function serveHTTP(_rw:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Void @:_0 __self__.value.serveHTTP(_rw, _req);
    @:keep
    @:tdfield
    public dynamic function _modifyResponse(_rw:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _res:stdgo.Ref<stdgo._internal.net.http.Http_response.Response>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Bool return @:_0 __self__.value._modifyResponse(_rw, _res, _req);
    @:keep
    @:tdfield
    public dynamic function _getErrorHandler():(stdgo._internal.net.http.Http_responsewriter.ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, stdgo.Error) -> Void return @:_0 __self__.value._getErrorHandler();
    @:keep
    @:tdfield
    public dynamic function _defaultErrorHandler(_rw:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _err:stdgo.Error):Void @:_0 __self__.value._defaultErrorHandler(_rw, _req, _err);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.httputil.Httputil_reverseproxypointer.ReverseProxyPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

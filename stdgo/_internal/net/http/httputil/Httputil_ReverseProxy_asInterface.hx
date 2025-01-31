package stdgo._internal.net.http.httputil;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.http.internal.Internal;
import stdgo._internal.net.http.Http;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.net.textproto.Textproto;
import _internal.golang_dot_org.x.net.http.httpguts.Httpguts;
import stdgo._internal.net.url.Url;
import stdgo._internal.net.Net;
import stdgo._internal.context.Context;
import stdgo._internal.net.http.internal.ascii.Ascii;
import stdgo._internal.net.http.httptrace.Httptrace;
import stdgo._internal.mime.Mime;
import stdgo._internal.time.Time;
import stdgo._internal.log.Log;
class ReverseProxy_asInterface {
    @:keep
    @:tdfield
    public dynamic function _handleUpgradeResponse(_rw:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _res:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>):Void @:_0 __self__.value._handleUpgradeResponse(_rw, _req, _res);
    @:keep
    @:tdfield
    public dynamic function _logf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value._logf(_format, ..._args);
    @:keep
    @:tdfield
    public dynamic function _copyBuffer(_dst:stdgo._internal.io.Io_Writer.Writer, _src:stdgo._internal.io.Io_Reader.Reader, _buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:_0 __self__.value._copyBuffer(_dst, _src, _buf);
    @:keep
    @:tdfield
    public dynamic function _copyResponse(_dst:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _src:stdgo._internal.io.Io_Reader.Reader, _flushInterval:stdgo._internal.time.Time_Duration.Duration):stdgo.Error return @:_0 __self__.value._copyResponse(_dst, _src, _flushInterval);
    @:keep
    @:tdfield
    public dynamic function _flushInterval(_res:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>):stdgo._internal.time.Time_Duration.Duration return @:_0 __self__.value._flushInterval(_res);
    @:keep
    @:tdfield
    public dynamic function serveHTTP(_rw:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void @:_0 __self__.value.serveHTTP(_rw, _req);
    @:keep
    @:tdfield
    public dynamic function _modifyResponse(_rw:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _res:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Bool return @:_0 __self__.value._modifyResponse(_rw, _res, _req);
    @:keep
    @:tdfield
    public dynamic function _getErrorHandler():(stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.Error) -> Void return @:_0 __self__.value._getErrorHandler();
    @:keep
    @:tdfield
    public dynamic function _defaultErrorHandler(_rw:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _err:stdgo.Error):Void @:_0 __self__.value._defaultErrorHandler(_rw, _req, _err);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.httputil.Httputil_ReverseProxyPointer.ReverseProxyPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

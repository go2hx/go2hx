package stdgo._internal.net.http.cgi;
import stdgo._internal.regexp.Regexp;
import stdgo._internal.os.Os;
import stdgo._internal.io.Io;
import stdgo._internal.strings.Strings;
import stdgo._internal.errors.Errors;
import stdgo._internal.net.http.Http;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.net.url.Url;
import stdgo._internal.net.Net;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.path.filepath.Filepath;
import _internal.golang_dot_org.x.net.http.httpguts.Httpguts;
import stdgo._internal.net.textproto.Textproto;
import stdgo._internal.log.Log;
class Handler_asInterface {
    @:keep
    @:tdfield
    public dynamic function _handleInternalRedirect(_rw:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _path:stdgo.GoString):Void @:_0 __self__.value._handleInternalRedirect(_rw, _req, _path);
    @:keep
    @:tdfield
    public dynamic function _printf(_format:stdgo.GoString, _v:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value._printf(_format, ..._v);
    @:keep
    @:tdfield
    public dynamic function serveHTTP(_rw:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void @:_0 __self__.value.serveHTTP(_rw, _req);
    @:keep
    @:tdfield
    public dynamic function _stderr():stdgo._internal.io.Io_Writer.Writer return @:_0 __self__.value._stderr();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.cgi.Cgi_HandlerPointer.HandlerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

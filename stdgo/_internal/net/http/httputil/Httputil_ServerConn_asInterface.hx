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
class ServerConn_asInterface {
    @:keep
    @:tdfield
    public dynamic function write(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _resp:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>):stdgo.Error return @:_0 __self__.value.write(_req, _resp);
    @:keep
    @:tdfield
    public dynamic function pending():stdgo.GoInt return @:_0 __self__.value.pending();
    @:keep
    @:tdfield
    public dynamic function read():{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } return @:_0 __self__.value.read();
    @:keep
    @:tdfield
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    @:keep
    @:tdfield
    public dynamic function hijack():{ var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>; } return @:_0 __self__.value.hijack();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.httputil.Httputil_ServerConnPointer.ServerConnPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}

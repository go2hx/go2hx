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
@:keep @:allow(stdgo._internal.net.http.httputil.Httputil.T_dumpConn_asInterface) class T_dumpConn_static_extension {
    @:keep
    @:tdfield
    static public function setWriteDeadline( _c:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn>, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn> = _c;
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function setReadDeadline( _c:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn>, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn> = _c;
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function setDeadline( _c:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn>, _t:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn> = _c;
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function remoteAddr( _c:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn>):stdgo._internal.net.Net_Addr.Addr {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn> = _c;
        return (null : stdgo._internal.net.Net_Addr.Addr);
    }
    @:keep
    @:tdfield
    static public function localAddr( _c:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn>):stdgo._internal.net.Net_Addr.Addr {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn> = _c;
        return (null : stdgo._internal.net.Net_Addr.Addr);
    }
    @:keep
    @:tdfield
    static public function close( _c:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn> = _c;
        return (null : stdgo.Error);
    }
    @:embedded
    @:embeddededffieldsffun
    public static function write( __self__:stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.write(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function read( __self__:stdgo._internal.net.http.httputil.Httputil_T_dumpConn.T_dumpConn, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.read(_0);
}

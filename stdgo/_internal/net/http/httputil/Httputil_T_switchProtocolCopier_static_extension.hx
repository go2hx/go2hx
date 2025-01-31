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
@:keep @:allow(stdgo._internal.net.http.httputil.Httputil.T_switchProtocolCopier_asInterface) class T_switchProtocolCopier_static_extension {
    @:keep
    @:tdfield
    static public function _copyToBackend( _c:stdgo._internal.net.http.httputil.Httputil_T_switchProtocolCopier.T_switchProtocolCopier, _errc:stdgo.Chan<stdgo.Error>):Void {
        @:recv var _c:stdgo._internal.net.http.httputil.Httputil_T_switchProtocolCopier.T_switchProtocolCopier = _c?.__copy__();
        var __tmp__ = stdgo._internal.io.Io_copy.copy(_c._backend, _c._user), __0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _errc.__send__(_err);
    }
    @:keep
    @:tdfield
    static public function _copyFromBackend( _c:stdgo._internal.net.http.httputil.Httputil_T_switchProtocolCopier.T_switchProtocolCopier, _errc:stdgo.Chan<stdgo.Error>):Void {
        @:recv var _c:stdgo._internal.net.http.httputil.Httputil_T_switchProtocolCopier.T_switchProtocolCopier = _c?.__copy__();
        var __tmp__ = stdgo._internal.io.Io_copy.copy(_c._user, _c._backend), __0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _errc.__send__(_err);
    }
}

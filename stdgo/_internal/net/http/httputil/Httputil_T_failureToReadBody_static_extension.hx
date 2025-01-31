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
@:keep @:allow(stdgo._internal.net.http.httputil.Httputil.T_failureToReadBody_asInterface) class T_failureToReadBody_static_extension {
    @:keep
    @:tdfield
    static public function close( _:stdgo._internal.net.http.httputil.Httputil_T_failureToReadBody.T_failureToReadBody):stdgo.Error {
        @:recv var _:stdgo._internal.net.http.httputil.Httputil_T_failureToReadBody.T_failureToReadBody = _?.__copy__();
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function read( _:stdgo._internal.net.http.httputil.Httputil_T_failureToReadBody.T_failureToReadBody, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:stdgo._internal.net.http.httputil.Httputil_T_failureToReadBody.T_failureToReadBody = _?.__copy__();
        return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.net.http.httputil.Httputil__errNoBody._errNoBody };
    }
}

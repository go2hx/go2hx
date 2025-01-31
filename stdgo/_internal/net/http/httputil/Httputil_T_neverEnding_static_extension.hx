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
@:keep @:allow(stdgo._internal.net.http.httputil.Httputil.T_neverEnding_asInterface) class T_neverEnding_static_extension {
    @:keep
    @:tdfield
    static public function read( _b:stdgo._internal.net.http.httputil.Httputil_T_neverEnding.T_neverEnding, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo._internal.net.http.httputil.Httputil_T_neverEnding.T_neverEnding = _b;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        for (_i => _ in _p) {
            _p[(_i : stdgo.GoInt)] = (_b : stdgo.GoUInt8);
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (_p.length), _1 : (null : stdgo.Error) };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}

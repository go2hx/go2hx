package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2Flags_asInterface) class T_http2Flags_static_extension {
    @:keep
    static public function has( _f:stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags, _v:stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags):Bool {
        @:recv var _f:stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags = _f;
        return ((_f & _v : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags)) == (_v);
    }
}

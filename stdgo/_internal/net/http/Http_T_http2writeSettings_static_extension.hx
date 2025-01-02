package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2writeSettings_asInterface) class T_http2writeSettings_static_extension {
    @:keep
    @:tdfield
    static public function _writeFrame( _s:stdgo._internal.net.http.Http_T_http2writeSettings.T_http2writeSettings, _ctx:stdgo._internal.net.http.Http_T_http2writeContext.T_http2writeContext):stdgo.Error {
        @:recv var _s:stdgo._internal.net.http.Http_T_http2writeSettings.T_http2writeSettings = _s;
        return @:check2r _ctx.framer().writeSettings(...((_s : stdgo.Slice<stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting>) : Array<stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting>));
    }
    @:keep
    @:tdfield
    static public function _staysWithinBuffer( _s:stdgo._internal.net.http.Http_T_http2writeSettings.T_http2writeSettings, _max:stdgo.GoInt):Bool {
        @:recv var _s:stdgo._internal.net.http.Http_T_http2writeSettings.T_http2writeSettings = _s;
        {};
        return (((9 : stdgo.GoInt) + ((6 : stdgo.GoInt) * (_s.length) : stdgo.GoInt) : stdgo.GoInt) <= _max : Bool);
    }
}

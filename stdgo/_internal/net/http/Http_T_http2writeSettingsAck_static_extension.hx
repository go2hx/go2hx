package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2writeSettingsAck_asInterface) class T_http2writeSettingsAck_static_extension {
    @:keep
    static public function _staysWithinBuffer( _:stdgo._internal.net.http.Http_T_http2writeSettingsAck.T_http2writeSettingsAck, _max:stdgo.GoInt):Bool {
        @:recv var _:stdgo._internal.net.http.Http_T_http2writeSettingsAck.T_http2writeSettingsAck = _?.__copy__();
        return ((9 : stdgo.GoInt) <= _max : Bool);
    }
    @:keep
    static public function _writeFrame( _:stdgo._internal.net.http.Http_T_http2writeSettingsAck.T_http2writeSettingsAck, _ctx:stdgo._internal.net.http.Http_T_http2writeContext.T_http2writeContext):stdgo.Error {
        @:recv var _:stdgo._internal.net.http.Http_T_http2writeSettingsAck.T_http2writeSettingsAck = _?.__copy__();
        return _ctx.framer().writeSettingsAck();
    }
}

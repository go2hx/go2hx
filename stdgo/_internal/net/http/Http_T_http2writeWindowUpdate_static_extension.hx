package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2writeWindowUpdate_asInterface) class T_http2writeWindowUpdate_static_extension {
    @:keep
    static public function _writeFrame( _wu:stdgo._internal.net.http.Http_T_http2writeWindowUpdate.T_http2writeWindowUpdate, _ctx:stdgo._internal.net.http.Http_T_http2writeContext.T_http2writeContext):stdgo.Error {
        @:recv var _wu:stdgo._internal.net.http.Http_T_http2writeWindowUpdate.T_http2writeWindowUpdate = _wu?.__copy__();
        return _ctx.framer().writeWindowUpdate(_wu._streamID, _wu._n);
    }
    @:keep
    static public function _staysWithinBuffer( _wu:stdgo._internal.net.http.Http_T_http2writeWindowUpdate.T_http2writeWindowUpdate, _max:stdgo.GoInt):Bool {
        @:recv var _wu:stdgo._internal.net.http.Http_T_http2writeWindowUpdate.T_http2writeWindowUpdate = _wu?.__copy__();
        return ((13 : stdgo.GoInt) <= _max : Bool);
    }
}

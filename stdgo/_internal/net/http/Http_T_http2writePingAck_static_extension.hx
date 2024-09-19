package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2writePingAck_asInterface) class T_http2writePingAck_static_extension {
    @:keep
    static public function _staysWithinBuffer( _w:stdgo._internal.net.http.Http_T_http2writePingAck.T_http2writePingAck, _max:stdgo.GoInt):Bool {
        @:recv var _w:stdgo._internal.net.http.Http_T_http2writePingAck.T_http2writePingAck = _w?.__copy__();
        return ((17 : stdgo.GoInt) <= _max : Bool);
    }
    @:keep
    static public function _writeFrame( _w:stdgo._internal.net.http.Http_T_http2writePingAck.T_http2writePingAck, _ctx:stdgo._internal.net.http.Http_T_http2writeContext.T_http2writeContext):stdgo.Error {
        @:recv var _w:stdgo._internal.net.http.Http_T_http2writePingAck.T_http2writePingAck = _w?.__copy__();
        return _ctx.framer().writePing(true, _w._pf.data?.__copy__());
    }
}

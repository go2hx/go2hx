package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2handlerPanicRST_asInterface) class T_http2handlerPanicRST_static_extension {
    @:keep
    static public function _staysWithinBuffer( _hp:stdgo._internal.net.http.Http_T_http2handlerPanicRST.T_http2handlerPanicRST, _max:stdgo.GoInt):Bool {
        @:recv var _hp:stdgo._internal.net.http.Http_T_http2handlerPanicRST.T_http2handlerPanicRST = _hp?.__copy__();
        return ((13 : stdgo.GoInt) <= _max : Bool);
    }
    @:keep
    static public function _writeFrame( _hp:stdgo._internal.net.http.Http_T_http2handlerPanicRST.T_http2handlerPanicRST, _ctx:stdgo._internal.net.http.Http_T_http2writeContext.T_http2writeContext):stdgo.Error {
        @:recv var _hp:stdgo._internal.net.http.Http_T_http2handlerPanicRST.T_http2handlerPanicRST = _hp?.__copy__();
        return _ctx.framer().writeRSTStream(_hp.streamID, (2u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode));
    }
}

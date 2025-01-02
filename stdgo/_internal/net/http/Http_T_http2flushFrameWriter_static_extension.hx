package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2flushFrameWriter_asInterface) class T_http2flushFrameWriter_static_extension {
    @:keep
    @:tdfield
    static public function _staysWithinBuffer( _:stdgo._internal.net.http.Http_T_http2flushFrameWriter.T_http2flushFrameWriter, _max:stdgo.GoInt):Bool {
        @:recv var _:stdgo._internal.net.http.Http_T_http2flushFrameWriter.T_http2flushFrameWriter = _?.__copy__();
        return false;
    }
    @:keep
    @:tdfield
    static public function _writeFrame( _:stdgo._internal.net.http.Http_T_http2flushFrameWriter.T_http2flushFrameWriter, _ctx:stdgo._internal.net.http.Http_T_http2writeContext.T_http2writeContext):stdgo.Error {
        @:recv var _:stdgo._internal.net.http.Http_T_http2flushFrameWriter.T_http2flushFrameWriter = _?.__copy__();
        return _ctx.flush();
    }
}

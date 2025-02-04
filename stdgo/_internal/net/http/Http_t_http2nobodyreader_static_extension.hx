package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2noBodyReader_asInterface) class T_http2noBodyReader_static_extension {
    @:keep
    @:tdfield
    static public function read( _:stdgo._internal.net.http.Http_t_http2nobodyreader.T_http2noBodyReader, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:stdgo._internal.net.http.Http_t_http2nobodyreader.T_http2noBodyReader = _?.__copy__();
        return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.net.http.Http__io._io.eOF };
    }
    @:keep
    @:tdfield
    static public function close( _:stdgo._internal.net.http.Http_t_http2nobodyreader.T_http2noBodyReader):stdgo.Error {
        @:recv var _:stdgo._internal.net.http.Http_t_http2nobodyreader.T_http2noBodyReader = _?.__copy__();
        return (null : stdgo.Error);
    }
}

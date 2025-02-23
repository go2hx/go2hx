package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2errorReader_asInterface) class T_http2errorReader_static_extension {
    @:keep
    @:tdfield
    static public function read( _r:stdgo._internal.net.http.Http_t_http2errorreader.T_http2errorReader, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo._internal.net.http.Http_t_http2errorreader.T_http2errorReader = _r?.__copy__();
        return { _0 : (0 : stdgo.GoInt), _1 : _r._err };
    }
}

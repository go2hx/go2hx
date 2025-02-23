package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_noBody_asInterface) class T_noBody_static_extension {
    @:keep
    @:tdfield
    static public function writeTo( _:stdgo._internal.net.http.Http_t_nobody.T_noBody, _0:stdgo._internal.io.Io_writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _:stdgo._internal.net.http.Http_t_nobody.T_noBody = _?.__copy__();
        return { _0 : (0i64 : stdgo.GoInt64), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function close( _:stdgo._internal.net.http.Http_t_nobody.T_noBody):stdgo.Error {
        @:recv var _:stdgo._internal.net.http.Http_t_nobody.T_noBody = _?.__copy__();
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function read( _:stdgo._internal.net.http.Http_t_nobody.T_noBody, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:stdgo._internal.net.http.Http_t_nobody.T_noBody = _?.__copy__();
        return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.net.http.Http__io._io.eOF };
    }
}

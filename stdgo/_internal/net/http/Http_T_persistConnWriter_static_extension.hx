package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_persistConnWriter_asInterface) class T_persistConnWriter_static_extension {
    @:keep
    @:tdfield
    static public function readFrom( _w:stdgo._internal.net.http.Http_T_persistConnWriter.T_persistConnWriter, _r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo._internal.net.http.Http_T_persistConnWriter.T_persistConnWriter = _w?.__copy__();
        var _n = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        {
            var __tmp__ = stdgo._internal.io.Io_copy.copy((@:checkr _w._pc ?? throw "null pointer dereference")._conn, _r);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        (@:checkr _w._pc ?? throw "null pointer dereference")._nwrite = ((@:checkr _w._pc ?? throw "null pointer dereference")._nwrite + (_n) : stdgo.GoInt64);
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function write( _w:stdgo._internal.net.http.Http_T_persistConnWriter.T_persistConnWriter, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo._internal.net.http.Http_T_persistConnWriter.T_persistConnWriter = _w?.__copy__();
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        {
            var __tmp__ = (@:checkr _w._pc ?? throw "null pointer dereference")._conn.write(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        (@:checkr _w._pc ?? throw "null pointer dereference")._nwrite = ((@:checkr _w._pc ?? throw "null pointer dereference")._nwrite + ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        return { _0 : _n, _1 : _err };
    }
}

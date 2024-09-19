package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_checkConnErrorWriter_asInterface) class T_checkConnErrorWriter_static_extension {
    @:keep
    static public function write( _w:stdgo._internal.net.http.Http_T_checkConnErrorWriter.T_checkConnErrorWriter, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo._internal.net.http.Http_T_checkConnErrorWriter.T_checkConnErrorWriter = _w?.__copy__();
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        {
            var __tmp__ = _w._c._rwc.write(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (((_err != null) && (_w._c._werr == null) : Bool)) {
            _w._c._werr = _err;
            _w._c._cancelCtx();
        };
        return { _0 : _n, _1 : _err };
    }
}

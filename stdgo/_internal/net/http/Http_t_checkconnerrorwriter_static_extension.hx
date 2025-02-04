package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_checkConnErrorWriter_asInterface) class T_checkConnErrorWriter_static_extension {
    @:keep
    @:tdfield
    static public function write( _w:stdgo._internal.net.http.Http_t_checkconnerrorwriter.T_checkConnErrorWriter, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo._internal.net.http.Http_t_checkconnerrorwriter.T_checkConnErrorWriter = _w?.__copy__();
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        {
            var __tmp__ = (@:checkr _w._c ?? throw "null pointer dereference")._rwc.write(_p);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (((_err != null) && ((@:checkr _w._c ?? throw "null pointer dereference")._werr == null) : Bool)) {
            (@:checkr _w._c ?? throw "null pointer dereference")._werr = _err;
            (@:checkr _w._c ?? throw "null pointer dereference")._cancelCtx();
        };
        return { _0 : _n, _1 : _err };
    }
}

package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_bodyLocked_asInterface) class T_bodyLocked_static_extension {
    @:keep
    @:tdfield
    static public function read( _bl:stdgo._internal.net.http.Http_t_bodylocked.T_bodyLocked, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _bl:stdgo._internal.net.http.Http_t_bodylocked.T_bodyLocked = _bl?.__copy__();
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((@:checkr _bl._b ?? throw "null pointer dereference")._closed) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.net.http.Http_errbodyreadafterclose.errBodyReadAfterClose };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__ = @:check2r _bl._b._readLocked(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
            { _0 : _n, _1 : _err };
        };
    }
}

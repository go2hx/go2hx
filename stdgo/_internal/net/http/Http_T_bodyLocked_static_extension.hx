package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_bodyLocked_asInterface) class T_bodyLocked_static_extension {
    @:keep
    static public function read( _bl:stdgo._internal.net.http.Http_T_bodyLocked.T_bodyLocked, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _bl:stdgo._internal.net.http.Http_T_bodyLocked.T_bodyLocked = _bl?.__copy__();
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (_bl._b._closed) {
            return { _0 : _n = (0 : stdgo.GoInt), _1 : _err = stdgo._internal.net.http.Http_errBodyReadAfterClose.errBodyReadAfterClose };
        };
        return {
            var __tmp__ = _bl._b._readLocked(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}

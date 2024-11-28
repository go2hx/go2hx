package stdgo._internal.net.http.httputil;
@:keep @:allow(stdgo._internal.net.http.httputil.Httputil.T_neverEnding_asInterface) class T_neverEnding_static_extension {
    @:keep
    static public function read( _b:stdgo._internal.net.http.httputil.Httputil_T_neverEnding.T_neverEnding, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo._internal.net.http.httputil.Httputil_T_neverEnding.T_neverEnding = _b;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        for (_i => _ in _p) {
            _p[(_i : stdgo.GoInt)] = (_b : stdgo.GoUInt8);
        };
        return { _0 : _n = (_p.length), _1 : _err = (null : stdgo.Error) };
    }
}

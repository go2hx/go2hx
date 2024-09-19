package stdgo._internal.net.http.httputil;
@:keep @:allow(stdgo._internal.net.http.httputil.Httputil.T_delegateReader_asInterface) class T_delegateReader_static_extension {
    @:keep
    static public function read( _r:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_delegateReader.T_delegateReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_T_delegateReader.T_delegateReader> = _r;
        if (_r._r == null) {
            var _ok:Bool = false;
            {
                {
                    var __tmp__ = _r._c.__smartGet__();
                    _r._r = __tmp__._0;
                    _ok = __tmp__._1;
                };
                if (!_ok) {
                    return { _0 : (0 : stdgo.GoInt), _1 : _r._err };
                };
            };
        };
        return _r._r.read(_p);
    }
}

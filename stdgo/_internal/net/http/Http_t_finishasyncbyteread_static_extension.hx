package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_finishAsyncByteRead_asInterface) class T_finishAsyncByteRead_static_extension {
    @:keep
    @:tdfield
    static public function read( _fr:stdgo._internal.net.http.Http_t_finishasyncbyteread.T_finishAsyncByteRead, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _fr:stdgo._internal.net.http.Http_t_finishasyncbyteread.T_finishAsyncByteRead = _fr?.__copy__();
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((_p.length) == ((0 : stdgo.GoInt))) {
            return { _0 : _n, _1 : _err };
        };
        var _rres = ((@:checkr _fr._tw ?? throw "null pointer dereference").byteReadCh.__get__()?.__copy__() : stdgo._internal.net.http.Http_t_readresult.T_readResult);
        {
            final __tmp__0 = _rres._n;
            final __tmp__1 = _rres._err;
            _n = __tmp__0;
            _err = __tmp__1;
        };
        if (_n == ((1 : stdgo.GoInt))) {
            _p[(0 : stdgo.GoInt)] = _rres._b;
        };
        if (_err == null) {
            _err = stdgo._internal.net.http.Http__io._io.eOF;
        };
        return { _0 : _n, _1 : _err };
    }
}

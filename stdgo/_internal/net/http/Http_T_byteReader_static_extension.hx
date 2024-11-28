package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_byteReader_asInterface) class T_byteReader_static_extension {
    @:keep
    static public function read( _br:stdgo.Ref<stdgo._internal.net.http.Http_T_byteReader.T_byteReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _br:stdgo.Ref<stdgo._internal.net.http.Http_T_byteReader.T_byteReader> = _br;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (_br._done) {
            return { _0 : _n = (0 : stdgo.GoInt), _1 : _err = stdgo._internal.io.Io_eof.eof };
        };
        if ((_p.length) == ((0 : stdgo.GoInt))) {
            return { _0 : _n = (0 : stdgo.GoInt), _1 : _err = (null : stdgo.Error) };
        };
        _br._done = true;
        _p[(0 : stdgo.GoInt)] = _br._b;
        return { _0 : _n = (1 : stdgo.GoInt), _1 : _err = stdgo._internal.io.Io_eof.eof };
    }
}

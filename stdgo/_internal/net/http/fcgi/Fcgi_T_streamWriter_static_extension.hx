package stdgo._internal.net.http.fcgi;
@:keep @:allow(stdgo._internal.net.http.fcgi.Fcgi.T_streamWriter_asInterface) class T_streamWriter_static_extension {
    @:keep
    static public function close( _w:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_streamWriter.T_streamWriter>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_streamWriter.T_streamWriter> = _w;
        return _w._c._writeRecord(_w._recType, _w._reqId, (null : stdgo.Slice<stdgo.GoUInt8>));
    }
    @:keep
    static public function write( _w:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_streamWriter.T_streamWriter>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_streamWriter.T_streamWriter> = _w;
        var _nn = (0 : stdgo.GoInt);
        while (((_p.length) > (0 : stdgo.GoInt) : Bool)) {
            var _n = (_p.length : stdgo.GoInt);
            if ((_n > (65535 : stdgo.GoInt) : Bool)) {
                _n = (65535 : stdgo.GoInt);
            };
            {
                var _err = (_w._c._writeRecord(_w._recType, _w._reqId, (_p.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                if (_err != null) {
                    return { _0 : _nn, _1 : _err };
                };
            };
            _nn = (_nn + (_n) : stdgo.GoInt);
            _p = (_p.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return { _0 : _nn, _1 : (null : stdgo.Error) };
    }
}

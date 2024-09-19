package stdgo._internal.io;
@:keep @:allow(stdgo._internal.io.Io.T_multiWriter_asInterface) class T_multiWriter_static_extension {
    @:keep
    static public function writeString( _t:stdgo.Ref<stdgo._internal.io.Io_T_multiWriter.T_multiWriter>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.io.Io_T_multiWriter.T_multiWriter> = _t;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _p:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        for (__6 => _w in _t._writers) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_w) : stdgo._internal.io.Io_StringWriter.StringWriter)) : stdgo._internal.io.Io_StringWriter.StringWriter), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo._internal.io.Io_StringWriter.StringWriter), _1 : false };
                }, _sw = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    {
                        var __tmp__ = _sw.writeString(_s?.__copy__());
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                    };
                } else {
                    if (_p == null) {
                        _p = (_s : stdgo.Slice<stdgo.GoUInt8>);
                    };
                    {
                        var __tmp__ = _w.write(_p);
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                    };
                };
            };
            if (_err != null) {
                return { _0 : _n, _1 : _err };
            };
            if (_n != ((_s.length))) {
                _err = stdgo._internal.io.Io_errShortWrite.errShortWrite;
                return { _0 : _n, _1 : _err };
            };
        };
        return { _0 : (_s.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function write( _t:stdgo.Ref<stdgo._internal.io.Io_T_multiWriter.T_multiWriter>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.io.Io_T_multiWriter.T_multiWriter> = _t;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        for (__6 => _w in _t._writers) {
            {
                var __tmp__ = _w.write(_p);
                _n = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _n, _1 : _err };
            };
            if (_n != ((_p.length))) {
                _err = stdgo._internal.io.Io_errShortWrite.errShortWrite;
                return { _0 : _n, _1 : _err };
            };
        };
        return { _0 : (_p.length), _1 : (null : stdgo.Error) };
    }
}
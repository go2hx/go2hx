package stdgo._internal.io;
@:keep @:allow(stdgo._internal.io.Io.T_discard_asInterface) class T_discard_static_extension {
    @:keep
    static public function readFrom( _:stdgo._internal.io.Io_T_discard.T_discard, _r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _:stdgo._internal.io.Io_T_discard.T_discard = _?.__copy__();
        var _n = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        var _bufp = (stdgo.Go.typeAssert((stdgo._internal.io.Io__blackHolePool._blackHolePool.get() : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>);
        var _readSize = (0 : stdgo.GoInt);
        while (true) {
            {
                var __tmp__ = _r.read((_bufp : stdgo.Slice<stdgo.GoUInt8>));
                _readSize = __tmp__._0;
                _err = __tmp__._1;
            };
            _n = (_n + ((_readSize : stdgo.GoInt64)) : stdgo.GoInt64);
            if (_err != null) {
                stdgo._internal.io.Io__blackHolePool._blackHolePool.put(stdgo.Go.toInterface(_bufp));
                if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                return { _0 : _n, _1 : _err };
            };
        };
    }
    @:keep
    static public function writeString( _:stdgo._internal.io.Io_T_discard.T_discard, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:stdgo._internal.io.Io_T_discard.T_discard = _?.__copy__();
        return { _0 : (_s.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function write( _:stdgo._internal.io.Io_T_discard.T_discard, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:stdgo._internal.io.Io_T_discard.T_discard = _?.__copy__();
        return { _0 : (_p.length), _1 : (null : stdgo.Error) };
    }
}

package stdgo._internal.io;
@:keep @:allow(stdgo._internal.io.Io.T_discard_asInterface) class T_discard_static_extension {
    @:keep
    @:tdfield
    static public function readFrom( _:stdgo._internal.io.Io_t_discard.T_discard, _r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _:stdgo._internal.io.Io_t_discard.T_discard = _?.__copy__();
        var _n = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        var _bufp = (stdgo.Go.typeAssert((stdgo._internal.io.Io__blackholepool._blackHolePool.get() : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>);
        var _readSize = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/io/io.go#L657"
        while (true) {
            {
                var __tmp__ = _r.read((_bufp : stdgo.Slice<stdgo.GoUInt8>));
                _readSize = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            _n = (_n + ((_readSize : stdgo.GoInt64)) : stdgo.GoInt64);
            //"file:///home/runner/.go/go1.21.3/src/io/io.go#L660"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/io/io.go#L661"
                stdgo._internal.io.Io__blackholepool._blackHolePool.put(stdgo.Go.toInterface(_bufp));
                //"file:///home/runner/.go/go1.21.3/src/io/io.go#L662"
                if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                    //"file:///home/runner/.go/go1.21.3/src/io/io.go#L663"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/io/io.go#L665"
                return { _0 : _n, _1 : _err };
            };
        };
    }
    @:keep
    @:tdfield
    static public function writeString( _:stdgo._internal.io.Io_t_discard.T_discard, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:stdgo._internal.io.Io_t_discard.T_discard = _?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/io/io.go#L644"
        return { _0 : (_s.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function write( _:stdgo._internal.io.Io_t_discard.T_discard, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:stdgo._internal.io.Io_t_discard.T_discard = _?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/io/io.go#L640"
        return { _0 : (_p.length), _1 : (null : stdgo.Error) };
    }
}

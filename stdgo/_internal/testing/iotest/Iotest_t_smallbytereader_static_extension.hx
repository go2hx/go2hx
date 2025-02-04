package stdgo._internal.testing.iotest;
@:keep @:allow(stdgo._internal.testing.iotest.Iotest.T_smallByteReader_asInterface) class T_smallByteReader_static_extension {
    @:keep
    @:tdfield
    static public function read( _r:stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_smallbytereader.T_smallByteReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_smallbytereader.T_smallByteReader> = _r;
        if ((_p.length) == ((0 : stdgo.GoInt))) {
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
        };
        (@:checkr _r ?? throw "null pointer dereference")._n = (((@:checkr _r ?? throw "null pointer dereference")._n % (3 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
        var _n = ((@:checkr _r ?? throw "null pointer dereference")._n : stdgo.GoInt);
        if ((_n > (_p.length) : Bool)) {
            _n = (_p.length);
        };
        var __tmp__ = (@:checkr _r ?? throw "null pointer dereference")._r.read((_p.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_err != null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool)) {
            _err = stdgo._internal.fmt.Fmt_errorf.errorf(("Read(%d bytes at offset %d): %v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference")._off), stdgo.Go.toInterface(_err));
        };
        (@:checkr _r ?? throw "null pointer dereference")._off = ((@:checkr _r ?? throw "null pointer dereference")._off + (_n) : stdgo.GoInt);
        return { _0 : _n, _1 : _err };
    }
}

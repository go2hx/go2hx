package stdgo._internal.testing.iotest;
@:keep @:allow(stdgo._internal.testing.iotest.Iotest.T_timeoutReader_asInterface) class T_timeoutReader_static_extension {
    @:keep
    @:tdfield
    static public function read( _r:stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_timeoutreader.T_timeoutReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_timeoutreader.T_timeoutReader> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._count++;
        if ((@:checkr _r ?? throw "null pointer dereference")._count == ((2 : stdgo.GoInt))) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.testing.iotest.Iotest_errtimeout.errTimeout };
        };
        return (@:checkr _r ?? throw "null pointer dereference")._r.read(_p);
    }
}

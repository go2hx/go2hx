package stdgo._internal.testing.iotest;
@:keep @:allow(stdgo._internal.testing.iotest.Iotest.T_dataErrReader_asInterface) class T_dataErrReader_static_extension {
    @:keep
    @:tdfield
    static public function read( _r:stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_dataerrreader.T_dataErrReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_dataerrreader.T_dataErrReader> = _r;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        while (true) {
            if (((@:checkr _r ?? throw "null pointer dereference")._unread.length) == ((0 : stdgo.GoInt))) {
                var __tmp__ = (@:checkr _r ?? throw "null pointer dereference")._r.read((@:checkr _r ?? throw "null pointer dereference")._data), _n1:stdgo.GoInt = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
                (@:checkr _r ?? throw "null pointer dereference")._unread = ((@:checkr _r ?? throw "null pointer dereference")._data.__slice__((0 : stdgo.GoInt), _n1) : stdgo.Slice<stdgo.GoUInt8>);
                _err = _err1;
            };
            if (((_n > (0 : stdgo.GoInt) : Bool) || (_err != null) : Bool)) {
                break;
            };
            _n = _p.__copyTo__((@:checkr _r ?? throw "null pointer dereference")._unread);
            (@:checkr _r ?? throw "null pointer dereference")._unread = ((@:checkr _r ?? throw "null pointer dereference")._unread.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return { _0 : _n, _1 : _err };
    }
}

package stdgo._internal.testing.iotest;
@:keep @:allow(stdgo._internal.testing.iotest.Iotest.T_readLogger_asInterface) class T_readLogger_static_extension {
    @:keep
    @:tdfield
    static public function read( _l:stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_readlogger.T_readLogger>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _l:stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_readlogger.T_readLogger> = _l;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        {
            var __tmp__ = (@:checkr _l ?? throw "null pointer dereference")._r.read(_p);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            stdgo._internal.log.Log_printf.printf(("%s %x: %v" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _l ?? throw "null pointer dereference")._prefix), stdgo.Go.toInterface((_p.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface(_err));
        } else {
            stdgo._internal.log.Log_printf.printf(("%s %x" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _l ?? throw "null pointer dereference")._prefix), stdgo.Go.toInterface((_p.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>)));
        };
        return { _0 : _n, _1 : _err };
    }
}

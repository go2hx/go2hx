package stdgo._internal.io;
@:keep @:allow(stdgo._internal.io.Io.LimitedReader_asInterface) class LimitedReader_static_extension {
    @:keep
    static public function read( _l:stdgo.Ref<stdgo._internal.io.Io_LimitedReader.LimitedReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _l:stdgo.Ref<stdgo._internal.io.Io_LimitedReader.LimitedReader> = _l;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((_l.n <= (0i64 : stdgo.GoInt64) : Bool)) {
            return { _0 : _n = (0 : stdgo.GoInt), _1 : _err = stdgo._internal.io.Io_eof.eof };
        };
        if (((_p.length : stdgo.GoInt64) > _l.n : Bool)) {
            _p = (_p.__slice__((0 : stdgo.GoInt), _l.n) : stdgo.Slice<stdgo.GoUInt8>);
        };
        {
            var __tmp__ = _l.r.read(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _l.n = (_l.n - ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        return { _0 : _n, _1 : _err };
    }
}

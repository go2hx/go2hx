package stdgo._internal.io;
@:keep @:allow(stdgo._internal.io.Io.LimitedReader_asInterface) class LimitedReader_static_extension {
    @:keep
    @:tdfield
    static public function read( _l:stdgo.Ref<stdgo._internal.io.Io_limitedreader.LimitedReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _l:stdgo.Ref<stdgo._internal.io.Io_limitedreader.LimitedReader> = _l;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (((@:checkr _l ?? throw "null pointer dereference").n <= (0i64 : stdgo.GoInt64) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eOF };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        if (((_p.length : stdgo.GoInt64) > (@:checkr _l ?? throw "null pointer dereference").n : Bool)) {
            _p = (_p.__slice__((0 : stdgo.GoInt), (@:checkr _l ?? throw "null pointer dereference").n) : stdgo.Slice<stdgo.GoUInt8>);
        };
        {
            var __tmp__ = (@:checkr _l ?? throw "null pointer dereference").r.read(_p);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        (@:checkr _l ?? throw "null pointer dereference").n = ((@:checkr _l ?? throw "null pointer dereference").n - ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        return { _0 : _n, _1 : _err };
    }
}

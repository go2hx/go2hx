package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_atLeastReader_asInterface) class T_atLeastReader_static_extension {
    @:keep
    @:tdfield
    static public function read( _r:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_atleastreader.T_atLeastReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_atleastreader.T_atLeastReader> = _r;
        if (((@:checkr _r ?? throw "null pointer dereference").n <= (0i64 : stdgo.GoInt64) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eOF };
        };
        var __tmp__ = (@:checkr _r ?? throw "null pointer dereference").r.read(_p), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        (@:checkr _r ?? throw "null pointer dereference").n = ((@:checkr _r ?? throw "null pointer dereference").n - ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        if ((((@:checkr _r ?? throw "null pointer dereference").n > (0i64 : stdgo.GoInt64) : Bool) && (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool)) {
            return { _0 : _n, _1 : stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF };
        };
        if ((((@:checkr _r ?? throw "null pointer dereference").n <= (0i64 : stdgo.GoInt64) : Bool) && (_err == null) : Bool)) {
            return { _0 : _n, _1 : stdgo._internal.io.Io_eof.eOF };
        };
        return { _0 : _n, _1 : _err };
    }
}
